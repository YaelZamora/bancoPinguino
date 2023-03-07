//
//  TransferView.swift
//  bankapp
//
//  Created by iOS Maquina 10 on 07/02/23.
//

import SwiftUI

struct TransferView: View {
    @State private var animationAmount = 1.0
    
    struct Cuentas: Identifiable{
        let id = UUID()
        let name: String
    }
    
    private let cuentas = [
        "1234567890123456",
        "9856230472309483",
        "0942347238429293",
        "3845723849324020",
        "7435893429304820",
        "9847234723847283",
        "7436832782347239",
        "6432872938928402",
        "8237642398472390",
        "9384239489238203",
        "9384723049823492",
        "0923428374284299",
        "8932740932842302",
    ]
    
    var body: some View {
        NavigationStack{
            List(cuentas, id: \.self){ cuentas in
                HStack{
                    Text("Cuenta").bold()
                    Text(cuentas).font(.footnote)
                    Spacer()
                    Button("Transferir"){
                        //
                    }
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .overlay(
                        Rectangle()
                            .stroke(.cyan)
                            .cornerRadius(20)
                            .scaleEffect(animationAmount)
                            .opacity(2 - animationAmount)
                            .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
                    )
                    .onAppear{
                        animationAmount = 2
                    }
                }
            }.navigationTitle(Text("Banco Pingüino").font(Font.largeTitle))
        }
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}

/*
 for index in cuentas.indices {
     print("\(cuentas[index])")
 }
 
 HStack{
     Text("Cuenta").bold()
     Text("1234567890123456")
     Spacer()
     Button("Transferir"){
         //
     }
     .padding()
     .background(.blue)
     .foregroundColor(.white)
     .cornerRadius(20)
     .overlay(
         Rectangle()
             .stroke(.cyan)
             .cornerRadius(20)
             .scaleEffect(animationAmount)
             .opacity(2 - animationAmount)
             .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
     )
     .onAppear{
         animationAmount = 2
     }
 }
 
 Button("Transferir"){
     //
 }
 .padding()
 .background(.blue)
 .foregroundColor(.white)
 .cornerRadius(20)
 .overlay(
     Rectangle()
         .stroke(.cyan)
         .cornerRadius(20)
         .scaleEffect(animationAmount)
         .opacity(2 - animationAmount)
         .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
 )
 .onAppear{
     animationAmount = 2
 }
 */

