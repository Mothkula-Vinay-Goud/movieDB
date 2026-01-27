//
//  moviefirstPageCell.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class moviefirstPageCell: UITableViewCell {

    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var moviePopularityScore: UILabel!
    @IBOutlet weak var movieReleaseYear: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(movieModel:movieModel){
        movieTitle.text = "Title : \(movieModel.title)"
        moviePopularityScore.text = "Popularity Score : \(movieModel.score)"
       movieReleaseYear.text =   "Release Year : \(movieModel.year)"
        customImageView.image = UIImage(named: movieModel.imageView)
        
    }
    

}
