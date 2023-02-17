//
//  ListaProduto.swift
//  Armazem
//
//  Created by Julia Mendes on 31/05/22.
//

import Foundation

class ListaProduto
{
    func exibirProdutos ()
    {
        // Aqui percorre minha lista de produtos no main. Count é o numero de elementos da lista que eu não sei.
        for i in 0 ..< Armazem.listaDeProdutos.count
        {
            print(i + 1, Armazem.listaDeProdutos[i].nome, " --- ", Armazem.listaDeProdutos[i].valor)
        }
    }
    
}

struct Produto
{
    var nome: String
    var valor: Double
    var qtd: Bool
    
    // Inicializador do Produto
    // Executa quando eu crio um Produto
    init (nome: String, Valor: Double, Qtd: Bool)
    {
        //Preenche os valores do Produto
        self.nome = nome
        self.valor = Valor
        self.qtd = Qtd
    }
}
