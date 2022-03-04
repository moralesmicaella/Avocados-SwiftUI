//
//  ImageExtension.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

extension Image {
  func iconModifier() -> some View {
    self
      .resizable()
      .frame(width: 42, height: 42, alignment: .center)
  }
}
