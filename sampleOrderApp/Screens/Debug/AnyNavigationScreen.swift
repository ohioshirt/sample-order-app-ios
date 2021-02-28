//
//  AnyNavigationScreen.swift
//  sampleOrderApp
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
            NavigationLink(destination: LoginScreen().navigationBarHidden(true)) {
                Text("Login")
            }
            NavigationLink(destination: AuthSmsScreen()) {
                Text("AuthSms")
            }
            NavigationLink(destination: RequestPasswordScreen(inFlow: .constant(true))) {
                Text("ForgetPassword")
            }
            NavigationLink(destination: ResetPasswordScreen(inFlow: .constant(true))) {
                Text("ResetPassword")
            }
            NavigationLink(destination: SplashScreen()) {
                Text("Splash")
            }
        }
    }
    
    var homeSection: some View {
        Section(header: Text("Home")) {
            NavigationLink(destination: HomeScreen()) {
                Text("Home")
            }
        }
    }
    
    var settingSection: some View {
        Section(header: Text("setting")) {
            NavigationLink(destination: LoginIdScreen()) {
                Text("LoginId")
            }
            NavigationLink(destination: ChangePasswordScreen()) {
                Text("ChangePassword")
            }
            NavigationLink(destination: AuthSmsForChangeLoginIdScreen()) {
                Text("AuthSmsForChangeLoginId")
            }
            NavigationLink(destination: AuthSmsForChangePasswordScreen()) {
                Text("AuthSmsForChangePassword")
            }
        }
    }
    
    var reservationSection: some View {
        Section(header: Text("reservation")) {
            NavigationLink(destination: SelectStartStationScreen()) {
                Text("SelectStartStation")
            }
            NavigationLink(destination: SelectEndStationScreen()) {
                Text("SelectEndStation")
            }
            NavigationLink(destination: MapForStationScreen()) {
                Text("MapForStation")
            }
            NavigationLink(destination: StatiorSearchResultScreen()) {
                Text("StatiorSearchResult")
            }
            NavigationLink(destination: ConfirmReservationScreen()) {
                Text("ConfirmReservation")
            }
            NavigationLink(destination: ChangeReservationScreen()) {
                Text("ChangeReservation")
            }
            NavigationLink(destination: ReservationListScreen()) {
                Text("ReservationList")
            }
            NavigationLink(destination: ReservationDetailScreen()) {
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
