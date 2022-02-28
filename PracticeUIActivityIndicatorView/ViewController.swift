//
//  ViewController.swift
//  PracticeUIActivityIndicatorView
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var indicator: UIActivityIndicatorView!

    @IBOutlet private weak var searchBar: UISearchBar! {
        didSet {
            searchBar.delegate = self
        }
    }

    @IBOutlet weak var userNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
    }

    private func startIndicator() {
        indicator.isHidden = false
        indicator.startAnimating()
        view.alpha = 0.5
    }

    private func stopIndicator() {
        indicator.stopAnimating()
        indicator.hidesWhenStopped = true
        view.alpha = 1.0
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text,
                !text.isEmpty,
                let url = URL(string: "https://api.github.com/users/\(text)") else { return }
        startIndicator()
        Task {
            do {
                let result = try await FetchAPI.fetchData(url: url)
                userNameLabel.text = result.name
                stopIndicator()
            } catch {
                print(error)
                stopIndicator()
            }
        }
    }
}
