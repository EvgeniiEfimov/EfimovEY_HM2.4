//
//  Models.swift
//  EfimovEY_HW2.3
//
//  Created by User on 16.07.2021.
//

import Foundation

struct User {
    let welcome = "Ваш покорный слуга:"
    let login: String
    let password: String
    let people: People
    
    static func examp() -> [User] {
        [User(login: "Evgenii",
                  password: "Efimov",
                  people: .init(name: "Евгений",
                                surname: "Ефимов",
                                patronymic: "Юрьевич",
                                age: 23,
                                city: "Омск",
                                text: ".....",
                                image: .init(image1: "Photo1",
                                             image2: "Pfoto2",
                                             image3: "Photo3",
                                             image4: "Photo4",
                                             image5: "Photo5"))),
//         User(login: "Artem",
//              password: "Safronov",
//              people: .init(name: "Артём",
//                            surname: "Сафронов",
//                            text: "1111111",
//                            image: <#String#>))
        ]
}
struct People {
    let name: String
    let surname: String
    let patronymic: String
    let age: Int
    let city: String
    let text: String
    let image: Image
}
    struct Image {
        let image1: String
        let image2: String
        let image3: String
        let image4: String
        let image5: String
    }
}
