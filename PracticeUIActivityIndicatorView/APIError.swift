//
//  APIError.swift
//  PracticeUIActivityIndicatorView
//
//  Created by Johnny Toda on 2022/02/28.
//

import Foundation

enum APIError: Error {
    case connectionError
    case invalidError

    var alertTitle: String {
        switch self {
        case .connectionError: return "通信エラー"
        case.invalidError: return "無効なURL"
        }
    }

    var alertContent: String {
        switch self {
        case.connectionError: return "通信状況をお確かめの上、再度お試しください。"
        case.invalidError: return "無効なURL"
        }
    }
}
