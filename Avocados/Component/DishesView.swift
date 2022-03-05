//
//  DishesView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct DishesView: View {
  var body: some View {
    HStack(alignment: .center, spacing: 4) {
      // MARK: - 1ST COLUMN
      VStack(alignment: .leading, spacing: 4) {
        DishesRowView(dish: dishesData["toast"], column: .left)
        Divider()
        DishesRowView(dish: dishesData["tacos"], column: .left)
        Divider()
        DishesRowView(dish: dishesData["salad"], column: .left)
        Divider()
        DishesRowView(dish: dishesData["spread"], column: .left)
      } //: VSTACK
      
      // MARK: - 2ND COLUMN
      VStack(alignment: .center, spacing: 16) {
        HStack {
          Divider()
        } //: HSTACK
        Image(systemName: "heart.circle")
          .font(.title.weight(.ultraLight))
          .imageScale(.large)
        HStack {
          Divider()
        } //: HSTACK
      } //: VSTACK
      
      // MARK: - 3RD COLUMN
      VStack(alignment: .trailing, spacing: 4) {
        DishesRowView(dish: dishesData["guacamole"], column: .right)
        Divider()
        DishesRowView(dish: dishesData["sandwich"], column: .right)
        Divider()
        DishesRowView(dish: dishesData["soup"], column: .right)
        Divider()
        DishesRowView(dish: dishesData["smoothie"], column: .right)
      } //: VSTACK
    } //: HSTACK
    .font(.system(.callout, design: .serif))
    .foregroundColor(.gray)
    .padding(.horizontal)
    .frame(maxHeight: 220)
  }
}

struct DishesView_Previews: PreviewProvider {
  static var previews: some View {
    DishesView()
      .previewLayout(.fixed(width: 414, height: 280))
  }
}
