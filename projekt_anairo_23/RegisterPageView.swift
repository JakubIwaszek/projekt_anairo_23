//
//  RegisterPageView.swift
//  projekt_anairo_23
//
//  Created by Przemysław Szwajcowski on 08/12/2023.
//

import SwiftUI

struct RegisterPageView: View {
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
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
                print("create an account")
            } label: {
                Text("Create an account")
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
    RegisterPageView()
}
