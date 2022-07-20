//
//  MovieTableViewController.swift
//  SearchMedia
//
//  Created by Carki on 2022/07/20.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var MovieList = MoiveInfo()
    let movieTitle = ["7번방의선물", "겨울왕국2", "광해", "괴물","국제시장", "극한직업", "도둑들",  "명량"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
    }

    //섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieList.movie.count
    }
    
    
    //셀 연동
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        
        let data = MovieList.movie[indexPath.row]
        cell.configureCell(data: data)
        
        cell.movieImage.image = UIImage(named: movieTitle[indexPath.row])

        
        return cell
    }
}
