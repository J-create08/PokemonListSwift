//
//  PokemonModels.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 12/4/21.
//

import Foundation


struct Results: Decodable {
    var count: Int
    var results: [pokemonList]
}


