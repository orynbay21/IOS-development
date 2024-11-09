
import UIKit

class ViewController: UIViewController {

    private var movies: [Movie] = [
        Movie(
            title: "Ad-Astra",
            description: "Brad Pitt is sad emo boy astronaut and his dad dont like him",
            image: .adastra
        ),
        Movie(
            title: "The hunger games",
            description: "wow peeta melark so pretty",
            image: .thehungergames
        ),
        Movie(
            title: "The hunger games 2",
            description: "wow peeta melark so pretty",
            image: .thehungergames2
        ),
        Movie(
            title: "Dune 1",
            description: "Paul is in love with Zendaya",
            image: .dune1
        ),
        Movie(
            title: "Dune 2",
            description: "Paul is a bad bad bad guy",
            image: .dune2
        ),
        Movie(
            title: "Interstellar",
            description: " the dad leaves his daughter stranded ",
            image: .interstellar
        ),
        Movie(
            title: "The day after",
            description: " what even was this movie",
            image: .thedayafter
        ),
        Movie(
            title: "The Martian",
            description: "Cute nerdy guy",
            image:.themartian
        ),
        Movie(
            title: "The Jurassic World",
            description: "Chris Pratt so pretty",
            image: .thejurassicworld
        ),
        Movie(
            title: "Timeout",
            description: "Justin Timberlake should be in more movies",
            image:.timeout
        )
    ]
    @IBOutlet private weak var tableView: UITableView!

    private var selectedMovie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? SecondViewController else {
            return
        }
        destVC.configure(with: selectedMovie)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = movies[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "primaryCell", for: indexPath) as! PrimaryTableViewCell
        let currentModel = movies[indexPath.row]
        cell.configure(currentModel)
        return cell
    }
}
