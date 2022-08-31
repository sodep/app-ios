//
//  ContentView.swift
//  app-ios
//
//  Created by monica fatecha on 2022-08-17.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white)
                VStack {
                    Text("Bienvenido").font(.largeTitle).bold()
                    TextField("Username o correo",text:$username).keyboardType(.emailAddress).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    TextField("Password",text:$username).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    Button("Ingresar"){
                        //accion
                    }.foregroundColor(.white).frame(width: 300, height:50).background(Color.blue).cornerRadius(10)
                    Text("Crear Cuenta").font(.system(size: 12, weight: .light, design: .serif))
                        .italic().underline().frame(height:20)
                    Text("Olvide mi contraseña").font(.system(size: 12, weight: .light, design: .serif))
                        .italic().underline()

                }
            }
            .navigationBarHidden(true)

        }
    }
    
    func validarCredenciales(){
        if username=="paty123"{
            if password=="paty321"{
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
