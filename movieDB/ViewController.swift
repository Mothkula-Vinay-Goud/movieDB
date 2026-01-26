//
//  ViewController.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstPageTableView: UITableView!
    var allMoviesData: [movieModel] = [
        movieModel(
            title: "Ad Astra",
            score: 176.614,
            year: 2019,
            imageView: "adastra"
        ),
        movieModel(
            title: "Hamilton",
            score: 143.114,
            year: 2020,
            imageView: "hamilton"
        ),
        movieModel(
            title: "Zathura",
            score: 143.114,
            year: 2020,
            imageView: "zathura"
        ),
        movieModel(
            title: "Eurovision",
            score: 143.114,
            year: 2020,
            imageView: "adastra"
        )
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstPageTableView.dataSource = self
        firstPageTableView.delegate = self
    }
}

       

extension ViewController: UITableViewDelegate {

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedMovie = allMoviesData[indexPath.row]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(
        withIdentifier: "movieDescriptionVC"
        ) as! movieDescriptionVC

        // Send data
        detailVC.selectedMovie = selectedMovie

        // Navigate
        self.navigationController?.pushViewController(detailVC, animated: true)
        }
}

extension  ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMoviesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moviefirstPageCell", for: indexPath) as! moviefirstPageCell
        
        let movie = allMoviesData[indexPath.row]
        
        cell.movieTitle.text = "Title : \(movie.title)"
        cell.moviePopularityScore.text = "Popularity Score : \(movie.score)"
        cell.movieReleaseYear.text =   "Release Year : \(movie.year)"
        cell.customImageView.image = UIImage(named: movie.imageView)
        return cell
    }
}

