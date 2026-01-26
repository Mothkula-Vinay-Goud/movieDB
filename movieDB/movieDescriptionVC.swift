//
//  movieDescriptionVC.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class movieDescriptionVC: UIViewController {
    
    @IBOutlet weak var customImageView2: UIImageView!
    @IBOutlet weak var movieTitle2: UILabel!
    @IBOutlet weak var moviePopularityScore2: UILabel!
    @IBOutlet weak var movieReleaseYear: UILabel!
    var selectedMovie: movieModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        movieTitle2.text = selectedMovie?.title
        moviePopularityScore2.text = "Popularity Score: \(selectedMovie?.score ?? 0)"
        movieReleaseYear.text = "Release Year: \(selectedMovie?.year ?? 0)"
        customImageView2.image = UIImage(named: selectedMovie?.imageView ?? "")
    }
}
