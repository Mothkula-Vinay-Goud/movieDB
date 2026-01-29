//
//  movieModel.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import Foundation

struct movieModel{
    var title:String
    var score: Double
    var year: Int
    var imageView: String
    
    static func MockData() -> [movieModel] {
        var allMoviesData: [movieModel] = []
        allMoviesData.append(movieModel(title: "Ad Astra", score: 176.614, year: 2019, imageView: "adastra"))
        allMoviesData.append(movieModel(title: "Hamilton", score: 143.114, year: 2020, imageView: "hamilton"))
        allMoviesData.append(movieModel(title: "Zathura", score: 143.114, year: 2020, imageView: "zathura"))
        allMoviesData.append(movieModel(title: "Eurovision", score: 143.114, year: 2020, imageView: "eurovision"))
        return allMoviesData
    }
}




