//
//  ContentView.swift
//  Uppgift5CoreML
//
//  Created by Hasanen B on 2023-11-26.
//

import SwiftUI

struct ContentView: View {
    
    let model = Model()
    let cat = "cat"
    let elephant = "elephant"
    @State var result = ""
     @State var theImage = ""
    var body: some View {
        VStack {
            
            HStack{
                Button(action: {
                    result = model.getImage(theImage: cat) ?? cat
                    theImage = cat
                }, label: {
                    Text(cat)
                        .font(.title)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.646, saturation: 0.728, brightness: 0.969)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    result = model.getImage(theImage: elephant) ?? elephant
                    theImage = elephant
                }, label: {
                    Text(elephant)
                        .font(.title)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.646, saturation: 0.728, brightness: 0.969)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                })
            }
            
            Spacer()
            Image(theImage)
            Spacer()
            
            Text(result)
                .font(.title2)
                .padding()
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
