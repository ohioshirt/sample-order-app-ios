//
//  LoginScreen.swift
//  sampleOrderApp
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct LoginScreen: View {
    @State private var loginId = ""
    @State private var signInPassword = ""
    @State private var signUpPassword = ""
    @State private var signIn = true
    @State private var signInSuccess = false
    @State private var signUpSuccess = false
    @State private var inResetFlow = false
    
    private let borderColer = Color(.sRGB,
                                     red: 0.8,
                                     green: 0.8,
                                     blue: 0.8,
                                     opacity: 1)
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Sign In") {
                    signIn.toggle()
                }
                    .frame(width: 100, height: 64)
                    .border(borderColer)
                    .contentShape(Rectangle())
                    .disabled(signIn)
                Button("Sign Up") {
                    signIn.toggle()
                }
                    .frame(width: 100, height: 64)
                    .border(borderColer)
                    .contentShape(Rectangle())
                .disabled(!signIn)
                Spacer()
            }
            if signIn {
                loginForm
            } else {
                signupForm
            }
            
            NavigationLink(
                destination: RequestPasswordScreen(inFlow: $inResetFlow),
                isActive: $inResetFlow,
                label: {
                    Text("Forget Password")
                })
            .padding()
        }
    }
    
    var loginForm: some View {
        VStack {
            TextField("loginId", text: $loginId)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            SecureField("password", text: $signInPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            NavigationLink(
                destination: AuthSmsScreen(),
                isActive: $signInSuccess,
                label: {
                    Button(action: {
                        signInSuccess.toggle()
                    }, label: {
                        Text("Login")
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 48)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    })
                })

        }
    }
    
    var signupForm: some View {
        VStack {
            TextField("Sign Up", text: $loginId)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            SecureField("password", text: $signUpPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            NavigationLink(
                destination: AuthSmsScreen(),
                isActive: $signInSuccess,
                label: {
                    Button(action: {
                        signUpSuccess.toggle()
                    }, label: {
                        Text("SignUp")
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 48)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    })
                })
        }
    }
}


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
