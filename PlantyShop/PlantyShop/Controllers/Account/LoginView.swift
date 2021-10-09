//
//  LoginView.swift
//  PlantyShop
//
//  Created by SENGHORT on 10/9/21.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var isValidEmail: Bool = false
    @State private var password: String = ""
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                FloatingLabelTextField($email, validtionChecker: $isValidEmail, placeholder: "Email", editingChanged: { (isChanged) in
                    
                }) {
                    
                }
                .leftView({
                    Image(systemName: "envelope")
                })
                .selectedLineColor(.appColor)
                .selectedTextColor(.appColor)
                .selectedTitleColor(.appColor)
                .addValidation(.init(condition: email.isValid(.email), errorMessage: "Invalid Email"))
                    .isShowError(true)
                    .errorColor(.red)
                    .keyboardType(.emailAddress)
                .frame(height: 70)
                .padding([.leading, .trailing], 20)
                
                FloatingLabelTextField($password, placeholder: "Password", editingChanged: { (isChanged) in
                            
                }) {
                    
                }
                .selectedLineColor(.appColor)
                .selectedTextColor(.appColor)
                .selectedTitleColor(.appColor)
                .isSecureTextEntry(!self.isPasswordShow)
                .leftView({
                    Image(systemName: "key.icloud")
                })
                .rightView({
                    Button(action: {
                        withAnimation {
                            self.isPasswordShow.toggle()
                        }
                    }) {
                        Image(systemName: self.isPasswordShow ? "eye" : "eye.slash")
                            .foregroundColor(.darkColor)
                    }
                })
                .frame(height: 70)
                .padding([.leading, .trailing], 25)
                
                VStack (alignment: .trailing) {
                    HStack {
                        Spacer()
                        Button (action: {
                            
                        }, label: {
                            Text("Forget Password")
                                .foregroundColor(.darkColor)
                                .italic()
                        })
                    }
                }
                .padding()
                
                LargeButton(title: "Log In", backgroundColor: Color.appColor, foregroundColor: .white) {
                    self.endEditing(true)
                    
                    if self.isValidEmail {
                        print("Valid Email")
                        
                    } else {
                        print("Invalid Email")
                    }
                }
                
                VStack (alignment: .trailing) {
                    HStack {
                        Text("Don't have an account?")
                        Button (action: {
                            
                        }, label: {
                            Text("Sign Up")
                                .fontWeight(.semibold)
                                .italic()
                                .foregroundColor(.appColor)
                        })
                    }
                }
                .padding()
                
                LineDividerView(label: "Socail Login")
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            Image("twitter-logo")
                                .resizable()
                                .frame(width: 46, height: 46)
                        })
                        Button(action: {}, label: {
                            Image("facebook-logo")
                                .resizable()
                                .frame(width: 46, height: 46)
                        })
                        Button(action: {}, label: {
                            Image("instagram-logo")
                                .resizable()
                                .frame(width: 52, height: 52)
                        })
                        Button(action: {}, label: {
                            Image("google-logo")
                                .resizable()
                                .frame(width: 44, height: 44)
                        })
                    }
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
