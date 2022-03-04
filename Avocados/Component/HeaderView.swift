//
//  HeaderView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct HeaderView: View {
  // MARK: - PROPERTY
  @State private var isAnimating: Bool = false
  
  private var slideInAnimation: Animation {
    Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
      .speed(1)
      .delay(0.25)
  }
  
  let header: Header
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      Image(header.image)
        .resizable()
        .scaledToFill()
      
      HStack(alignment: .top, spacing: 0) {
        Rectangle()
          .fill(lightGreen)
          .frame(width: 4)
        
        VStack(alignment: .leading, spacing: 6) {
          Text(header.headline)
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .shadow(radius: 3)
          
          Text(header.subheadline)
            .font(.footnote)
            .lineLimit(2)
            .foregroundColor(.white)
            .shadow(radius: 3)
        } //: VSTACK
        .padding(.horizontal, 20)
        .frame(width: 281, height: 105)
        .background(blackLightTransparent)
      } //: HSTACK
      .frame(width: 285, height: 105, alignment: .center)
      .offset(x: -66, y: isAnimating ? 75 : 220)
      .animation(slideInAnimation, value: isAnimating)
      .onAppear {
        isAnimating = true
      }
    } //: ZSTACK
    .frame(width: 480, height: 320, alignment: .center)
  }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(header: headerData[0])
      .previewLayout(.sizeThatFits)
  }
}
