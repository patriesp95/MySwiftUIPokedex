//
//  PokemonListView.swift
//  MySwiftUIPokedex
//
//  Created by patricia.martinez on 3/10/24.
//

import SwiftUI

struct PokemonListView: View {
    var body: some View {
        let api = ApiManager()
        NavigationStack {
            List {
                ForEach(api.pokemons) { pokemon in
                    PokeCell(pokemon: pokemon)
                }
            }
            .listRowSpacing(20)
            .listStyle(.grouped)
            .navigationTitle("Pokedex")
        }
    }
}

#Preview {
    PokemonListView()
}
