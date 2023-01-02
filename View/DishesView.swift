//
//  DishesView.swift
//  Abocado
//
//  Created by yeomim Kim on 2023/01/02.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack() {
            HStack() {
                Image("icon-toasts")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                Spacer()
                Text("Toasts")
            }
            
            Image(systemName: "heart.circle")
            HStack() {
                Text("Guacamole")
                Spacer()
                Image("icon-guacamole")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
    
}
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
