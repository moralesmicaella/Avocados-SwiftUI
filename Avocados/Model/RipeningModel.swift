//
//  RipeningModel.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import Foundation

struct Ripening: Identifiable {
  let id = UUID()
  let image: String
  let stage: String
  let title: String
  let description: String
  let ripeness: String
  let instruction: String
}
