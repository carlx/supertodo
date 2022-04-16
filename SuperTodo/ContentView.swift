//
//  ContentView.swift
//  SuperTodo
//
//  Created by Karol Wawrzecki on 13/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var list: ItemDefinitionList = ItemDefinitionList(list: mockItems)
    @State var focus: Bool = false
    
    var body: some View {
        ListOfItemsView(items: list, focus: $focus)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
