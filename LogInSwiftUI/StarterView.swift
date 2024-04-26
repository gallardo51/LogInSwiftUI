//
//  StarterView.swift
//  LogInSwiftUI
//
//  Created by Александр Соболев on 26.04.2024.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

#Preview {
    StarterView()
        .environmentObject(UserManager())
}
