//
//  ShortcutMenuView.swift
//  Windows11
//
//  Created by 晋先森 on 8/31/21.
//

import SwiftUI

struct ShortcutMenuView: View {
    
    @State private var showingCalendar = false
    
    let names = ["Computer","Settings","User","Video file","Zip","Help","Folder Desktop"]
    
    var body: some View {
        HStack {
            ForEach(names, id: \.self) { name in
                Button {
                    showingCalendar.toggle()
                } label: {
                    Image(name).resizable().frame(maxWidth: 35.0, maxHeight: 35.0).padding(10.0)
                }.buttonStyle(PlainButtonStyle())
            }
        }.popover(isPresented: $showingCalendar, arrowEdge: .bottom) {
            LazyHStack {
                Image("Computer")
            }
        }
    }
}

struct ShortcutMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutMenuView()
    }
}
