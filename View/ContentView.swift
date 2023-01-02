//
//  ContentView.swift
//  Abocado
//
//  Created by yeomim Kim on 2023/01/02.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers : [Header] = headerData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0){
//                        HeaderView()
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                
                // MARK: - FOOTER
                
                VStack(alignment: .center,spacing: 20){
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers : headerData)
    }
}
