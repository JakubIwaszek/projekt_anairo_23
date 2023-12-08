//
//  RegisterPageViewModel.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 08/12/2023.
//

import Foundation
import FirebaseAuth

class RegisterPageViewModel: ObservableObject {
    @Published var alert = AlertMessage(message: "")
    @Published var login = ""
    @Published var password = ""

    func validateFields() -> Bool {
        return (!login.isEmpty && !password.isEmpty)
    }
    
    func createUserAccount() {
        Auth.auth().createUser(withEmail: login, password: password) { [weak self] result, error in
            if let _ = result {
                self?.alert.setup(isPresented: true, message: "The account has been created.", shouldDismissView: true)
            } else {
                guard let error = error else {
                    self?.alert.setup(isPresented: true, message: "Something went wrong...")
                    return
                }
                self?.alert.setup(isPresented: true, message: error.localizedDescription)
            }
        }
    }
}
