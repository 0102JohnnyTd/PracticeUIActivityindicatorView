//
//  FetchAPI.swift
//  PracticeUIActivityIndicatorView
//
//  Created by Johnny Toda on 2022/02/27.
//

import Foundation

struct FetchAPI {
    static func fetchData(url: URL) async throws -> UserModel {
        let (data, response) = try await URLSession.shared.data(from: url, delegate: nil)
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
                  throw APIError.connectionError
              }
        do {
            let result = try JSONDecoder().decode(UserModel.self, from: data)
            sleep(2)
            return result
        } catch {
            throw APIError.invalidError
        }
    }
}
