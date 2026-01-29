//
//  movieModel.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import Foundation

struct MovieModel{
    var title:String
    var score: Double
    var year: Int
    var imageView: String
    var rating : String
    var description: String
    
    static func MockData() -> [MovieModel] {
        var allMoviesData: [MovieModel] = []
        allMoviesData.append(MovieModel(title: "Ad Astra", score: 176.614, year: 2019, imageView: "adastra", rating: "5.0", description: "A group of astronauts on a mission to find a new habitable planet discover a long-lost civilization."))
        allMoviesData.append(MovieModel(title: "Hamilton", score: 143.114, year: 2020, imageView: "hamilton",rating: "4.8", description: "The true story of Alexander Hamilton, from his early days as a sickly but brilliant boy in New York City to his historic role as the Founding Father of the United States." ))
        allMoviesData.append(MovieModel(title: "Zathura", score: 143.114, year: 2020, imageView: "zathura", rating: "4.7", description: "A young girl discovers a hidden world of magic and adventure, where she is drawn into a battle for the fate of her people."))
        allMoviesData.append(MovieModel(title: "Eurovision", score: 143.114, year: 2020, imageView: "eurovision", rating: "4.5", description: "A group of teenagers embark on a road trip to the legendary Eurovision Song Contest, where they must compete in a singing competition against some of the world's greatest artists."))
        return allMoviesData
    }
}




