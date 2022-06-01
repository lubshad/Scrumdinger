//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Lubshad P on 01/06/22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selectedTheme : Theme
    var body: some View {
        Picker("Theme" , selection : $selectedTheme) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme).tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selectedTheme: .constant(.red))
    }
}
