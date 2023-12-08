//
//  LoginPageView.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 25/11/2023.
//

import SwiftUI

struct LoginPageView: View {
    @EnvironmentObject private var appRootManager: RootManager
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                logo
                Spacer()
                textFieldsView
                Spacer()
                    .padding(.bottom, 30)
                buttonsView
            }
            .scrollBounceBehavior(.basedOnSize)
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.loginBackgroundColor)
        }
    }
    
    private var logo: some View {
        Image("logo")
            .resizable()
            .frame(width: 350, height: 350)
    }
    
    private var textFieldsView: some View {
        VStack {
            TextField(text: $login) {
                Text("Login")
                    .foregroundStyle(Color.gray)
            }
            .padding(12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.bottom, 6)
            SecureField(text: $password) {
                Text("Password")
                    .foregroundStyle(Color.gray)
            }
            .padding(12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
    private var buttonsView: some View {
        VStack {
            Button {
                // TODO: Modify this, this is a demo
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.spring()) {
                        appRootManager.currentRoot = .home
                    }
                }
            } label: {
                Text("Log In")
                    .foregroundStyle(Color.white)
            }
            .padding(12)
            .frame(width: 200)
            .background(Color.mainBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            NavigationLink {
                RegisterPageView()
            } label: {
                Text("Sign Up")
                    .foregroundStyle(Color.white)
            }
            .padding(12)
            .frame(width: 200)
            .background(Color.mainBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    LoginPageView()
}
