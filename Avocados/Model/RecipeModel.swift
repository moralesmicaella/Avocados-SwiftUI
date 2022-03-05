//
//  RecipeModel.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import Foundation

struct Recipe: Identifiable {
  let id = UUID()
  let title: String
  let headline: String
  let image: String
  let rating: Int
  let serves: Int
  let preparation: Int
  let cooking: Int
  let instructions: [String]
  let ingredients: [String]
}
