//
//  MockItems.swift
//  NightWatch
//
//  Created by Karol Wawrzecki on 10/04/2022.
//

import Foundation

let mockItems: [ItemDefinition] = [
    ItemDefinition(type: ItemType.Section, text: "Section 1", children: [
        ItemDefinition(type: ItemType.Item, text: "Item 1")
    ]),
    ItemDefinition(type: ItemType.Section, text: "Section 2", children: [
        ItemDefinition(type: ItemType.Item, text: "Item 2"),
        ItemDefinition(type: ItemType.Item, text: "Item 2", selected: true)
    ]),
    ItemDefinition(type: ItemType.Section, text: "Section 3", children: [
        ItemDefinition(type: ItemType.Item, text: "Item 3")
    ])
]
