//
//  LocalFileManager.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-08-02.
//

import Foundation
import SwiftUI

// Generic file manager

class LocalFileManager {

    static let instance = LocalFileManager()

    private init() { }

    func saveImage(image: UIImage, imageN