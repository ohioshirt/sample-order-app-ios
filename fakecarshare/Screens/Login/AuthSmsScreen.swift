//
//  AuthSmsScreen.swift
//  fakecarshare
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct AuthSmsScreen: View {
    @State private var authCode = ""
    @State private var authSuccess = false
    
    var body: some View {
        VStack {
            TextField("Code",
                      value: $authCode,
                      formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .frame(width: 240, height: 48)
                .padding(2)
                .border(Color.black, width: 1)
            
            NavigationLink(
                destination: AuthSmsScreen(),
                isActive: $authSuccess,
                label: {
                    Button(action: {
                        authSuccess.toggle()
                        
                    }, label: {
                        Text("Auth")
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 48)
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    })
                })
        }
    }
}

struct AuthSmsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AuthSmsScreen()
    }
}
