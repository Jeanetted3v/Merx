//
//  TabBarButtonView.swift
//  MerxBot
//
//  Created by Zhao Qianyu on 5/1/22.
//

import SwiftUI

enum TabBarButtonType: String {
    case home = "house.fill"
    case heart = "heart.fill"
    case message = "message.fill"
    case profile = "person.fill"
    
}

struct TabBarButtonView: View {
    //parent view has to parse in the type and action
    // type goes first since action is the last parameter to be parsed in in the parent view
    // the string is the rawValue
    var type: TabBarButtonType
    //var action: () -> Void
    // the type will be the same as selectedTab, clear some repeatable codes
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        Button(action: { appState.selectedTab = type }, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .if(appState.selectedTab == type, transform: {$0.foregroundColor(type == .heart ? Color.red : Color.blue)})
                .foregroundColor(Color.gray.opacity(0.5))
        }).frame(width: 35)
    }
}


struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile)
    }
}
