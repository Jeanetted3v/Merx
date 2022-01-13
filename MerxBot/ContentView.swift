//
//  ContentView.swift
//  MerxBot
//
//  Created by Zhao Qianyu on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    //initializing the class AppStateManager here. It lives here. Then parsed it into the environment of the MainView, which will link to all other views. 
    @ObservedObject var mng: AppStateManager = AppStateManager()
    
    var body: some View {
        // initializing the MainView and pass in the environmental object
        MainView().environmentObject(mng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
