//
//  LoginView.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct LoginView: View {
//    enum Action {
//            case signUp, resetPW
//        }
//    @State private var showSheet = false
//    @State private var action: Action?
    
    var body: some View {
        VStack {
                HStack {
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0, alignment: .trailing)
                        .clipped()
                        .padding(.top,-10)
                }
                Spacer()
            Text("Login")
                .frame(width: 300, alignment: .topLeading)
                //.padding(.top, 80)
                .font(.system(size: 40, weight: .heavy))
            Text("Please sign in to continue")
                .font(.caption)
                .frame(width: 300,alignment: .topLeading)
           
                SignInWithEmailView()
            }
        
        
        
//            .sheet(isPresented: $showSheet) {
//                if self.action == .signUp {
//                    SignUpView()
//                }else {
//                    ForgotPasswordView()
//                }
//            }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
