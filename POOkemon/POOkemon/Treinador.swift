//
//  Treinador.swift
//  POOkemon
//
//  Created by Julia Mendes on 06/07/22.
//

import Foundation

class Treinador
{
    let Nome: String
    let Idade: Int
    var Pokemon: [Pokemon]
    var Insignea: [String]
    var Mochila: [Itens]
    var Mapa: [Cidade]
    
    //Inicializador para Treinador/Usuario
    init(nome:String, idade:Int, pokemon:[Pokemon], insignea:[String], mochila:[Itens], mapa: [Cidade])
    {
        self.Nome = nome
        self.Idade = idade
        self.Pokemon = pokemon
        self.Insignea = insignea
        self.Mochila = mochila
        self.Mapa = mapa
    }
    
    //Inicializador para ginásio
    
    func Andar()
    {
        print("O treinador está andando para")
        //implementar logica de encontrar pokemon no caminho
    }
    
    func Fugir()
    {
        //implementar rate para isso
        print("Fugiu com segurança!")
        print("Você não pode fugir!")
    }
    
    func Capturar()
    {
        print("O treinador jogou uma Pokebola")
        
        //if(numero de pokebolas for < 1): calcular chance para o pokemon ficar
        //else(você não possui pokebolas em sua mochila)
    }
    
    
    
}
