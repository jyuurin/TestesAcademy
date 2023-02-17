//
//  CentroEsportivo.swift
//  SPorts
//
//  Created by Julia Mendes on 02/09/22.
//

import Foundation
import MapKit

struct CentroEsportivo : Identifiable {
    let id = UUID()
    let nome: String
    let endereco: String
    //let endereço: String
    let latitude: Double
    let longitude: Double
    var coordenadas: CLLocationCoordinate2D { CLLocationCoordinate2D(latitude: latitude, longitude: longitude)}
}

let ListaCentrosEsportivos = [
    CentroEsportivo(nome: "Centro Esportivo Tietê", endereco: "Av. Santos Dumont, 843", latitude: -23.51945, longitude: -46.63214),
    CentroEsportivo(nome: "Centro Esportivo Pirituba", endereco: "Av. Agenor Couto de Magalhães, 32", latitude: -23.48305, longitude: -46.74021),
    CentroEsportivo(nome: "Centro Educacional \nEsportivo Mane Garrincha",endereco: "Rua Pedro de Toledo, 1651", latitude: -23.59748, longitude: -46.65399),
]
