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
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white)
                VStack {
                    Text("Bienvenido").font(.largeTitle).bold()
                    TextField("Username o correo", text: $username) .padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    TextField("Password", text: $password).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    Button("Ingresar") {
                        //Accion de login
                    }.foregroundColor(.white).frame(width: 300, height: 50).background(Color.mint).cornerRadius(10)
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
