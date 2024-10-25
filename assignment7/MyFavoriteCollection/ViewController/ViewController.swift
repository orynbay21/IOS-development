import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    
    var movies: [Movie] = [
        Movie(title: "Dune 1", year: "2021", genre: "Sci-Fi", imageName: "dune1"),
        Movie(title: "Dune 2", year: "2023", genre: "Sci-Fi", imageName: "dune2"),
        Movie(title: "Ad Astra", year: "2019", genre: "Sci-Fi", imageName: "adastra"),
        Movie(title: "Interstellar", year: "2014", genre: "Sci-Fi", imageName: "interstellar"),
        Movie(title: "The Day After Tomorrow", year: "2004", genre: "Action", imageName: "thedayafter"),
        Movie(title: "Time Out", year: "2011", genre: "Thriller", imageName: "timeout"),
        Movie(title: "The Martian", year: "2015", genre: "Sci-Fi", imageName: "themartian"),
        Movie(title: "The Hunger Games 1", year: "2012", genre: "Action", imageName: "thehungergames"),
        Movie(title: "The Hunger Games 2", year: "2013", genre: "Action", imageName: "thehungergames2"),
        Movie(title: "Jurassic World", year: "2015", genre: "Adventure", imageName: "thejurassicworld")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Favorite Movies"
        view.backgroundColor = .white

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MovieTableViewCell.self, forCellReuseIdentifier: "MovieCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    // MARK: - UITableView DataSource and Delegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
