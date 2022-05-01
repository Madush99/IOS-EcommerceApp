//
//  SignInWithEmailView.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct SignInWithEmailView: View {
    @EnvironmentObject var userInfo: UserInfo
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
//    @Binding var showSheet: Bool
//    @Binding var action:LoginView.Action?
    
    @State private var showAlert = false
    @State private var authError: EmailAuthError?
    
    var body: some View {
        
        
        VStack {
            TextField("Email Address",
                      text: self.$user.email)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $user.password)

            VStack {
                Button(action: {
                    FBAuth.authenticate(withEmail: self.user.email,
                    password: self.user.password) { (result) in
                        switch result {
                            case .failure(let error):
                                self.authError = error
                                self.showAlert = true
                            case .success( _):
                                print("Signed in")
                            }
                    }
                }) {
                    Text("LOGIN")
                        .padding(.vertical, 15)
                        .frame(width: 300, height: 35)
                        .background(Color.red)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(user.isLogInComplete ? 1 : 0.75)
                        .padding(.top, 15)
                }.disabled(!user.isLogInComplete)
                    
//                Button(action: {
//                    self.action = .signUp
//                    self.showSheet = true
//                })
                NavigationLink(destination: ForgotPasswordView()){
                    Text("FORGOT PASSWORD?")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.black)
                }
                .padding(.top, 20)
                NavigationLink(destination: SignupViewComponent()){
                    Text("Don't have an account ? ")
                        .foregroundColor(.black)
                        .frame(width: 183)
                    Text("SIGN UP")
                        .padding(.vertical, 15)
                        .frame(width: 66)
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .heavy))
                    Text("now")
                        .padding(.vertical, 15)
                        .frame(width: 35)
                        .foregroundColor(.black)
                    
                }
                .padding(.bottom, 100)

                .toolbar{
                    ToolbarItemGroup(placement: .bottomBar){
                        NavigationLink(destination: AboutUsView()) {
                            Text("About Us")
                                .padding(.vertical, 10)
                                .frame(width: 80)
                                .foregroundColor(Color.black)
                               
                            }
                        NavigationLink(destination: HomeView()) {
                            Text("Terms & Conditions")
                                .padding(.vertical, 10)
                                .frame(width: 150)
                                .foregroundColor(Color.black)
                               
                            }
                        NavigationLink(destination: HomeView()) {
                            Text("Privacy")
                                .padding(.vertical, 10)
                                .frame(width: 100)
                                .foregroundColor(Color.black)
                               
                            }
                    }
                    
                }.padding(.top, 100)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Login Error"), message: Text(self.authError?.localizedDescription ?? "Unknown error"), dismissButton: .default(Text("OK")) {
                    if self.authError == .incorrectPassword {
                        self.user.password = ""
                    } else {
                        self.user.password = ""
                        self.user.email = ""
                    }
                    })
            }
        }
        .padding(.top, 50)
        .frame(width: 300)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        
        
    }
    
}

struct SignInWithEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithEmailView()
    }
}
