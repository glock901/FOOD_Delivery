//
//  CoinImageService.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {

    @Published var image: UIImage? = nil

    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String

    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }

    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            print("retrived image from file manger")
        } else {
            downloadCoinImage()
            print("download image now")
        }
    }

    private func downloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
                guard let self = self,
                      let downLoadedImage = returnedImage
                else { return }
                self.image = downLoadedImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downLoadedImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
}
