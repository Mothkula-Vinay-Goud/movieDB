
//  ViewController 2.swift
//  movieDB
//
//  Created by Vinay Goud Mothkula on 2/3/26.
//
import UIKit

class ViewController: UIViewController {

    private let viewModel = MovieListViewModel()
    private var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Movies"
        view.backgroundColor = .white
        setupTableView()
    }

    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MovieFirstPageCell.self,
                           forCellReuseIdentifier: "MovieFirstPageCell")

        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(
            withIdentifier: "MovieFirstPageCell",
            for: indexPath
        ) as! MovieFirstPageCell

        let movie = viewModel.movie(at: indexPath.row)
        cell.configure(with: movie)
        return cell
    }
}
extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {

        let movie = viewModel.movie(at: indexPath.row)
        let detailVM = MovieDetailViewModel(movie: movie)
        let detailVC = MovieDescriptionVC(viewModel: detailVM)

        navigationController?.pushViewController(detailVC, animated: true)
    }
}
