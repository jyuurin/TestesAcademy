//
//  Armazem.swift
//  Armazem
//
//  Created by Julia Mendes on 31/05/22.
//

import Foundation

class Armazem
{
    // Propriedade static do Armazem
    // Leio sem instanciar um armazem
    static let listaDeProdutos =
    [
        //MARK: Exemplo de marcacao
        Produto(nome: "Laranja", Valor: 10.50, Qtd: false),
        Produto(nome: "Maça", Valor: 12.25, Qtd: false),
        Produto(nome: "Requeijão", Valor: 7.40, Qtd: true),
        Produto(nome: "Camiseta", Valor: 50.69, Qtd: true),
        Produto(nome: "Leite", Valor: 4.50, Qtd: true)
    ]
}
