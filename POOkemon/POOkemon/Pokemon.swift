//
//  Pokemon.swift
//  POOkemon
//
//  Created by Julia Mendes on 06/07/22.
//

import Foundation

class Pokemon
{
    let Nome: String
    let Tipo: String
    var HP: Int
    var Level: Int
    var Ataques: [Ataque]
    
    init(nome: String, tipo: String, hp: Int, level: Int, ataques: [Ataque])
    {
        self.Nome = nome
        self.Tipo = tipo
        self.HP = hp
        self.Level = level
        self.Ataques = ataques
    }
    
    static let listaPokemon =
    [
        Pokemon(nome: "Bulbasaur", tipo: "Planta", hp: 20, level: 5, ataques: <#T##[Ataque]#>),
        Pokemon(nome: "Charmander", tipo: <#T##String#>, hp: 20, level: 5, ataques: <#T##[Ataque]#>),
    ]
}
