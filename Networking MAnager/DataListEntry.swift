//
//  DataListEntry.swift
//  Networking MAnager
//
//  Created by Vasileios Gkreen on 22/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import Foundation


//! data list entry will map our JSON payload with a SwiftUI object


// {
//   "userId": 1,
//   "id": 1,
//   "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//   "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
// }


struct DataListEntry : Decodable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
