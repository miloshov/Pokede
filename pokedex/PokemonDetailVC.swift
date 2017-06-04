//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Milos Hovjecki on 5/27/17.
//  Copyright © 2017 hanacode.swd. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mianImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenceLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokeIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var basicAttackLbl: UILabel!
    @IBOutlet weak var subTitleLbl: UILabel!
    @IBOutlet weak var currentLvlImg: UIImageView!
    @IBOutlet weak var nextLvlImg: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        
        pokemon.downloadPokemonDetail {
            
            // What ever we write here it will be performed only after network call is completed
            
            self.updateUI()
            
        }

    }
    
    func updateUI() {
        
        basicAttackLbl.text = pokemon.attack
        defenceLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }

}
