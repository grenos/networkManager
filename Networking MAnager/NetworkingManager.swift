//
//  NetworkingManager.swift
//  Networking MAnager
//
//  Created by Vasileios Gkreen on 22/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import Foundation


class NetworkingManager : ObservableObject {
    
    // use the paranthesis to init the array
    // @Published will publish the data to all the swiftUI classes that listen for changes in var dataList
    @Published var dataList = [DataListEntry]()
    
    init(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
            else { return }
        
        URLSession.shared.dataTask(with: url){
            (data, _, _) in
            guard let data = data else { return }
            
            let dataResponse = try! JSONDecoder().decode([DataListEntry].self, from: data)
            
            
            DispatchQueue.main.async {
                self.dataList = dataResponse
                
                print(self.dataList)
            }
            
        }.resume()
    }
    
}
