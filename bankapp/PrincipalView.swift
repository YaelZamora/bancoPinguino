//
//  PrincipalView.swift
//  bankapp
//
//  Created by iOS Maquina 10 on 01/02/23.
//

import SwiftUI

struct PrincipalView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle().fill(.linearGradient(Gradient(colors: [
                    Color.blue,
                    Color.cyan
                ]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
                
                VStack {
                    VStack{
                        Image(systemName: "creditcard.fill").frame(width: 50, height: 50).foregroundColor(.white)
                        Text("Tarjetas").bold().foregroundColor(.white)
                    } .frame(width: 150, height: 150).background(.teal).cornerRadius(20).onTapGesture {
                        //TODO: Navegación al presionar
                    }
                    
                    Text("Tu cuenta").bold().font(Font.largeTitle)
                    
                    HStack{
                        Text("$78,000.00").bold()
                        Spacer()
                        Text("Abonar").frame(width: 100, height: 50).background(.blue).foregroundColor(.white).cornerRadius(20).onTapGesture {
                            //TODO: Función del botón
                        }
                    }.frame(height: 150)
                    
                    HStack{
                        Circle().foregroundColor(.blue).shadow(radius: 2)
                        Spacer()
                        Text("Transferir dinero").bold().font(Font.headline)
                        Spacer()
                        Spacer()
                    }.frame(width: 350, height: 80).background(.white).cornerRadius(40)
                }.navigationTitle("Banco pingüino").padding().navigationBarBackButtonHidden().navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
