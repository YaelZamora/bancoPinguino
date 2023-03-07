//
//  tarjetas.swift
//  bankapp
//
//  Created by iOS Maquina 10 on 03/02/23.
//

import SwiftUI

struct Tarjetas: View {
    @State var rotationAngle = Angle.degrees(270)
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                    Text("Tarjeta de débito")
                        .bold()
                        .font(Font.title)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }.frame(width: 370, height: 900)
                    .background(.cyan)
                    .cornerRadius(50)
                    .position(x: 250, y:450)
                VStack{
                    Text("Tarjeta de crédito")
                        .bold()
                        .font(Font.title)
                        .foregroundColor(.white)
                        .padding()
                    HStack{
                        Text("Titular")
                            .bold()
                            .foregroundColor(.white)
                            .font(Font.largeTitle)
                        Spacer()
                        Text("Yael Zamora")
                            .bold()
                            .foregroundColor(.white)
                            .font(Font.title)
                        Spacer()
                    }.padding()
                    HStack{
                        Text("Saldo")
                            .bold()
                            .foregroundColor(.white)
                            .font(Font.largeTitle)
                        Spacer()
                        Text("$30,000.00")
                            .bold()
                            .foregroundColor(.white)
                            .font(Font.title)
                        Spacer()
                    }.padding()
                    Spacer()
                    ZStack{
                        Rectangle().fill(.linearGradient(Gradient(colors: [
                            Color.blue,
                            Color.black
                        ]), startPoint: .topLeading, endPoint: .bottom))
                        Text("1234 5678 9012 3456")
                            .foregroundColor(.white)
                            .font(.custom("Skia", size: 20))
                            .bold()
                        Text("Yael Zamora")
                            .position(x:70, y: 120)
                            .foregroundColor(.white)
                            .bold()
                        Text("VISA")
                            .position(x:200, y: 120)
                            .foregroundColor(.white)
                            .bold()
                        Text("Banco Pinüino").bold().foregroundColor(.white).position(x:70, y:20).font(.custom("", size: 15))
                    }.frame(width: 250, height: 150).cornerRadius(20)
                    Spacer()
                    Spacer()
                }.frame(width: 370, height: 850).background(.blue).cornerRadius(50).position(x: 250, y:500)
            }.navigationTitle("Tarjetas")
        }
    }
}

struct Tarjetas_Previews: PreviewProvider {
    static var previews: some View {
        Tarjetas()
    }
}
