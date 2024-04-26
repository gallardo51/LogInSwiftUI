//
//  LogInSwiftUIApp.swift
//  LogInSwiftUI
//
//  Created by Александр Соболев on 26.04.2024.
//

import SwiftUI

@main
struct LogInSwiftUIApp: App {
    private var user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserManager(user: user))
        }
    }
}
