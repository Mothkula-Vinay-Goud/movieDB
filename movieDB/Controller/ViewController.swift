//
//  ViewController.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class ViewController: UIViewController {
//    MARK: Property
    @IBOutlet weak var firstPageTableView: UITableView!
    var allMoviesData: [movieModel] = []
    
    //  MARK: View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
        // Do any additional setup after loading the view.
        firstPageTableView.dataSource = self
        firstPageTableView.delegate = self
        
        //get mockdata
        allMoviesData = movieModel.MockData()
    }
    
    
}

       
//  MARK: Delegate Methods
extension ViewController: UITableViewDelegate {

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedMovie = allMoviesData[indexPath.row]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(
            withIdentifier: ViewControllerIdentifier.movieDescriptionVC.rawValue
        ) as! movieDescriptionVC

        // Send data
            
        detailVC.selectedMovie = selectedMovie

        // Navigate
        self.navigationController?.pushViewController(detailVC, animated: true)
        }
}

//  MARK: DataSouce Methods
extension  ViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0 {
//            return "Movies"
//        }
//       return ""
//    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMoviesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableCellIdentifier.moviefirstPageCell.rawValue, for: indexPath) as! moviefirstPageCell
        
        cell.setData(movieModel: allMoviesData[indexPath.row])
        
//        let movie = allMoviesData[indexPath.row]
//        cell.movieTitle.text = "Title : \(movie.title)"
//        cell.moviePopularityScore.text = "Popularity Score : \(movie.score)"
//        cell.movieReleaseYear.text =   "Release Year : \(movie.year)"
//        cell.customImageView.image = UIImage(named: movie.imageView)
        return cell
    }
}

