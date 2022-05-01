//
//  LandingView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct LandingView: View {
   
    var body: some View {
        NavigationView{
        
        VStack{
            Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350.0, height: 250.0, alignment: .top)
                    .clipped()
                    .padding(.top, -200)
                    .padding(.bottom, 100)
        NavigationLink(destination: LoginView()) {
                Text("LOGIN")
                    .padding(.vertical, 10)
                    .frame(width: 300)
                    .background(Color.red)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                   
                }
            
            NavigationLink(destination: SignupViewComponent()) {
                Text("SIGNUP")
                    .padding(.vertical, 10)
                    .frame(width: 300)
                    .background(Color.white)
                    .border(Color.red, width: 1.0)
                    .cornerRadius(4)
                    .foregroundColor(Color.black)
                   
                }
            NavigationLink(destination: HomeView()) {
                Text("GUEST LOGIN")
                    .padding(.vertical, 10)
                    .frame(width: 300)
                    .foregroundColor(Color.black)
                   
                }
            .toolbar{
                ToolbarItemGroup(placement: .bottomBar){
                    NavigationLink(destination: AboutUsView()) {
                        Text("About Us")
                            .padding(.vertical, 10)
                            .frame(width: 80)
                            .foregroundColor(Color.black)
                           
                        }
                    NavigationLink(destination: AboutUsView()) {
                        Text("Terms & Conditions")
                            .padding(.vertical, 10)
                            .frame(width: 150)
                            .foregroundColor(Color.black)
                           
                        }
                    NavigationLink(destination: AboutUsView()) {
                        Text("Privacy")
                            .padding(.vertical, 10)
                            .frame(width: 100)
                            .foregroundColor(Color.black)
                           
                        }
                }
                
            }
            
            }
            
        }
        
    }
            
}



struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
