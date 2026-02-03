//
//  MovieViewModel.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 2/3/26.
//
import UIKit
import Foundation
class MovieListViewModel {

    private(set) var movies: [MovieModel] = []

    init() {
        loadMockData()
    }

    func numberOfRows() -> Int {
        movies.count
    }

    func movie(at index: Int) -> MovieModel {
        movies[index]
    }

    private func loadMockData() {
        movies = [
            MovieModel(
                title: "Ad Astra",
                score: 176.614,
                year: 2019,
                imageView: "adastra",
                rating: "5.0",
                description: "A group of astronauts on a mission..."
            ),
            MovieModel(
                title: "Hamilton",
                score: 143.114,
                year: 2020,
                imageView: "hamilton",
                rating: "4.8",
                description: "The true story of Alexander Hamilton..."
            ),
            MovieModel(
                title: "Zathura",
                score: 143.114,
                year: 2020,
                imageView: "zathura",
                rating: "4.7",
                description: "A young girl discovers a hidden world..."
            )
        ]
    }
}
