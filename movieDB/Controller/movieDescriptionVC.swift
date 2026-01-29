//
//  movieDescriptionVC.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class movieDescriptionVC: UIViewController {
    
    var customImageView2: UIImageView?
    var movieTitle2: UILabel?
     var moviePopularityScore2: UILabel?
     var movieReleaseYear: UILabel?
    
    var selectedMovie: movieModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        movieTitle2 = UILabel()
        movieTitle2?.translatesAutoresizingMaskIntoConstraints = false
        moviePopularityScore2 = UILabel()
        moviePopularityScore2?.translatesAutoresizingMaskIntoConstraints = false
        movieReleaseYear = UILabel()
        movieReleaseYear?.translatesAutoresizingMaskIntoConstraints = false
        customImageView2 = UIImageView()
        customImageView2?.translatesAutoresizingMaskIntoConstraints = false
        
        if let movieTitle2 = movieTitle2, let moviePopularityScore2 = moviePopularityScore2, let movieReleaseYear = movieReleaseYear, let customImageView2 = customImageView2 {
            view.addSubview(movieTitle2)
            view.addSubview(moviePopularityScore2)
            view.addSubview(movieReleaseYear)
            view.addSubview(customImageView2)
            
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
                
                
            ])
            
        }
        
        // Do any additional setup after loading the view.
        
        
        movieTitle2?.text = selectedMovie?.title
        moviePopularityScore2?.text = "Popularity Score: \(selectedMovie?.score ?? 0)"
        movieReleaseYear?.text = "Release Year: \(selectedMovie?.year ?? 0)"
        customImageView2?.image = UIImage(named: selectedMovie?.imageView ?? "")
    }
    
}


