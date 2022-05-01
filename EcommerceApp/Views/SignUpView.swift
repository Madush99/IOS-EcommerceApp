//
//  SignUpView.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var userInfo: UserInfo
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    @State private var showError = false
    @State private var errorString = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()

                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0, alignment: .trailing)
                        .clipped()
                        //.padding(.top,-100)
                }
                Spacer()
                Text("SignUp")
                    .frame(width: 300, alignment: .topLeading)
                    .font(.system(size: 40, weight: .heavy))
                Text("Signup for free")
                    .font(.caption)
                    .frame(width: 300,alignment: .topLeading)
                
                Group {
                    VStack(alignment: .leading) {
                        TextField("Full Name", text: self.$user.fullname).autocapitalization(.words)
                        if !user.validNameText.isEmpty {
                            Text(user.validNameText).font(.caption).foregroundColor(.red)
                        }
                    }.padding(.top, 30)
                    VStack(alignment: .leading) {
                        TextField("Email Address", text: self.$user.email).autocapitalization(.none).keyboardType(.emailAddress)
                        if !user.validEmailAddressText.isEmpty {
                            Text(user.validEmailAddressText).font(.caption).foregroundColor(.red)
                        }
                    }
                    VStack(alignment: .leading) {
                        SecureField("Password", text: self.$user.password)
                        if !user.validPasswordText.isEmpty {
                            Text(user.validPasswordText).font(.caption).foregroundColor(.red)
                        }
                    }
                    VStack(alignment: .leading) {
                        SecureField("Confirm Password", text: self.$user.confirmPassword)
                        if !user.passwordsMatch(_confirmPW: user.confirmPassword) {
                            Text(user.validConfirmPasswordText).font(.caption).foregroundColor(.red)
                        }
                    }
                }.frame(width: 300)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                   
                VStack(spacing: 20 ) {
                    Button(action: {
                        FBAuth.createUser(withEmail: self.user.email,
                                          name: self.user.fullname,
                                          password: self.user.password) { (restult) in
                                            switch restult {
                                            case .failure(let error):
                                                self.errorString = error.localizedDescription
                                                self.showError = true
                                            case .success( _):
                                                print("Account creation successful")
                                            }
                        }
                        
                    }) {
                        Text("SIGN UP")
                            .padding(.vertical, 10)
                            .frame(width: 300)
                            .background(Color.red)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .opacity(user.isSignInComplete ? 1 : 0.75)
                            //.padding(.bottom, -30)
                    }
                    .disabled(!user.isSignInComplete)
                    Spacer()
                    
                    .padding(.top, 200)

                }.padding()
            }.padding(.top)
                .alert(isPresented: $showError) {
                    Alert(title: Text("Error creating accout"), message: Text(self.errorString), dismissButton: .default(Text("OK")))
            }
           
            
        }
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
