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
    @IBOutlet weak var mainImg: UIImageView!
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
        
        let img = UIImage(named:"\(pokemon.pokedexId)")
        
        mainImg.image = img
        currentLvlImg.image = img
        pokeIdLbl.text = "\(pokemon.pokedexId)"
        
        
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
        typeLbl.text = pokemon.type
        descriptionLbl.text = pokemon.description
        
        if pokemon.nextEvolutionId == "" {
            
            subTitleLbl.text = "This Pokemon is fully Evolved"
            nextLvlImg.isHidden = true
            
        } else {
            
            nextLvlImg.isHidden = false
            nextLvlImg.image = UIImage(named: pokemon.nextEvolutionId)
            
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - Level: \(pokemon.nextEvolutionLevel)"
            
            subTitleLbl.text = str
            
        }
        
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }

}
