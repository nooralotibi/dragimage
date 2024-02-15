//
//  ContentView.swift
//  dragimage
//
//  Created by noor alotibi on 05/08/1445 AH.
//

import SwiftUI

struct ContentView: View {
    let charecter = ["Boy"," Girl","boy1"]
    @State private var imageplac =  Image(systemName: "photo")
    var body: some View {
        ZStack{
          
                            LinearGradient(
                                gradient: Gradient(colors: [.pink, .blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            .opacity(0.8)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
            VStack {
                Text("Pick profile charecter")
                    .font(.largeTitle.italic())
                    .bold()
                
                imageplac
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.ultraLight)
                    .frame(width: 290)
                    .padding()
                    .dropDestination(for: Image.self){ items, location in
                        imageplac = items.first ?? Image(systemName: "photo")
                        
                        return true
                        
                    }
                    .padding()
                ZStack{

                      

                       
                        (
                                      LinearGradient(gradient: Gradient(colors: [.pink, .blue]), startPoint: .top,
                                                     endPoint: .bottom)
                                        .frame(width: 333,height: 222)
                                          .cornerRadius(25)
                                          .shadow(color: .black, radius: 4, x: 4, y: 8)
                                          .opacity(0.3)
                                  )
               
                        
                    HStack{
                        ForEach(charecter, id:\.self){ charecters in
                            Image(charecters)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 220)
                                .draggable(Image(charecters))
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
