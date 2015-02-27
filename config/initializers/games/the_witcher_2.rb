GAMES[:the_witcher_2] =  {
    title: 'The Witcher 2',
    page_title: 'Playthrough Generator for The Witcher 2',
    save_button_message: 'Save playthrough',
    background: 'witcher2.jpg',
    previous_game: :the_witcher,
    columns: {
        :"Aryan La Valette" => {
            spoiler: true,
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :'Kill him',
                :'Convince him to stand down'
            ]
        },
        malena: {
            spoiler: true,
            chance_of_multiple: 0,
            max: 1,
            options: [
                :'Accuse',
                :'Accuse and Follow',
                :'Side with her'
            ]
        },
        iorveth_sword: {
            title: "Iorveth's Sword",
            spoiler: true,
            chance_of_multiple: 0,
            max: 1,
            options: [
                :'Give him his sword',
                :'Punch him in the throat'
            ]
        },
        roche_or_iorveth: {
            spoiler: true,
            sub_trees: [:hensalt, :stennis, :hero_or_avenger, :triss_or_temeria, :saskia_or_triss],
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                {
                    roche: {
                        spoiler: true,
                        title: 'Hensalt',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Kill him',
                            :'Spare his life'
                        ]
                    },
                    triss_or_temeria: {
                        spoiler: true,
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Triss',
                            :'Temeria'
                        ]
                    }
                },
                {
                    iorveth: {
                        title: 'Stennis',
                        spoiler: true,
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Kill him',
                            :'Spare his life'
                        ]
                    },
                    hero_or_avenger: {
                        spoiler: true,
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Go after Loredo',
                            :'Save the Elven women'
                        ]
                    },
                    saskia_or_triss: {
                        spoiler: true,
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Saskia',
                            :'Triss'
                        ]
                    }
                }
            ]
        },
        the_flawed_diamond: {
            spoiler: true,
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :'Remove the diamond',
                :'Leave the diamond'
            ]
        }
    }
}