
//
//  CircleButtonAnimationView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-30.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool

    var body: some View {
        VStack {
        Circle()
            .stroke(lineWidth: 5.0)
            .scaleEffect(animate ? 1 : 0)
            .opacity(animate ? 0 : 1)
            .animation(animate ? .easeInOut(duration: 0.65) : .none, value: animate)
        }
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
