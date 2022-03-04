//
//  ContentView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/1/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem {
          Image("tabicon-branch")
          Text("Avocados")
        }
      
      RecipesView()
        .tabItem {
          Image("tabicon-book")
          Text("Recipes")
        }
      
      RipeningStagesView()
        .tabItem {
          Image("tabicon-avocado")
          Text("Ripening")
        }
      
      SettingsView()
        .tabItem {
          Image("tabicon-settings")
          Text("Settings")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
