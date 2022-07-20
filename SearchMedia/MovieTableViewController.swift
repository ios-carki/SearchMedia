//
//  MovieTableViewController.swift
//  SearchMedia
//
//  Created by Carki on 2022/07/20.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var MovieList: [String?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
    }

    //섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieList.count
    }
    
    
    //셀 연동
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        
        cell.titleLabel.text = MovieList[indexPath.row]
        print("!@#@$@#^%#$^&#$&^%&%&#%^&#&#%^&#%^")
        cell.openingLabel.text = "2015.2.4"
        cell.storyLabel.text = "가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아"

        
        return cell
    }
}
