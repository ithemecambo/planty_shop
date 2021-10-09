//
//  ContentView.swift
//  PlantyShop
//
//  Created by SENGHORT on 10/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Planty Shop")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.appColor)
                .padding(10)
            Text("One place to find your favorite plant")
                .foregroundColor(.grayColor)
                
            LargeButton(title: "Sign Up",
                        backgroundColor: Color.appColor) {
                print("Hello World")
            }
            
            LargeButton(title: "Log In",
                        backgroundColor: Color.white,
                        foregroundColor: .appColor) {
                print("Do you want to login?")
            }
            .padding(.top, -15)
            VStack {
                Image("plant_luanch")
                    .resizable()
                    .scaledToFit()
            }
            .offset(y: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
