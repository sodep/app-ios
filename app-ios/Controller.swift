//
//  Controller.swift
//  app-ios
//
//  Created by Patricia Fuster on 2022-09-20.
//
import SwiftUI
import Firebase
import GoogleSignIn

guard let clientID = FirebaseApp.app()?.options.clientID else { return }

// Create Google Sign In configuration object.
let config = GIDConfiguration(clientID: clientID)

// Start the sign in flow!
GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in

  if let error = error {
    // ...
    return
  }

  guard
    let authentication = user?.authentication,
    let idToken = authentication.idToken
  else {
    return
  }

  let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                 accessToken: authentication.accessToken)

  // ...
}
