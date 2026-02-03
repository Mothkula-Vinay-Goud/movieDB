//
//  MovieDetailViewModel.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 2/3/26.
//
import UIKit
import Foundation
 class MovieDetailViewModel {

    private let movie: MovieModel

    init(movie: MovieModel) {
        self.movie = movie
    }

    var titleText: String { movie.title }
    var popularityText: String { "Popularity Score: \(movie.score)" }
    var yearText: String { "Release Year: \(movie.year)" }
    var ratingText: String { "Rating: \(movie.rating)" }
    var descriptionText: String { movie.description }
    var imageName: String { movie.imageView }
}
