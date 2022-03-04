//
//  HeaderModel.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import Foundation

struct Header: Identifiable {
  let id = UUID()
  let image: String
  let headline: String
  let subheadline: String
}
