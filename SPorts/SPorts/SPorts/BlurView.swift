//
//  BlurView.swift
//  SPorts
//
//  Created by Julia Mendes on 06/09/22.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

//struct BlurView_Previews: PreviewProvider {
//    static var previews: some View {
//        BlurView()
//    }
//}
