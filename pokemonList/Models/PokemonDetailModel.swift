//
//  PokemonDetailModel.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 12/4/21.
//

import Foundation


struct pokemonDetail: Decodable {
    var name: String
    var id: Int
    var weight: Int
    var height: Int
}
