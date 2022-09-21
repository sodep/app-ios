//
//  ContentView.swift
//  app-ios
//
//  Created by monica fatecha on 2022-08-17.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn


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
                    Button(action: {signin() }) {
                        HStack(alignment: .center, spacing: 5.0) {
                            Image("googleMail")
                                .padding(.leading, 10.0)
                            Text("Ingresar con Google")
                                .foregroundColor(.black)
                                .padding(.all, 10.0)
                            
                        }
                    }
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    
                    Button(action: {signin()}) {
                        HStack(alignment: .center, spacing: 5.0) {
                            Image("googleMail")
                                .padding(.leading, 10.0)
                            Text("Ingresar con Email")
                                .foregroundColor(.black)
                                .padding(.all, 10.0)
                            
                        }
                    }
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
            }
            .navigationBarHidden(true)

        }
    }
    
    
}

func signin(){
    let signInConfig = GIDConfiguration.init(clientID: "CLIENT_ID")
    guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {return}
    GIDSignIn.sharedInstance.signIn(
        with: signInConfig,
        presenting: presentingViewController,
        callback: { user, error in
            //Completion Code
        }
    )
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
