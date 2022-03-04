//
//  TextExtension.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

extension Text {
  func titleModifier() -> some View {
    self
      .font(.system(.title, design: .serif))
      .fontWeight(.bold)
      .foregroundColor(adaptiveGreen)
      .padding(8)
  }
}
