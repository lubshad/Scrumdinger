//
//  ProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Lubshad P on 02/06/22.
//

import SwiftUI

struct ScrumProgressView: ProgressViewStyle {
    let theme: Theme
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16).frame( height : 20)
            ProgressView(configuration)
                .tint(theme.mainColor)
                .padding(.horizontal)
                .frame( height: 10)
                
                
        }
    }
}

struct ProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.5)
            .progressViewStyle(ScrumProgressView(theme: Theme.red)).previewLayout(.sizeThatFits)
    }
}
