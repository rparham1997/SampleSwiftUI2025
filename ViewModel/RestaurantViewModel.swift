//
//  RestaurantViewModel.swift
//  RestaurantsApp
//
//  Created by Ramar Parham on 12/30/24.
//

import Foundation

class RestaurantViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []

    func fetchData() {
        guard let url = URL(string: "https://api.example.com/restaurants") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let decodedRestaurants = try decoder.decode([Restaurant].self, from: data)
                DispatchQueue.main.async {
                    self.restaurants = decodedRestaurants
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
