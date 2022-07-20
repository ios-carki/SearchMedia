//
//  MovieTableViewCell.swift
//  SearchMedia
//
//  Created by Carki on 2022/07/20.
//

import UIKit

//enum movieEnumeration: CaseIterable {
//    case seven, winter, king, monster
//    case title1, title2, title3, title4
//    
//    var imageOfMovie: UIImage? {
//        switch self {
//        case .seven:
//            return UIImage(named: "7번방의선물")
//        case .winter:
//            return UIImage(named: "겨울왕국2")
//        case .king:
//            return UIImage(named: "광해")
//        case .monster:
//            return UIImage(named: "괴물")
//        default : break
//        }
//        
//    }
//    
//    var titleOfMovie: String? {
//        switch self {
//        case .title1:
//            return String("안녕하세요")
//        case .title2:
//            return String("저리가세요")
//        case .title3:
//            return String("어서오세요")
////        case .title4:
////            <#code#>
//        default : break
//        }
//    }
//}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var openingLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    
    func configureCell(data: Movie) {
        titleLabel.font = .boldSystemFont(ofSize: 15)
        
        //연결되는 이유
        titleLabel.text = data.title
        //여기까지
        
        openingLabel.text = "\(data.releaseDate) | \(data.country)"
        storyLabel.text = data.overView
        storyLabel.numberOfLines = 0
    }
    
}
