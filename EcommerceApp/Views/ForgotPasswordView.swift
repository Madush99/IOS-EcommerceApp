//
//  ForgotPasswordView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showAlert = false
    @State private var errString: String?
    
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
                        .padding(.top,-200)
                }
                Spacer()
                Text("Forgot Password")
                    .frame(width: 350, alignment: .topLeading)
                    .padding(.top,-200)
                    .font(.system(size: 40, weight: .heavy))
                Text("Please enter your email address below. An email will be sent with a link for you to reset your password.")
                    .frame(width: 350,alignment: .topLeading)
                    .padding(.top,-170)
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)


                TextField("Your Email", text: $user.email).autocapitalization(.none).keyboardType(.emailAddress)
                    .padding(.top, -80)
                Button(action: {
                    FBAuth.resetPassword(email: self.user.email) { (result) in
                        switch result {
                        case .failure(let error):
                            self.errString = error.localizedDescription
                        case .success( _):
                            break
                        }
                        self.showAlert = true
                    }
                }) {
                    Text("SEND PASSWORD RESET LINK")
                        .padding(.vertical, 15)
                        .frame(width: 300, height: 35)
                        .background(Color.red)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(user.isEmailValid(_email: user.email) ? 1 : 0.75)
                        .padding(.top, 10)
                }
                .padding(.top, -42)
                .disabled(!user.isEmailValid(_email: user.email))
                Spacer()
                Spacer()
                  
            }.padding(.top)
                .frame(width: 300)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Password reset link sent to your inbox"),
                          message: Text(self.errString ?? "Please login to your mail and click on the reset link to password reset"),
                          dismissButton: .default(Text("Close")) {
                            self.presentationMode.wrappedValue.dismiss()
                        })
            }
                
        }
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
            
        }
    }
}


struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }

}
