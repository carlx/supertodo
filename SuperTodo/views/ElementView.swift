//
//  ElementView.swift
//  NightWatch
//
//  Created by Karol Wawrzecki on 10/04/2022.
//

import SwiftUI

struct ElementView: View {
    @ObservedObject var item: ItemDefinition
    @Binding var focus: Bool

    
    var body: some View {
        if item.type == ItemType.Section {
            Section(header: Text(item.text)) {
                ForEach(item.children.filter {
                    element in focus ? element.selected == false : true
                }) {
                    child in ElementView(item: child, focus: $focus)
                }.onDelete {
                    IndexSet in item.remove(index: IndexSet)
                }
            }
            .font(.title)
            .foregroundColor(Color("Section"))
        }
        else {
            HStack {
                Image(systemName: item.selected ? "heart.fill" : "heart")
                NavigationLink(
                    item.text,
                    destination: HStack {
                        Button("Mark as checked", action: {
                            item.selected = !item.selected
                        })
                        Text(item.text)
                    }
                )
            }
        }
    }
}

//struct ElementView_Previews: PreviewProvider {
//    static var previews: some View {
//        ElementView(listViewItem:
//            ItemDefinition(text: "Hej", type: ItemType.Section)
//        )
//    }
//}
