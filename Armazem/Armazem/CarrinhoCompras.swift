//
//  CarrinhoCompras.swift
//  Armazem
//
//  Created by Julia Mendes on 01/06/22.
//

import Foundation

//array de produtos add no carrinho
var carrinhoCompras: [ItemCarrinho] = []

// Guarda o produto e a quantidade de produtos no carrinho.
struct ItemCarrinho
{
    var produto: Produto
    var quantidade: Int
    var peso: Double
    
    //Inicializador que é chamado quando o produto tem quantidade
    init(Produto: Produto, Quantidade: Int)
    {
        self.produto = Produto
        self.quantidade = Quantidade
        self.peso = 0.0; //só para ter um valor
    }
    
    //Inicializador quando o produto tem peso.
    init(produto : Produto, peso : Double) {
        self.produto = produto
        self.quantidade = 0
        self.peso = peso;
    }
}

//Adiciona o item da lista de produtos no carrinho, de acordo com que o usuario digita. Quantidade.
func produtoEscolhidoInt(numProduto: Int, qtidadeProduto: Int) -> String
{
    carrinhoCompras.append(ItemCarrinho(Produto: Armazem.listaDeProdutos[numProduto-1], Quantidade: qtidadeProduto))
    return ">>Produto adicionado!\n"
}

//Adiciona o item da lista de produtos no carrinho, de acordo com que o usuario digita. Peso.
func produtoEscolhidoDoub(numProduto: Int, pesoProduto: Double) -> String
{
    carrinhoCompras.append(ItemCarrinho(produto: Armazem.listaDeProdutos[numProduto-1], peso: pesoProduto))
    return ">>Produto adicionado!\n"
}

//Percorre os itens do carrinho, faz conta e printa fofinho
func exibirCarrinho()
{
    for item in carrinhoCompras
    {
        //Printa o nome do produto, o valor, a quantidade. Faz a conta, exibindo em string o resultado da conta do valor * a quantidade (que tem que ser convertida pra double, já que o valor é decimal.)
        if(item.produto.qtd == true)
        {
            print(">>Produto: \(item.produto.nome) => \(item.produto.valor) * \(item.quantidade) = \(String(item.produto.valor * Double(item.quantidade)))")
        }
        //Printa o nome do produto, o valor e peso. Faz a conta, exibindo em string o resultado da conta do valor * o peso (não precisa de conversáo pra double porque já é)
        else
        {
                print(">>Produto: \(item.produto.nome) => \(item.produto.valor) * \(item.peso) = \(String(item.produto.valor * item.peso))")
        }
    }
    //Se não foi add nenhum produto, ou seja, náo tiver itens, retorna msg de carrinho vazio.
    if(carrinhoCompras.count == 0)
    {
        print("\n>>Carrinho vazio!\n")
    }
}

func encerrarCompra()
{
    var total = 0.0
    for item in carrinhoCompras
    {
        total += (item.produto.valor * Double(item.quantidade))
    }
    if(total == 0.0)
    {
        print("Seu carrinho está vazio.")
    }
    else
    {
        print("\n>>O valor total de sua compra é \(total)\n")
        carrinhoCompras = []
    }
}

func excluirCompra()
{
    if(carrinhoCompras.count != 0)
    {
        carrinhoCompras = []
        print("\n>>Compra excluida\n")
    }
    else
    {
        print("\n>>Não há produtos no carrinho.\n")
    }
}
