//
//  ItemModel.swift
//  EnvirontmentView
//
//  Created by Ariq Hikari on 18/11/23.
//  Copyright © 2023 Banyu Center. All rights reserved.
//

import Foundation
import Combine

class ItemModel: ObservableObject {
  @Published var newTitle: String = ""
  @Published var items: [Item] = []
  
  func onAdd(title: String) {
    items.append(Item(title: title))
    self.newTitle = ""
  }
  
  func onDelete(offset: IndexSet) {
    items.remove(atOffsets: offset)
  }
  
  func onMove(source: IndexSet, destination: Int) {
    items.move(fromOffsets: source, toOffset: destination)
  }
  
  func onUpdate(index: Int, title: String) {
    items[index].title = title
  }
}
