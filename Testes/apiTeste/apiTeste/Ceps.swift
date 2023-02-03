//
//  Ceps.swift
//  apiTeste
//
//  Created by Julia Mendes on 01/02/23.
//

import Foundation

struct Cep : Decodable {
    var logradouro: String
    var localidade: String
    var uf: String
    var ddd: String
}

//decodable permite converter o json para a estrutura feita.
//encodable é o processo inverso do decodable
//codable é os dois
