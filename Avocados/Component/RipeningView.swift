//
//  RipeningView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/4/22.
//

import SwiftUI

struct RipeningView: View {
  // MARK: - PROPERTY
  @State private var isAnimating: Bool = false
  
  let ripening: Ripening
  
  // MARK: - BODY
  var body: some View {
    VStack {
      Image(ripening.image)
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .clipShape(Circle())
        .background(
          Circle()
            .fill(lightGreen)
            .frame(width: 110, height: 110, alignment: .center)
        )
        .background(
          Circle()
            .fill(adaptiveAppearance)
            .frame(width: 120, height: 120, alignment: .center)
        )
        .zIndex(1)
        .offset(y: isAnimating ? 55 : -55)
        .animation(.easeInOut(duration: 1), value: isAnimating)
      
      VStack(alignment: .center, spacing: 10) {
        // STAGE
        VStack(alignment: .center, spacing: 0) {
          Text(ripening.stage)
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.bold)
          
          Text("Stage")
            .font(.system(.body, design: .serif))
            .fontWeight(.heavy)
        }
        .foregroundColor(mediumGreen)
        .padding(.top, 65)
        .frame(width: 180)
        
        // TITLE
        Text(ripening.title)
          .font((.system(.title, design: .serif)))
          .fontWeight(.bold)
          .foregroundColor(mediumGreen)
          .padding(.vertical, 12)
          .frame(width: 220)
          .background(
            RoundedRectangle(cornerRadius: 12)
              .fill(LinearGradient(colors: [.white, lightGreen], startPoint: .top, endPoint: .bottom))
              .shadow(color: blackLightTransparent, radius: 6, x: 0, y: 6)
          )
        
        // DESCRIPTION
        Spacer()
        Text(ripening.description)
          .foregroundColor(darkGreen)
          .fontWeight(.bold)
        Spacer()
        
        // RIPENESS
        Text(ripening.ripeness.uppercased())
          .foregroundColor(.white)
          .font(.system(.callout, design: .serif))
          .fontWeight(.bold)
          .shadow(radius: 3)
          .padding(.vertical)
          .frame(width: 185)
          .background(
            RoundedRectangle(cornerRadius: 12)
              .fill(LinearGradient(colors: [mediumGreen, darkGreen], startPoint: .top, endPoint: .bottom))
              .shadow(color: blackLightTransparent, radius: 6, x: 0, y: 6)
          )
        
        // INSTRUCTION
        Text(ripening.instruction)
          .font(.footnote)
          .foregroundColor(lightGreen)
          .fontWeight(.bold)
          .lineLimit(3)
          .frame(width: 160)
        
        Spacer()
      } //: VSTACK
      .zIndex(0)
      .multilineTextAlignment(.center)
      .padding(.horizontal)
      .frame(width: 260, height: 485, alignment: .center)
      .background(LinearGradient(colors: [lightGreen, mediumGreen], startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
      
    } //: VSTACK
    .edgesIgnoringSafeArea(.all)
    .onAppear {
      isAnimating = true
    }
  }
}

// MARK: - PREVIEW
struct RipeningView_Previews: PreviewProvider {
  static var previews: some View {
    RipeningView(ripening: ripeningData[0])
  }
}
