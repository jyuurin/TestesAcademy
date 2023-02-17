//
//  Ataques.swift
//  POOkemon
//
//  Created by Julia Mendes on 06/07/22.
//

import Foundation

struct Ataque
{
    let Nome: String
    let Dano: Int
    let Tipo: String
    
    init(nome: String, dano: Int, tipo: String)
    {
        self.Nome = nome
        self.Dano = dano
        self.Tipo = tipo
    }
    
    static let ListaAtaques =
    [
        Ataque(nome: "Chicote de Vinha", dano: 3, tipo: "Planta"),
        Ataque(nome: "Folha Navalha", dano: 5, tipo: "Planta"),
        Ataque(nome: "Tempestade de Folhas", dano: 10, tipo: "Planta"),
        Ataque(nome: "Raio Solar", dano: 15, tipo: "Planta"),
        Ataque(nome: "Brasas", dano: 3, tipo: "Fogo"),
        Ataque(nome: "Presa de Fogo", dano: 5, tipo: "Fogo"),
        Ataque(nome: "Lança-chamas", dano: 10, tipo: "Fogo"),
        Ataque(nome: "Onda de Calor", dano: 15, tipo: "Fogo"),
        Ataque(nome: "Jato de Água", dano: 3, tipo: "Água"),
        Ataque(nome: "Vibração de Água", dano: 5, tipo: "Água"),
        Ataque(nome: "Calda d'Água", dano: 10, tipo: "Água"),
        Ataque(nome: "Hidrobomba", dano: 15, tipo: "Água")
    ]
}
