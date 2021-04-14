//
//  PokemonDetailService.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 13/4/21.
//

import Foundation


class PokemonDetail: ObservableObject {
    @Published var fetchedPokemonDetail: pokemonDetail = pokemonDetail.init(name: "", id: 0, weight: 0, height: 0)
    
    func getPokemonDetail(pokemonName: String) {
        let apiURL = "https://pokeapi.co/api/v2/pokemon/\(pokemonName)"
        let url = URL(string: apiURL)
        
        URLSession.shared.dataTask(with: url!) {data, _, error in
            
            DispatchQueue.main.async {
                if let data = data {
                    do {
                            let decoder = JSONDecoder()
                            let decodedData = try decoder.decode(pokemonDetail.self, from: data)
                        self.fetchedPokemonDetail = decodedData
                    } catch {
                        print("error")
                    }
                }
            }
            
            
        }.resume()
    }

}
