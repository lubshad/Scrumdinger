//
//  ScrumDetailEditView.swift
//  Scrumdinger
//
//  Created by Lubshad P on 29/05/22.
//

import SwiftUI

struct ScrumDetailEditView: View {
    @State var title : String = ""
    @State var lengthInMinutes:Double = 5
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title" , text: $title)
                Slider(value: $lengthInMinutes , in : 5...25, step: 1){
                    Text("Duration")
                }
            }
            Section(header: Text("Attendees")) {
                
            }
        }
    }
}

struct ScrumDetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumDetailEditView()
    }
}
