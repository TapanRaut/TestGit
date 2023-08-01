//
//  HomeTableViewCell.swift
//  TestGit
//
//  Created by Tapan Raut on 01/08/23.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    static var identifier: String{
        get{
            return "identifier"
        }
    }
    
    static func register() -> UINib {
        UINib(nibName: "HomeTableViewCell", bundle: nil)
    }
    
//    var titleLabel: String{
//        didSet{
//            
//        }
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
    
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
