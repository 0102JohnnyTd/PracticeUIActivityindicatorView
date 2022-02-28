//
//  ViewController.swift
//  PracticeUIActivityIndicatorView
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var indicator: UIActivityIndicatorView!

    @IBOutlet private weak var searchBar: UISearchBar!

    @IBOutlet private weak var pokemonImage: UIImageView!

    @IBOutlet private weak var pokemonNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
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
