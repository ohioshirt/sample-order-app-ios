//
//  ResetPasswordScreen.swift
//  sampleOrderApp
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct ResetPasswordScreen: View {
    @State private var newPassword = ""
    @State private var confirmationPassword = ""
    @State private var changeSuccess = false
    @Binding var inFlow: Bool
    
    var body: some View {
        VStack {
            TextField("New Password",
                      text: $newPassword)
                .keyboardType(.asciiCapableNumberPad)
                .frame(width: 240, height: 48)
                .padding(2)
                .border(Color.black, width: 1)
            
            SecureField("Re Enter Password",
                      text: $confirmationPassword)
                .keyboardType(.asciiCapableNumberPad)
                .frame(width: 240, height: 48)
                .padding(2)
                .border(Color.black, width: 1)
            
            Button("return to login") {
                inFlow.toggle()
            }.padding()
            
            NavigationLink(
                destination: LoginScreen(),
                isActive: $changeSuccess,
                label: {
                    Button(action: {
                        changeSuccess.toggle()
                    }, label: {
                        Text("Change")
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 48)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    })
                })
        }
    }
}
