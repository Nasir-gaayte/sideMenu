//
//  SideMenuRowView.swift
//  SideMenu
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct SideMenuRowView: View {
    
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isselected: Bool {
        return self.selectedOption == option
    }
    
    
    
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
            Text(option.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isselected ? .blue: .primary)
        .background(isselected ? Color.blue.opacity(0.25): .clear)
        .frame(width:216 ,height: 30)
        .border(isselected ? .gray.opacity(0.4) : .clear, width:2).cornerRadius(isselected ? 20: 0)
        
    }
}

#Preview {
    SideMenuRowView(option: .dashboard, selectedOption: .constant(.dashboard) )
}
