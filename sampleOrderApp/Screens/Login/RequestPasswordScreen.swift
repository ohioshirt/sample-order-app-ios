//
//  RequestPasswordScreen.swift
//  sampleOrderApp
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct RequestPasswordScreen: View {
    @State private var loginId = ""
    @State private var requestSuccess = false
    @Binding var inFlow: Bool
    
    var body: some View {
        VStack {
            TextField("LoginId",
                      text: $loginId)
                .keyboardType(.asciiCapableNumberPad)
                .frame(width: 240, height: 48)
                .padding(2)
                .border(Color.black, width: 1)
            
            NavigationLink(
                destination: ResetPasswordScreen(inFlow: $inFlow),
                isActive: $requestSuccess,
                label: {
                    Button(action: {
                        requestSuccess.toggle()
                    }, label: {
                        Text("Send")
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 48)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    })
                })
                .isDetailLink(false)
        }
    }
}
