//
//  DishesRowView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct DishesRowView: View {
  // MARK: - PROPERTY
  enum Column {
    case left
    case right
  }
  
  let dish: Dish?
  let column: Column
  
  // MARK: - BODY
  var body: some View {
    HStack {
      if let dish = dish {
        if column == .left {
          Image(dish.image)
            .iconModifier()
          Spacer()
          Text(dish.name)
        } else {
          Text(dish.name)
          Spacer()
          Image(dish.image)
            .iconModifier()
        }
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW
struct DishesRowView_Previews: PreviewProvider {
  static var previews: some View {
    DishesRowView(dish: dishData["toast"], column: .left)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
