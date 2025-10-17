//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(Color.white)
                .frame(width: 45,height: 45)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading,spacing: 6){
                Text("Nasir Gaayte")
                    .font(.subheadline)
                Text("test@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
                
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
