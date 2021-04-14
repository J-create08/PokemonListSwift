//
//  PokemonDetailView.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 13/4/21.
//

import SwiftUI

struct PokemonDetailView: View {
    
    var pokemon: pokemonList
    @ObservedObject var fetchedPokemonDetail = PokemonDetail()
    
    var body: some View {
        VStack{
            Text("Name: \(fetchedPokemonDetail.fetchedPokemonDetail.name)")
            Text("ID: \(fetchedPokemonDetail.fetchedPokemonDetail.id)")
            Text("Height: \(fetchedPokemonDetail.fetchedPokemonDetail.height)")
            Text("Width: \(fetchedPokemonDetail.fetchedPokemonDetail.weight)")
        }.onAppear{
            self.fetchedPokemonDetail.getPokemonDetail(pokemonName: pokemon.name)
        }
        
    }
}

//struct PokemonDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonDetailView()
//    }
//}
