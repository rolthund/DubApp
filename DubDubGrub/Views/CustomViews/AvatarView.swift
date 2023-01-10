//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/27/22.
//

import SwiftUI

struct AvatarView: View {
    var size: CGFloat
    
    var body: some View {
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(Circle())
                .padding(.vertical, 8)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(size: 90)
    }
}
