
//
//  SearchBarView.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-02.
//


import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}