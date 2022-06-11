//
//  JSONParsingVM.swift
//  SwiftUI JSON Parsing
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//

import SwiftUI


class JSONParsingVM: ObservableObject {
    
    @Published var mainData : [Order] = []
    @Published var nextScreen: Bool = false
    
    init() {
        fetch()
    }

    func fetch(){
        guard let url = URL(string: "http://netvia.r-y-x.net/api/v1/Get/Customer/active/request?CustomerId=34") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data, error == nil else {return}
            
            do {
                let dataArray = try JSONDecoder().decode(MainData.self, from: data)
                
                DispatchQueue.main.async {
                    self.mainData = dataArray.data.data
                    print(self.mainData)
                }
            }catch {
                print(error)
            }
        }
        task.resume()
    }
}

