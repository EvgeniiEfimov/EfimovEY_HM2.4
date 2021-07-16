//
//  Models.swift
//  EfimovEY_HW2.3
//
//  Created by User on 16.07.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let people: People
    
    static func examp() -> [User] {
        [User(login: "Evgenii",
                  password: "Efimov",
                  people: .init(name: "Евгений",
                                surname: "Ефимов",
                                text: ".....")),
         User(login: "Artem",
              password: "Safronov",
              people: .init(name: "Артём",
                            surname: "Сафронов",
                            text: "1111111"))
        ]
}
struct People {
    let name: String
    let surname: String
    let text: String
}
}
