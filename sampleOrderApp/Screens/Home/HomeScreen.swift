//
//  HomeScreen.swift
//  sampleOrderApp
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct HomeScreen: View {
    private let menuWidth = UIScreen.main.bounds.width / 2
    
    var body: some View {
        ZStack(alignment: .leading) {
            Menu()
                .frame(maxWidth: menuWidth,
                       maxHeight: .infinity)
            VStack {
                Text("Home")
                Image(systemName: "swift")
            }
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Back") {
                    
                }
            }
        }
    }
}

struct Menu: View {
    var body: some View {
        List {
            ForEach(1..<20) { i in
                Text("\(i) Item")
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
