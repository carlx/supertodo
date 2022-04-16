//
//  ListOfItemsView.swift
//  NightWatch
//
//  Created by Karol Wawrzecki on 10/04/2022.
//

import SwiftUI

struct ListOfItemsView: View {
    @ObservedObject var items: ItemDefinitionList
    @Binding var focus: Bool
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(items.list) {
                    section in ElementView(item: section, focus: $focus)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focus) {
                        Text("Focus mode")
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

//struct ListOfItemsView_Previews: PreviewProvider {
//    @State private var topItems: [ItemDefinition] = mockItems;
//
//    static var previews: some View {
//        ListOfItemsView(items: $topItems)
//    }
//}
