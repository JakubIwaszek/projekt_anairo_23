//
//  LoginPageViewModel.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 08/12/2023.
//

import Foundation
import FirebaseAuth

class LoginPageViewModel: ObservableObject {
    @Published var alert = AlertMessage(message: "")
    @Published var login = ""
    @Published var password = ""
    
    func validateFields() -> Bool {
        return !login.isEmpty && !password.isEmpty
    }
    
    func signIn(success: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: login, password: password) { [weak self] result, error in
            if let _ = result {
                success(true)
            } else {
                guard let error = error else {
                    self?.alert.setup(isPresented: true, message: "Something went wrong...")
                    success(false)
                    return
                }
                self?.alert.setup(isPresented: true, message: error.localizedDescription)
                success(false)
            }
        }
    }
}
