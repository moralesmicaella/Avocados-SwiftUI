//
//  FactModel.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import Foundation

struct Fact: Identifiable {
  let id = UUID()
  let image: String
  let content: String
}
