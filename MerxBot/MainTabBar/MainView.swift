//
//  MainView.swift
//  MerxBot
//
//  Created by Zhao Qianyu on 5/1/22.
//

import SwiftUI

struct MainView: View {
    
    //the Buttons will be able to access to appState, which will get access to the AppState properties (in AppStateManager file). Inject this in the MainView so that any sub-view will be able to get access to it.
    //in other views, just add in enviromentObject and give it a type. No need to initialize it. 
    @EnvironmentObject var appState: AppStateManager
    
    func correctViewForState() -> some View {
        switch appState.selectedTab{
        case .home:
            let view = Text("home")
            return AnyView(view)
        case .heart:
            let view = Text("heart")
            return AnyView(view)
        case .message:
            let view = Text("message")
            return AnyView(view)
        case .profile:
            let view = Text("profile")
            return AnyView(view)
        }
        
    }
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
            
            VStack{
                Spacer()
                correctViewForState()
                Spacer()
                HStack{
                    Spacer()
                    TabBarButtonView(type: .home)
                    Spacer()
                    TabBarButtonView(type: .heart)
                    Spacer()
                    TabBarButtonView(type: .message)
                    Spacer()
                    TabBarButtonView(type: .profile)
                    Spacer()
                }
                .frame(height: 100)
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(AppStateManager())
    }
}

