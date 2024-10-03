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
                    HStack {
                        VStack(alignment: .leading){
                            Text(pokemon.name)
                                .font(.headline)
                            Text(pokemon.types)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        AsyncImage(url: pokemon.imageURL) { pokeImage in
                            pokeImage.resizable()
                        } placeholder: {
                            Image(systemName: "tortoise")
                        }

                    }
                    
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
