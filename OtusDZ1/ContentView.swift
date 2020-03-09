//
//  ContentView.swift
//  OtusDZ1
//
//  Created by Георгий Хайденко on 09.03.2020.
//  Copyright © 2020 Георгий Хайденко. All rights reserved.
//

import SwiftUI

struct Food: Identifiable {
    let id = UUID()
    let name: String
}

final class FoodListViewModel: ObservableObject {
    @Published private(set) var foods = [Food(name: "Cheese"),
                                         Food(name: "Apple"),
                                         Food(name: "Tomato"),
                                         Food(name: "Strawberry")]
}

struct ContentView: View {

    @ObservedObject var viewModel = FoodListViewModel()

    var body: some View {
        List {
            ForEach(viewModel.foods) { food in
                Text(food.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
