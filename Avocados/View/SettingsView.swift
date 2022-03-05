//
//  SettingsView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTY
  @State private var enableNotification: Bool = true
  @State private var backgroundResfresh: Bool = false
  
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .center, spacing: 0) {
      // MARK: - HEADER
      VStack(alignment: .center, spacing: 5) {
        Image("avocado")
          .resizable()
          .scaledToFit()
          .padding(.top)
          .frame(width: 100, height: 100, alignment: .center)
          .shadow(color: blackLightTransparent, radius: 8, x: 0, y: 4)
        
        Text("AVOCADOS")
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(adaptiveGreen)
      } //: VSTACK
      .padding()
      
      Form {
        // MARK: - SECTION #1
        Section {
          Toggle(isOn: $enableNotification) {
            Text("Enable notifications")
          }
          Toggle(isOn: $backgroundResfresh) {
            Text("Background refresh")
          }
        } header: {
          Text("General Settings")
        } //: SECTION 1
        
        // MARK: - SECTION #2
        Section {
          if enableNotification {
            HStack {
              Text("Product")
                .foregroundColor(.gray)
              Spacer()
              Text("Avocado Recipes")
            }
            HStack {
              Text("Compatibility")
                .foregroundColor(.gray)
              Spacer()
              Text("iPhone & iPad")
            }
            HStack {
              Text("Website")
                .foregroundColor(.gray)
              Spacer()
              Text("swiftuimasterclass.com")
            }
            HStack {
              Text("Version")
                .foregroundColor(.gray)
              Spacer()
              Text("1.0.0")
            }
          } else {
            HStack {
              Text("Personal message")
                .foregroundColor(.gray)
              Spacer()
              Text("👍 Happy Coding!")
            }
          }
        } header: {
          Text("Application")
        }

        
      }
    } //: VSTACK
    .frame(maxWidth: 640)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
