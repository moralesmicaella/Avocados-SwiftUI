//
//  RecipesView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct RecipesView: View {
  // MARK: - BODY
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        // MARK: - HEADER
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(headerData) { header in
              HeaderView(header: header)
            }
          }
        }
        
        // MARK: - DISHES
        Text("Avocado Dishes")
          .titleModifier()
        
        DishesView()
          .frame(maxWidth: 640)
        
        // MARK: - FOOTER
        VStack(alignment: .center, spacing: 20) {
          Text("All About Avocados")
            .titleModifier()
          
          Text("Everything you wanted to know about avocados but were too afraid to ask.")
            .font(.system(.body, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
        } //: VSTACK
        .frame(maxWidth: 640)
        .padding()
        .padding(.bottom, 85)
      } //: VSTACk
    } //: SCROLL VIEW
    .edgesIgnoringSafeArea(.all)
  }
}

// MARK: - PREVIEW
struct RecipesView_Previews: PreviewProvider {
  static var previews: some View {
    RecipesView()
  }
}
