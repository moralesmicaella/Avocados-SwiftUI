//
//  FactView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct FactView: View {
  // MARK: - PROPERTY
  let fact: Fact
  
  private let gradient: Gradient = Gradient(colors: [mediumGreen, lightGreen])
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      Text(fact.content)
        .padding(.leading, 55)
        .padding(.trailing, 10)
        .padding(.vertical, 3)
        .font(.footnote)
        .foregroundColor(.white)
        .frame(width: 300, height: 135, alignment: .center)
        .background(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(12)
        .lineLimit(6)
        .multilineTextAlignment(.leading)
      
      Image(fact.image)
        .resizable()
        .frame(width: 66, height: 66, alignment: .center)
        .clipShape(Circle())
        .background(
          Circle()
            .fill(Color.white)
            .frame(width: 74, height: 74, alignment: .center)
        )
        .background(
          Circle()
            .fill(LinearGradient(gradient: gradient, startPoint: .trailing, endPoint: .leading))
            .frame(width: 82, height: 82, alignment: .center)
        )
        .background(
          Circle()
            .fill(Color.white)
            .frame(width: 90, height: 90, alignment: .center)
        )
        .offset(x: -150)
    } //: ZSTACK
  }
}

// MARK: - PREVIEW
struct FactsView_Previews: PreviewProvider {
  static var previews: some View {
    FactView(fact: factData[0])
      .previewLayout(.fixed(width: 400, height: 220))
  }
}
