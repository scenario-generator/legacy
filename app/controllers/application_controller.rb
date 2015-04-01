class ApplicationController < ActionController::Base
  include VersioningHelper

  protect_from_forgery with: :exception

  before_action :set_testing_version
  before_action :load_games
  before_action :setup_donation_bar_info

  def set_testing_version
    unless testing_versions.include? current_version
      session[:version] = random_testing_version
      Stat.adjust_stat(name: "Version #{session[:version]} users", count: 1, group: 'Version Users', version: current_version)
    end
  end

  private

    def load_games
      @games = ScenarioGenerator.games
    end

    def setup_donation_bar_info
      @location = Geocoder.search(request.remote_ip).first
      @country = @location.country

      @donation_goal = Donator.get_donation_goal(@country)

      percentage_towards_goal = Donator.percentage_towards_goal(@country)
      @display_percentage =  "%g" % ("%.2f" % (percentage_towards_goal * 100))

      @currency_symbol = Donator.get_currency_symbol(@country)

      @latest_donator_name = Donator.latest_donator_name

      set_up_donation_limits
    end

    def set_up_donation_limits
      @donation_level_1 = ENV['US_DONATION_TIER_ONE']
      @donation_level_1 = ENV['UK_DONATION_TIER_ONE'] if Donator.in_uk?(@country)
      @donation_level_2 = ENV['US_DONATION_TIER_TWO']
      @donation_level_2 = ENV['UK_DONATION_TIER_TWO'] if Donator.in_uk?(@country)
    end
end
