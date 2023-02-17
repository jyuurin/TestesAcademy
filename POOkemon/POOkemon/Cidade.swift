//
//  Cidade.swift
//  POOkemon
//
//  Created by Julia Mendes on 06/07/22.
//

import Foundation

class Cidade
{
    let Nome: String
    let Descricao: String
    let Ginasio: Treinador
    
    init(nome: String, descricao: String, ginasio: Treinador)
    {
        self.Nome = nome
        self.Descricao = descricao
        self.Ginasio = ginasio
    }
}

//fazer lista de cidades
//metodo Pokemon Center e Metodo Poke mart
