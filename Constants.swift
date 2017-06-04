//
//  Constants.swift
//  pokedex
//
//  Created by Milos Hovjecki on 6/4/17.
//  Copyright © 2017 hanacode.swd. All rights reserved.
//

import Foundation

// Setting up url that app will calll to use api details and provide it to application

let URL_BASE = "http://pokeapi.co/"
let URL_POKEMON = "api/v1/pokemon/"


// "typealias" (called closure) is used when you calling something from the network but dont know when the call will be completed (usualy takes hals a second or whole second). If it is not completed when your outlets are loaded (which is instantly when app is loaded) then you will have a crash.

typealias DownloadComplete = () -> ()
