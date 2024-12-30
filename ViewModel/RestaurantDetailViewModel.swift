//
//  RestaurantDetailViewModel.swift
//  RestaurantsApp
//
//  Created by Ramar Parham on 12/30/24.
//

import SwiftUI

class RestaurantDetailViewModel: ObservableObject {
    let restaurant: Restaurant

    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
