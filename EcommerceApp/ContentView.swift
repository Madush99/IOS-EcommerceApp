//
//  ContentView.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userInfo: UserInfo
    var body: some View {
        Group{
            if userInfo.isUserAuthenticated == .undefined {
                Text("Loading...")
            }else if userInfo.isUserAuthenticated == .signedOut {
                LandingView()
            }else {
                HomeView()
            }
        }
        .onAppear{
            self.userInfo.configureFirebaseSateDidChanage()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
