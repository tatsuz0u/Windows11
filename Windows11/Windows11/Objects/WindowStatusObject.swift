//
//  WindowStatusObject.swift
//  Windows11
//
//  Created by 晋先森 on 9/5/21.
//

import SwiftUI

class WindowStatusObject: ObservableObject {
    @Published var status = WindowStatus.desktop

}

enum WindowStatus: Int, CaseIterable {
    case launch
    case lockScreen
    case login
    case desktop
}

