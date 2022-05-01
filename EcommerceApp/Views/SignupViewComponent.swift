//
//  SignupViewComponent.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct SignupViewComponent: View {
    var body: some View {
        VStack {
//                HStack {
//                    Spacer()
//
//                    Image("Logo")
//                        .resizable()
//                        .scaledToFit()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 150.0, height: 150.0, alignment: .trailing)
//                        .clipped()
//                        //.padding(.top,-100)
//                }
//                Spacer()
          //  VStack{
//                Text("SignUp")
//                    .frame(width: 300, alignment: .topLeading)
//                    //.padding(.top, 80)
//                    .font(.system(size: 40, weight: .heavy))
//                Text("Signup for free")
//                    .font(.caption)
//                    .frame(width: 300,alignment: .topLeading)
//
          //  }
                SignUpView()
            
            NavigationLink(destination: LoginView()){
                Text("I already have an account?")
                    .foregroundColor(.black)
                    .frame(width: 202)
                Text("SIGN IN")
                    .padding(.vertical, 15)
                    .frame(width: 66)
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .heavy))
                Text("now")
                    .padding(.vertical, 15)
                    .frame(width: 35)
                    .foregroundColor(.black)

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
                        }            }
                    .padding(.bottom, 40)
            
          }
        }
    
}

struct SignupViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        SignupViewComponent()
    }
}
