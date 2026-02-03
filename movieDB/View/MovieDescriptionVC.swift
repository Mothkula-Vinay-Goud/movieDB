import UIKit

class MovieDescriptionVC: UIViewController {

    // MARK: - ViewModel
    private let viewModel: MovieDetailViewModel

    // MARK: - UI Elements
    private let customImageView2 = UIImageView()
    private let movieTitle2 = UILabel()
    private let moviePopularityScore2 = UILabel()
    private let movieReleaseYear = UILabel()
    private let movieRating = UILabel()
    private let movieDescription = UILabel()

    // MARK: - Initializer
    init(viewModel: MovieDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("Storyboard is not supported")
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupConstraints()
        configureData()
    }

    // MARK: - Setup UI
    private func setupUI() {
        customImageView2.contentMode = .scaleAspectFit

        movieTitle2.textAlignment = .center
        movieTitle2.font = .boldSystemFont(ofSize: 20)

        moviePopularityScore2.textAlignment = .center
        movieReleaseYear.textAlignment = .center
        movieRating.textAlignment = .center

        movieDescription.textAlignment = .center
        movieDescription.numberOfLines = 0

        [
            customImageView2,
            movieTitle2,
            movieDescription,
            moviePopularityScore2,
            movieReleaseYear,
            movieRating
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }

    // MARK: - Constraints
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            customImageView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            customImageView2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customImageView2.widthAnchor.constraint(equalToConstant: 150),
            customImageView2.heightAnchor.constraint(equalToConstant: 200),

            movieTitle2.topAnchor.constraint(equalTo: customImageView2.bottomAnchor, constant: 15),
            movieTitle2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieTitle2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            movieDescription.topAnchor.constraint(equalTo: movieTitle2.bottomAnchor, constant: 20),
            movieDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            moviePopularityScore2.topAnchor.constraint(equalTo: movieDescription.bottomAnchor, constant: 20),
            moviePopularityScore2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            moviePopularityScore2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            movieReleaseYear.topAnchor.constraint(equalTo: moviePopularityScore2.bottomAnchor, constant: 20),
            movieReleaseYear.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieReleaseYear.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            movieRating.topAnchor.constraint(equalTo: movieReleaseYear.bottomAnchor, constant: 20),
            movieRating.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            movieRating.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    // MARK: - Bind ViewModel
    private func configureData() {
        movieTitle2.text = viewModel.titleText
        moviePopularityScore2.text = viewModel.popularityText
        movieReleaseYear.text = viewModel.yearText
        movieRating.text = viewModel.ratingText
        movieDescription.text = viewModel.descriptionText
        customImageView2.image = UIImage(named: viewModel.imageName)
    }
}



