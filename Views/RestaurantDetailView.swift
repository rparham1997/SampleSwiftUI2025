//
//  Untitled.swift
//  RestaurantsApp
//
//  Created by Ramar Parham on 12/30/24.
//

// RestaurantDetailView.swift

import SwiftUI

struct RestaurantDetailView: View {
    @ObservedObject var viewModel: RestaurantDetailViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.restaurant.name)
                .font(.title)
            Text(viewModel.restaurant.cuisine)
        }
        .padding()
        .navigationTitle(viewModel.restaurant.name)
    }
}

#Preview {
    RestaurantDetailView(viewModel: RestaurantDetailViewModel(restaurant: Restaurant(id: 1, name: "Pizza Place", cuisine: "Italian")))
}
