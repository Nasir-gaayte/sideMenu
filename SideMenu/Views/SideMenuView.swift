//
//  SideMenuView.swift
//  SideMenu
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    @Binding var selectedMenu: Int
    @State private var selectedOption: SideMenuOptionModel?
   
    
    var body: some View {
        ZStack{
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                    isShowing.toggle()
                }
                HStack{
                    VStack(alignment: .leading, spacing: 32)
                    {
                        SideMenuHeaderView()
                        VStack{
                            ForEach(SideMenuOptionModel.allCases){option in
                                Button(action: {
                                    selectedOption = option
                                    selectedMenu = option.rawValue
                                    
                                } , label: {
                                    SideMenuRowView(option: option,selectedOption: $selectedOption)
                                  
                                })

                            }
                        }
                        Spacer()
                         
                    }
                    .padding()
                    .frame(width: 270,alignment: .leading)
                    .background(.white)
                
                    Spacer()
                }
                
                
            }
            
        }
        .transition(.move(edge: .leading))
        .animation(.easeOut, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing:.constant(true), selectedMenu:  .constant(0))
}
