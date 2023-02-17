//
//  ContentView.swift
//  SPorts
//
//  Created by Julia Mendes on 01/09/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View
{
    @State var searchText = ""
    
    @State var offset: CGFloat = 0
    
    @State var lastOffset : CGFloat = 0

    //Colocar localizacao do usuario
    @State var regiao = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -23.519459871679622, longitude: -46.63214805457693), latitudinalMeters: 1000.0, longitudinalMeters: 1000.0)
    
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View
    {
        //Map(coordinateRegion: $regiao).ignoresSafeArea()
        //        Map(coordinateRegion: $regiao, annotationItems: ListaCentrosEsportivos, annotationContent:{ )
        ZStack{
            
            Map(coordinateRegion: $regiao, annotationItems: ListaCentrosEsportivos, annotationContent: { centrosesportivos in MapAnnotation(coordinate: centrosesportivos.coordenadas) {
                VStack{
                    Image(systemName: "mappin")
                    Text(centrosesportivos.nome)
                        .font(.system(size: 20))
                    
                }
                .foregroundColor(.orange)
            }
            })
                //.blur(radius: getBlurRadius())
                .ignoresSafeArea()
            GeometryReader{proxy -> AnyView in
                
                let height = proxy.frame(in: .global).height
                
                return AnyView(
                
                    ZStack {
                        
                        BlurView(style: .systemMaterialLight)
                            .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: 30))
                        
                        VStack {
                            Capsule()
                                .fill(.white)
                                .frame(width: 80, height: 4)
                                .padding(.top)
                            HStack {
                                // TRANSFORMAR EM FUNCAO
                                TextField("Search", text: $searchText)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(BlurView(style: .dark))
                                    .cornerRadius(10)
                                    .colorScheme(.dark)
                                    .padding(.top, 10)
                                
                                //MARK: DAR UM JEITO DE COLOCAR UM BOTAO DE FILTRO AQUI
                                //MARK: Feito!
                                //MARK: Dar um jeito de direcionar pra outra pagina dentro da bottomsheet
                                Button(action: {}, label: {
                                    Image(systemName: "chevron.left")
                                    Text("Filtro")
                                })
                            }
                            // scroll content
                            BottomContent()
                        }
                        .padding(.horizontal)
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                        .offset(y: height - 100)
                    // conta doida pra fazer a sheet travar em baixo, nao fica solta.
                        .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset : -(height - 100) : 0)
                        .gesture(DragGesture().updating($gestureOffset, body: {
                            value, out, _ in
                            
                            out = value.translation.height
                            onChange()
                        }).onEnded({ value in
                            
                            let maxHeight = height - 100
                            withAnimation{
                                // condicoes para mover
                                // cima baixo ou meio
                                if -offset > 100 && -offset < maxHeight / 2 {
                                    // meio
                                    offset = -(maxHeight / 3)
                                }
                                else if -offset > maxHeight / 2 {
                                    offset = -maxHeight
                                }
                                else {
                                    offset = 0
                                }
                            }
                            
                            // guardando a ultima offset, pra ficar a ultima posicao
                            lastOffset = offset
                        }))
                )
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
    func onChange() {
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
    }
    // blur pro background
//    func getBlurRadius()->CGFloat {
//        let progress = -offset / (UIScreen.main.bounds.height - 100)
//
//        return progress * 30
//    }
}

//        struct ContentView_Previews: PreviewProvider {
//            static var previews: some View {
//                ContentView()
//            }
//        }

struct BottomContent: View {
    var body: some View {
        
        VStack {
            List {
                ForEach(ListaCentrosEsportivos) { item in
                    Caixinha(title: item.nome, subTitle: item.endereco)
                }
            }
        }
    }
}

func Caixinha(title: String, subTitle: String) -> some View {
    HStack{
        Rectangle()
            .foregroundColor(Color.indigo)
            .cornerRadius(10)
            .frame(width: 50, height: 50)
        VStack(alignment: .leading) {
            Text(title)
            Text(subTitle)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        Spacer()
    }
    .padding(.horizontal)
}


//nome: "Centro Esportivo Tietê", endereço: "Av. Santos Dumont, 843",
//nome: "Centro Esportivo Pirituba", endereço: "Av. Agenor Couto de Magalhães, 32",
//nome: "Centro Educacional Esportivo Mane Garrincha", endereço: "Rua Pedro de Toledo, 1651",
