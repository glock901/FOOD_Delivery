//
//  NetworkingManager.swift
//  Crypto
//
//  Created by Jonni Akesson on 2022-07-31.
//

import Foundation
import Combine

class NetworkingManager {
    enum NetworkError: LocalizedError {
        case barURLResponse(url: URL)
        case unknown

        var errorDescription: String? {
            switch self {
            case 