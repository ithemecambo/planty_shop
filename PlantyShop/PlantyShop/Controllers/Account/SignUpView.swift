//
//  SignUpView.swift
//  PlantyShop
//
//  Created by SENGHORT on 10/9/21.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct SignUpView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var isValidEmail: Bool = false
    @State private var password: String = ""
    @State private var isPasswordShow: Bool = false
    @State private var bio: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    FloatingLabelTextField($firstName, placeholder: "First Name") { isChanged in
                        
                    }
                    .leftView {
                        Image(systemName: "person.crop.circle")
                    }
                    .selectedLineColor(.appColor)
                    .selectedTextColor(.appColor)
                    .selectedTitleColor(.appColor)
                    .frame(height: 70)
                    .padding([.leading, .trailing], 20)
                    
                    FloatingLabelTextField($lastName, placeholder: "Last Name") { isChanged in
                        
                    }
                    .leftView {
                        Image(systemName: "person.crop.circle")
                    }
                    .selectedLineColor(.appColor)
                    .selectedTextColor(.appColor)
                    .selectedTitleColor(.appColor)
                    .frame(height: 70)
                    .padding([.leading, .trailing], 20)
                }
                
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
                
                FloatingLabelTextField($bio, placeholder: "Bio") { isChanged in
                    
                }
                .leftView {
                    Image(systemName: "captions.bubble")
                }
                .selectedLineColor(.appColor)
                .selectedTextColor(.appColor)
                .selectedTitleColor(.appColor)
                .frame(height: 70)
                .padding([.leading, .trailing], 20)
                
                LargeButton(title: "Sign Up", backgroundColor: Color.appColor, foregroundColor: .white) {
                    self.endEditing(true)
                    
                    if self.isValidEmail {
                        print("Valid Email")
                        
                    } else {
                        print("Invalid Email")
                    }
                }
                .padding(.top, 20)
                
                VStack (alignment: .trailing) {
                    HStack {
                        Text("Do you have an account?")
                        Button (action: {
                            
                        }, label: {
                            Text("Log In")
                                .fontWeight(.semibold)
                                .italic()
                                .foregroundColor(.appColor)
                        })
                    }
                }
                .padding()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
