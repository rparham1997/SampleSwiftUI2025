//
//  RestaurantListView.swift
//  RestaurantsApp
//
//  Created by Ramar Parham on 12/30/24.
//

// RestaurantListView.swift

import SwiftUI

struct RestaurantListView: View {
    @ObservedObject var viewModel: RestaurantViewModel

    var body: some View {
        NavigationView {
            List(viewModel.restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetailView(viewModel: .init(restaurant: restaurant))) {
                    Text(restaurant.name)
                }
            }
            .navigationTitle("Restaurants")
            .onAppear {
                viewModel.fetchData()
            }
        }
    }
}

#Preview {
    RestaurantListView(viewModel: RestaurantViewModel())
}
