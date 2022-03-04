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
        DishesRowView(dish: dishData["toast"], column: .left)
        Divider()
        DishesRowView(dish: dishData["tacos"], column: .left)
        Divider()
        DishesRowView(dish: dishData["salad"], column: .left)
        Divider()
        DishesRowView(dish: dishData["spread"], column: .left)
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
        DishesRowView(dish: dishData["guacamole"], column: .right)
        Divider()
        DishesRowView(dish: dishData["sandwich"], column: .right)
        Divider()
        DishesRowView(dish: dishData["soup"], column: .right)
        Divider()
        DishesRowView(dish: dishData["smoothie"], column: .right)
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
