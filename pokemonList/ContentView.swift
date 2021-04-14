//
//  ContentView.swift
//  pokemonList
//
//  Created by Juan Carlos  Rojas on 12/4/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pokemonListService = PokemonList()
    
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack {
                    
                    ForEach(pokemonListService.fetchedPokemonList.results, id: \.name) {
                        (pokemon) in
                        NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                            Text(pokemon.name).font(.largeTitle).bold().foregroundColor(.gray)
                        }
                        
                    }
                        
                        
                }.frame(width: UIScreen.main.bounds.width, height: 900, alignment: .center)
            }.onAppear{
                self.pokemonListService.getPokemonList()
            }.navigationBarTitle("Gotta Catch 'em All!", displayMode: .inline)
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
