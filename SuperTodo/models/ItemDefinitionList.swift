//
//  ItemDefinitionList.swift
//  SuperTodo
//
//  Created by Karol Wawrzecki on 16/04/2022.
//

import Foundation

class ItemDefinitionList: ObservableObject {
    @Published var list: [ItemDefinition]
    
    init(list: [ItemDefinition]) {
        self.list = list
    }
}
