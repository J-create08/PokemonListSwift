//
//  PokemonService.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 12/4/21.
//

import Foundation


class PokemonList: ObservableObject {
    @Published var fetchedPokemonList: Results = Results.init(count: 0, results: [])
    
    func getPokemonList() {
        let apiURL = "https://pokeapi.co/api/v2/pokemon/"
        let url = URL(string: apiURL)
        
        URLSession.shared.dataTask(with: url!) {data, _, error in
            
            DispatchQueue.main.async {
                if let data = data {
                    do {
                            let decoder = JSONDecoder()
                            let decodedData = try decoder.decode(Results.self, from: data)
                        self.fetchedPokemonList = decodedData
                    } catch {
                        print("error")
                    }
                }
            }
            
            
        }.resume()
    }
}
