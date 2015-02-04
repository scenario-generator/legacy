class Alert < ActiveRecord::Base

  validates_presence_of :email, :message => "required"
  validates_uniqueness_of :email, :message => "already subscribed"

end
