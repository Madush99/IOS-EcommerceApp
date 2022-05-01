//
//  UserInfo.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import Foundation
import FirebaseAuth

class UserInfo: ObservableObject {
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    
    @Published var isUserAuthenticated: FBAuthState = .undefined
    @Published var user: FBUser = .init(uid: "", name: "", email: "")
    
    var authStateDidChangeListenerHandle: AuthStateDidChangeListenerHandle?
    
    func configureFirebaseSateDidChanage() {
        authStateDidChangeListenerHandle = Auth.auth().addStateDidChangeListener({ (_,user) in
            
            guard let _ = user else {
                self.isUserAuthenticated = .signedOut
                return
            }
            self.isUserAuthenticated = .signedIn
//            FBFirestore.retrieveFBUser(uid: user.uid) { (result) in
//                switch result {
//                case .failure(let error):
//                    print(error.localizedDescription)
//                case .success(let user):
//                    self.user = user
//                }
//           }
            
        })
        
    }
}
