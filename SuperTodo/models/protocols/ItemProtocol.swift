//
//  ItemProtocol.swift
//  NightWatch
//
//  Created by Karol Wawrzecki on 10/04/2022.
//

protocol ItemProtocol {
    var text: String { get set }
    var type: ItemType { get set }
    var selected: Bool { get set }
}
