//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 01/06/22.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).fill(theme.mainColor)
            Label("\(theme.name)" , systemImage: "paintpalette")
        }
        .fixedSize(horizontal: false, vertical: true)
        
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .red)
    }
}
