//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/27/22.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
