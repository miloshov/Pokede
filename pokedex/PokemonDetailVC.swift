//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Milos Hovjecki on 5/27/17.
//  Copyright © 2017 hanacode.swd. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        
        
    }
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized

    }


}
