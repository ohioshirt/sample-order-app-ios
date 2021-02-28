//
//  LoginIdScreen.swift
//  fakecarshare
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct LoginIdScreen: View {
    var body: some View {
        VStack {
            List {
                Text("Login Id")
                Text("Password")
            }
        }
        .navigationTitle("Login Id")
    }
}


struct LoginIdScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginIdScreen()
    }
}
