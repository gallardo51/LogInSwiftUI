//
//  ButtonView.swift
//  LogInSwiftUI
//
//  Created by Александр Соболев on 26.04.2024.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
        }
        .buttonAppearance(color)
    }
}

#Preview {
    ButtonView(title: "Some Action", color: .red, action: {})
}
