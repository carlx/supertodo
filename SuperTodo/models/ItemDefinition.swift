//
//  ItemDefinition.swift
//  NightWatch
//
//  Created by Karol Wawrzecki on 10/04/2022.
//

import Foundation

class ItemDefinition: ItemProtocol, Identifiable, ObservableObject {
    let id = UUID()
    var type: ItemType
    var text: String
    @Published var children: [ItemDefinition] = []
    @Published var selected: Bool = false
    
    init(type: ItemType, text: String, children: [ItemDefinition] = [], selected: Bool = false) {
        self.type = type
        self.text = text
        self.children = children
        self.selected = selected
    }
    
    func remove(index: IndexSet) -> Void {
        self.children.remove(atOffsets: index)
    }
}
