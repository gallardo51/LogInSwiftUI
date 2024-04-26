//
//  RegisterView.swift
//  LogInSwiftUI
//
//  Created by Александр Соболев on 26.04.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            UserNameTF(
                name: $userManager.user.name,
                nameIsValid: userManager.nameIsValid
            )
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
        .padding()
    }
}

extension RegisterView {
    func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            DataManager.shared.saveUser(user: userManager.user)
        }
    }
}

struct UserNameTF: View {
    
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        ZStack {
            TextField("Type your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text("\(name.count)")
                    .font(.callout)
                    .foregroundStyle(nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            
            .padding(.bottom)
        }
    }
}

#Preview {
    RegisterView()
        .environmentObject(UserManager())
}
