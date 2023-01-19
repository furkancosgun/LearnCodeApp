//
//  ContentView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model:UserViewModel
    var body: some View {
        NavigationView{
            Group{
                if model.user.id != 0 {
                    HomeView()
                }else{
                    GreetingView()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
