//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import SwiftUI

struct RecipeDetailView: View {
  // MARK: - PROPERTY
  @State private var isAnimating: Bool = false
  let recipe: Recipe
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 0) {
        Image(recipe.image)
          .resizable()
          .scaledToFit()
        
        Group {
          // TITLE
          Text(recipe.title)
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .foregroundColor(adaptiveGreen)
            .padding(.top, 10)
          
          // RATING
          RecipeRatingView(recipe: recipe)
          
          // COOKING
          RecipeCookingView(recipe: recipe)
          
          // INGREDIENTS
          Text("Ingredients")
            .titleModifier()
          
          VStack(alignment: .leading, spacing: 5) {
            ForEach(recipe.ingredients, id: \.self) { ingredient in
              VStack(alignment: .leading, spacing: 5) {
                Text(ingredient)
                  .font((.footnote))
                  .multilineTextAlignment(.leading)
                Divider()
              } //: VSTACK
            }
          } //: VSTACK
          
          // INSTRUCTIONS
          Text("Instructions")
            .titleModifier()
          
          ForEach(recipe.instructions, id: \.self) { instruction in
            VStack(alignment: .center, spacing: 5) {
              Image(systemName: "chevron.down.circle")
                .iconModifier()
                .imageScale(.large)
                .font(.title.weight(.ultraLight))
                .foregroundColor(adaptiveGreen)
              
              Text(instruction)
                .font(.system(.body, design: .serif))
                .multilineTextAlignment(.center)
                .frame(minHeight: 100)
              
            } //: VSTACK
          }
          
        } //: GROUP
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
      } //: VSTACK
    } //: SCROLL VIEW
    .edgesIgnoringSafeArea(.top)
    .overlay(
      HStack {
        Spacer()
        VStack {
          Button(action: {
            
          }, label: {
            Image(systemName: "chevron.down.circle.fill")
              .font(.title)
              .foregroundColor(.white)
              .shadow(radius: 4)
              .opacity(isAnimating ? 1 : 0.6)
              .scaleEffect(isAnimating ? 1.2 : 0.8, anchor: .center)
              .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimating)
          })
            .buttonStyle(.plain)
            .padding(.trailing, 20)
            .padding(.top, 24)
          Spacer()
        } //: VSTACK
      } //: HSTACK
    )
    .onAppear {
      isAnimating = true
    }
  }
}

// MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeDetailView(recipe: recipesData[0])
  }
}
