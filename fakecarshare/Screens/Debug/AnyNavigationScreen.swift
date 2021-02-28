//
//  AnyNavigationScreen.swift
//  fakecarshare
//
//  Created by shigeo on 2021/02/28.
//

import SwiftUI

struct AnyNavigationSceen: View {
    var body: some View {
        NavigationView {
            List {
                splashSection
                loginSection
                homeSection
                settingSection
                reservationSection
                webSection
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("画面一覧"))
        }
    }
    
    var splashSection: some View {
        Section(header: Text("Splash")) {
            NavigationLink(destination: SplashScreen().navigationBarHidden(true)) {
                Text("Splash")
            }
        }
    }
    
    var loginSection: some View {
        Section(header: Text("login")) {
            // 戻るべきでなさそうな画面
            NavigationLink(destination: SplashScreen().navigationBarHidden(true)) {
                Text("Login")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("AuthSms")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ForgetPassword")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ResetPassword")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("Splash")
            }
        }
    }
    
    var homeSection: some View {
        Section(header: Text("Home")) {
            NavigationLink(destination: SplashScreen().navigationBarHidden(true)) {
                Text("Home")
            }
        }
    }
    
    var settingSection: some View {
        Section(header: Text("setting")) {
            NavigationLink(destination: SplashScreen()) {
                Text("LoginId")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ChangePassword")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("AuthSmsForChangeLoginId")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("AuthSmsForChangePassword")
            }
        }
    }
    
    var reservationSection: some View {
        Section(header: Text("reservation")) {
            NavigationLink(destination: SplashScreen()) {
                Text("SelectStartStation")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("SelectEndStation")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("MapForStation")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("StatiorSearchResult")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ConfirmReservation")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ChangeReservation")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ReservationList")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("ReservationDetail")
            }
        }
    }
    
    var webSection: some View {
        Section(header: Text("web")) {
            NavigationLink(destination: SplashScreen()) {
                Text("Splash")
            }
        }
    }
}

struct AnyNavigationSceenPreview: PreviewProvider {
    static var previews: some View {
        return AnyNavigationSceen()
    }
}
