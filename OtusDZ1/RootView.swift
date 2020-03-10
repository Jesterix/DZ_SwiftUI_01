//
//  RootView.swift
//  OtusDZ1
//
//  Created by Георгий Хайденко on 09.03.2020.
//  Copyright © 2020 Георгий Хайденко. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var foodListViewModel: FoodListViewModel
    
    var body: some View {
        FoodListView().environmentObject(foodListViewModel)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
