//
//  AvocadosView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct AvocadosView: View {
  // MARK: - PROPERTY
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  var body: some View {
    VStack {
      Spacer()
      Image("avocado")
        .resizable()
        .scaledToFit()
        .frame(width: 240, height: 240)
        .shadow(color: blackDarkTransparent, radius: 12, x: 0, y: 8)
        .scaleEffect(isAnimating ? 1.0 : 0.9)
        .opacity(isAnimating ? 1.0 : 0.9)
        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimating)
      
      VStack {
        Text("AVOCADOS")
          .font(.system(size: 42, weight: .bold, design: .serif))
          .foregroundColor(.white)
          .padding()
          .shadow(color: blackDarkTransparent, radius: 4, x: 0, y: 4)
        
        Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
          .font(.system(.headline, design: .serif))
          .foregroundColor(lightGreen)
          .multilineTextAlignment(.center)
          .lineSpacing(8)
          .frame(maxWidth: 640, minHeight: 120)
      }
      .padding()
      
      Spacer()
    }
    .background(
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
    )
    .onAppear {
      isAnimating = true
    }
  }
}

// MARK: - PREVIEW
struct AvocadosView_Previews: PreviewProvider {
  static var previews: some View {
    AvocadosView()
      .preferredColorScheme(.dark)
  }
}
