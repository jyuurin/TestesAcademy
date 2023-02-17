//
//  MenuPrincipal.swift
//  Armazem
//
//  Created by Julia Mendes on 01/06/22.
//

import Foundation

class MenuPrincipal
{
    
    func exibeMenuPrincipal()
    {
        var sair = false
        repeat
        {
            print("\nBem-vindo ao armazem da Ju! O que deseja?\n1 - Comprar \n2 - Carrinho \n3 - Excluir Compra \n4 - Encerrar Compra\n0 - Terminar Atendimento \n")
            let opcao = readLine()
            switch (opcao)
            {
                    // aspas porque a opcao é uma string
                case "1":
                    MenuPrincipal.MenuCompra()
                case "2":
                    exibirCarrinho()
                case "3":
                    excluirCompra()
                case "4":
                    encerrarCompra()
                case "0":
                        sair = true
                        print("\n>>Muito obrigada, volte sempre!\n")
                default:
                    print("\n>>Opcao invalida\n")
            }
        } while (!sair)
    }
    
    static func MenuCompra() {
        var sair = false
        repeat {
            print("\nO que deseja fazer? \nOpções: \n1 - Adicionar produtos no carrinho \n2 - Visualizar Carrinho\nOutro - Voltar")
            let opcao = readLine()
            
            if(opcao == String(1))
            {
                let listar = ListaProduto()
                listar.exibirProdutos()
                print("\nDigite o numero do produto: ")
                let numeroProduto = Int(readLine()!) ?? 6
                
                //Se produto discreto chama init com qtd senão chama init com peso
                if(Armazem.listaDeProdutos[numeroProduto-1].qtd == true)
                {
                    print("\nDigite a quantidade: ")
                    let quantidadeProduto = Int(readLine()!) ?? 0
                    let adicionado = produtoEscolhidoInt(numProduto: numeroProduto, qtidadeProduto: quantidadeProduto)
                    print(adicionado)
                }
                else
                {
                    print("\nDigite o peso: ")
                    let pesoProduto2 = Double(readLine()!) ?? 0
                    let adicionado = produtoEscolhidoDoub(numProduto: numeroProduto, pesoProduto: pesoProduto2)
                    print(adicionado)
                }
            }
            else
            {
                if(opcao == String(2))
                {
                    exibirCarrinho()
                }
                else
                {
                    sair = true
                }
            }
        } while (!sair)
    }
    
}
