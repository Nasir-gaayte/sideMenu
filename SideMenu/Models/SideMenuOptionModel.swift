//
//  SideMenuOptionModel.swift
//  SideMenu
//
//  Created by nasir on 16/10/25.
//

import Foundation


enum SideMenuOptionModel: Int, CaseIterable {
    case dashboard
    case profile
    case performance
    case search
    case notifications
    
    
    var title: String {
        switch self {
            
        case .dashboard:
            return "Dashboard"
        case .profile:
            return "Profile"
        case .performance:
            return "Performance"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        }
    }
    
    var systemImageName: String {
        switch self {
            
        case .dashboard:
            return "house"
        case .profile:
            return "person"
        case .performance:
            return "chart.bar"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        }
    }
    
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue }
}
