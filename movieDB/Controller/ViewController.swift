//
//  ViewController.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 1/26/26.
//

import UIKit

class ViewController: UIViewController {
//    MARK: Property
    var firstTableView: UITableView?
    var allMoviesData: [movieModel] = []
    
    //  MARK: View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        firstTableView = UITableView()
        firstTableView?.dataSource = self
        firstTableView?.delegate = self
        firstTableView?.translatesAutoresizingMaskIntoConstraints = false
        firstTableView?.register(MovieFirstPageCell.self, forCellReuseIdentifier: "MovieFirstPageCell")
        
        //get mockdata
        allMoviesData = movieModel.MockData()
        addSubviewsConstraints()
    }
    //  MARK: Adding Subviews and Constraints
    func addSubviewsConstraints(){
        if let firstTableView = firstTableView {
            view.addSubview(firstTableView)
            NSLayoutConstraint.activate([
                firstTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                firstTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                firstTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                firstTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
                
                ])
        }
        
    }
}
//  MARK: Delegate Methods
extension ViewController: UITableViewDelegate {

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedMovie = allMoviesData[indexPath.row]

//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let detailVC = storyboard.instantiateViewController(
//            withIdentifier: "movieDescriptionVC"
//        ) as! movieDescriptionVC
         let detailVC = MovieDescriptionVC()
            
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieFirstPageCell", for: indexPath) as! MovieFirstPageCell
        cell.setData(movieModel: allMoviesData[indexPath.row])
        
//        let movie = allMoviesData[indexPath.row]
//        cell.movieTitle.text = "Title : \(movie.title)"
//        cell.moviePopularityScore.text = "Popularity Score : \(movie.score)"
//        cell.movieReleaseYear.text =   "Release Year : \(movie.year)"
//        cell.customImageView.image = UIImage(named: movie.imageView)
        
        return cell
    }
}

