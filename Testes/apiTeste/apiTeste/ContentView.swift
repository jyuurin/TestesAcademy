//
//  ContentView.swift
//  apiTeste
//
//  Created by Julia Mendes on 01/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cepDigitado : String = ""
    @State var endereco : String = ""
    @State var localizacao : String = ""
    @State var DDD : String = ""
    
    var body: some View {
        VStack {
            HStack{
                TextField("Digite o CEP", text: $cepDigitado)
                    .border(.brown)
                    .padding()
            }
            
            Text(cepDigitado)
            Text(endereco)
            Text(localizacao)
            Text(DDD)
        
            Button {
                Task {
                    let (data, _) = try await URLSession.shared.data(from: URL(string: "https://viacep.com.br/ws/\(cepDigitado)/json/")!)
                    let respostaDecode = try? JSONDecoder().decode(Cep.self, from: data)
                    endereco = respostaDecode?.logradouro ?? ""
                    localizacao = respostaDecode?.localidade ?? ""
                    DDD = respostaDecode?.ddd ?? ""
                    
                }
            } label: {
                Text("Procura")
            }
            
            
            
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
