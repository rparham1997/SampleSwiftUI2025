//
//  Restaurants.swift
//  RestaurantsApp
//
//  Created by Ramar Parham on 12/30/24.
//

struct Restaurant: Codable, Identifiable {
    let id: Int
    let name: String
    let cuisine: String
}
