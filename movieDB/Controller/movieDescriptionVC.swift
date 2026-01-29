//
//  movieDescriptionVC.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class movieDescriptionVC: UIViewController {
    //    MARK: Property
    var customImageView2: UIImageView?
    var movieTitle2: UILabel?
    var moviePopularityScore2: UILabel?
    var movieReleaseYear: UILabel?
    var movieRating: UILabel?
    var movieDescription: UILabel?
    var selectedMovie: movieModel?
    
    //  MARK: View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        movieTitle2 = UILabel()
        movieTitle2?.textAlignment = .center
        movieTitle2?.translatesAutoresizingMaskIntoConstraints = false
        moviePopularityScore2 = UILabel()
        moviePopularityScore2?.translatesAutoresizingMaskIntoConstraints = false
        movieReleaseYear = UILabel()
        movieReleaseYear?.translatesAutoresizingMaskIntoConstraints = false
        movieRating = UILabel()
        movieRating?.translatesAutoresizingMaskIntoConstraints = false
        movieDescription = UILabel()
        movieDescription?.translatesAutoresizingMaskIntoConstraints = false
        customImageView2 = UIImageView()
        customImageView2?.translatesAutoresizingMaskIntoConstraints = false
        
        //  MARK: Adding Subviews and Constraints
        if let movieTitle2 = movieTitle2, let moviePopularityScore2 = moviePopularityScore2, let movieReleaseYear = movieReleaseYear, let customImageView2 = customImageView2, let movieDescription = movieDescription, let movieRating = movieRating{
            view.addSubview(movieTitle2)
            view.addSubview(moviePopularityScore2)
            view.addSubview(movieReleaseYear)
            view.addSubview(customImageView2)
            view.addSubview(movieRating)
            view.addSubview(movieDescription)
            
            NSLayoutConstraint.activate([
                customImageView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                customImageView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
                customImageView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                
                customImageView2.widthAnchor.constraint(equalToConstant: 100),
                customImageView2.heightAnchor.constraint(equalToConstant: 200),
                
                movieTitle2.topAnchor.constraint(equalTo: customImageView2.bottomAnchor, constant: 20),
                movieTitle2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                movieTitle2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                moviePopularityScore2.topAnchor.constraint(equalTo: movieTitle2.bottomAnchor, constant: 10),
                moviePopularityScore2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                moviePopularityScore2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                movieReleaseYear.topAnchor.constraint(equalTo: moviePopularityScore2.bottomAnchor, constant: 10),
                movieReleaseYear.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                movieReleaseYear.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                movieRating.topAnchor.constraint(equalTo: movieReleaseYear.bottomAnchor, constant: 10),
                movieRating.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                movieRating.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                movieDescription.topAnchor.constraint(equalTo: movieRating.bottomAnchor, constant: 10),
                movieDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                movieDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                
                
                
            ])
            
        }
        
        
        
        //adding values to the properties
        movieTitle2?.text = selectedMovie?.title
        moviePopularityScore2?.text = "Popularity Score: \(selectedMovie?.score ?? 0)"
        movieReleaseYear?.text = "Release Year: \(selectedMovie?.year ?? 0)"
        customImageView2?.image = UIImage(named: selectedMovie?.imageView ?? "")
        movieRating?.text = "Rating: \(selectedMovie?.rating ?? "0")"
        movieDescription?.text = selectedMovie?.description
    }
    
}


