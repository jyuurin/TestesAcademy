//
//  CustomCorner.swift
//  SPorts
//
//  Created by Julia Mendes on 06/09/22.
//

import SwiftUI

struct CustomCorner: Shape {
   
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

//struct CustomCorner_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomCorner()
//    }
//}
