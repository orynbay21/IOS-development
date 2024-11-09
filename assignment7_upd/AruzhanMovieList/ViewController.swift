import UIKit

struct Movie {
    let cover: UIImage?
    let title: String
    let year: String
    let genre: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let movies: [Movie] = [
        Movie(cover: UIImage(named: "adastra.jpg"), title: "Ad Astra", year: "1999", genre: "sci-fi"),
        Movie(cover: UIImage(named: "dune1.jpg"), title: "Dune 1", year: "2021", genre: "sci-fi"),
        Movie(cover: UIImage(named: "dune2.jpg"), title: "Dune 2", year: "2023", genre: "sci-fi"),
        Movie(cover: UIImage(named: "interstellar.jpg"), title: "Interstellar", year: "2014", genre: "sci-fi"),
        Movie(cover: UIImage(named: "thedayafter.jpg"), title: "The day after tomorrow", year: "2004", genre: "apocalypse"),
        Movie(cover: UIImage(named: "thehungergames.jpg"), title: "The hunger Games", year: "2011", genre: "comedy"),
        Movie(cover: UIImage(named: "thehungergames2.jpg"), title: "The hunger games 2", year: "2013", genre: "family"),
        Movie(cover: UIImage(named: "thejurassicworld.jpg"), title: "The jurassic World", year: "2015", genre: "adventure"),
        Movie(cover: UIImage(named: "themartian.jpg"), title: "The martian", year: "1996", genre: "sci-fi"),
        Movie(cover: UIImage(named: "timeout.jpg"), title: "Timeout", year: "2011", genre: "thriller"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Started")
        tableView.rowHeight = 170
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCellTableViewCell
        let movie = movies[indexPath.row]
        
        // Check if movie has a valid cover image before configuring
        if let coverImage = movie.cover {
            cell.configure(with: movie)
        } else {
            // Handle missing cover image if necessary
            print("Missing cover image for \(movie.title)")
        }
        
        return cell
    }
}

