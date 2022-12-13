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

    func saveImage(image: UIImage, imageName: String, folderName: String) {
        //crate folder
        createFolderIfNeeded(folderName: folderName)

        // get path to image
        guard
            let data = image.pngData(),
            let url = getURLForImage(imageName: imageName, folderName: folderName)
        else { return }

        // save image to path
        do {
            try data.write(to: url)
        } catch let error {
            print("error saving image. ImageName: \(imageName) \(error)")
        }
    }

    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLForImage(imageName: imageName, folderName: folderName),
            FileManager.default.fileExists(atPath: url.path) else
        { return nil }
        return UIImage(contentsOfFile: url.path)
    }

    private func createFolderIfNeeded(folderName: Strin