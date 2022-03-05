//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import SwiftUI

struct RecipeCardView: View {
  // MARK: - PROPERTY
  let recipe: Recipe
  
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      // MARK: - CARD IMAGE
      Image(recipe.image)
        .resizable()
        .scaledToFit()
        .overlay(
          HStack {
            Spacer()
            VStack {
              Image(systemName: "bookmark")
                .font(.title.weight(.light))
                .foregroundColor(.white)
                .imageScale(.small)
                .shadow(color: blackLightTransparent, radius: 2, x: 0, y: 0)
                .padding(.trailing, 20)
                .padding(.top, 22)
              Spacer()
            } //: VSTACK
          } //: HSTACK
        )
      
      // MARK: - CARD DETAILS
      VStack(alignment: .leading, spacing: 12) {
        // TITLE
        Text(recipe.title)
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(mediumGreen)
        
        // HEADLINE
        Text(recipe.headline)
          .font(.system(.body, design: .serif))
          .foregroundColor(.gray)
          .italic()
        
        // RATES
        RecipeRatingView(recipe: recipe)
        
        // COOKING
        RecipeCookingView(recipe: recipe)
        
      } //: VSTACK
      .padding()
      .padding(.bottom, 12)
    } //: VSTACK
    .background(Color.white)
    .cornerRadius(12)
    .shadow(color: blackLightTransparent, radius: 8, x: 0, y: 0)
  }
}

// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeCardView(recipe: recipesData[0])
      .previewLayout(.sizeThatFits)
  }
}
