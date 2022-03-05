//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Micaella Morales on 3/3/22.
//

import SwiftUI

struct RipeningStagesView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      VStack {
        Spacer()
        HStack(alignment: .center, spacing: 25) {
          ForEach(ripeningData) { ripening in
            RipeningView(ripening: ripening)
          }
        }
        .padding(.vertical)
        .padding(.horizontal, 25)
        Spacer()
      }
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct RipeningStagesView_Previews: PreviewProvider {
  static var previews: some View {
    RipeningStagesView()
  }
}
