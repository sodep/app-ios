//
//  ContentView.swift
//  app-ios
//
//  Created by monica fatecha on 2022-08-17.
//

import SwiftUI
import FirebaseAuth


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
                    Image("logo1").frame(width: 400, height: 110)
                    Text("Bienvenido").font(.largeTitle).bold()
                    TextField("Username o correo",text:$username).keyboardType(.emailAddress).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).foregroundColor(.blue)
                    TextField("Password",text:$password).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).foregroundColor(.blue)
                    Button("Ingresar"){
                        validarCredenciales()
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
        FirebaseAuth.Auth.auth().signIn(withEmail: username, password: password,completion: {(result,error) in
            if error != nil{
                print("Error al iniciar sesion")
            }else
            {
              print("Inicio sesion exitoso")
                
            }
        })
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
