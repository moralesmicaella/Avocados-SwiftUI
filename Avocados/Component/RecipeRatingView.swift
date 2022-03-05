//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import SwiftUI

struct RecipeRatingView: View {
  // MARK: - PROPERTY
  let recipe: Recipe
  
  // MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 5) {
      ForEach(0..<recipe.rating, id: \.self) { _ in
        Image(systemName: "star.fill")
          .font(.body)
          .foregroundColor(.yellow)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeRatingView(recipe: recipesData[0])
      .previewLayout(.fixed(width: 320, height: 60))
  }
}
