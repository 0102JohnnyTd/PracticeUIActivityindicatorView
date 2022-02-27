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
        // Do any additional setup after loading the view.
    }
}
