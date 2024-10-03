//
//  ApiManager.swift
//  MySwiftUIPokedex
//
//  Created by patricia.martinez on 3/10/24.
//

import Foundation

final class ApiManager {
    var pokemons: [Pokemon] = []
    
    init(){
        do {
            self.pokemons = try getPokemons()
        } catch {
            print(error)
        }
    }
    
    func getPokemons() throws -> [Pokemon] {
        guard let url = Bundle.main.url(forResource: "pokemons", withExtension: "json") else { return [] }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(PokemonList.self, from: data).pokemon
    }
}
