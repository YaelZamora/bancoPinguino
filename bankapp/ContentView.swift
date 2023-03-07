//
//  ContentView.swift
//  bankapp
//
//  Created by iOS Maquina 10 on 31/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Rectangle().fill(.blue.gradient)
                VStack {
                    Spacer()
                    Text("Banco Pingüino").bold().font(Font.largeTitle)
                    Form{
                        Section{
                            TextField(text: $username, prompt: Text("Usuario")){
                                Text("Username")
                            }
                        }
                        Section{
                            TextField(text: $password, prompt: Text("Contraseña")){
                                Text("Username")
                            }
                        }
                    }.frame(height: 200).scrollContentBackground(.hidden)
                    
                    NavigationLink ("Log In"){
                        PrincipalView()
                    }.padding([.horizontal], 100)
                        .padding()
                        .foregroundColor(.white)
                        .font(Font.headline)
                        .buttonStyle(.bordered).background(.indigo).cornerRadius(20)
                    Spacer()
                    Button{
                        //
                    } label: {
                        Text("Términos de privacidad").foregroundColor(.white)
                    }
                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/**
 Button{
     //TODO: Navegación con el botón
 } label: {
     Text("Log In")
         .padding([.horizontal], 100)
         .padding()
         .foregroundColor(.white)
         .font(Font.headline)
 }.buttonStyle(.bordered).background(.indigo).cornerRadius(20)
 */
