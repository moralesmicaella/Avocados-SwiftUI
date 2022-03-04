//
//  ContentView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/1/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - BODY
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem {
          Image(branchIcon)
          Text("Avocados")
        }
      
      RecipesView()
        .tabItem {
          Image(recipeIcon)
          Text("Recipes")
        }
      
      RipeningStagesView()
        .tabItem {
          Image(avocadoIcon)
          Text("Ripening")
        }
      
      SettingsView()
        .tabItem {
          Image(settingsIcon)
          Text("Settings")
        }
    }
    .onAppear {
      let appearance = UITabBarAppearance()
      appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
      appearance.backgroundColor = UIColor(tabColor)
      
      UITabBar.appearance().scrollEdgeAppearance = appearance
    }
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.dark)
  }
}
