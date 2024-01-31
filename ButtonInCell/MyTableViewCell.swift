//
//  MyTableViewCell.swift
//  ButtonInCell
//
//  Created by Karumuri Sujay on 25.12.2023.
//

import UIKit
protocol MyTableViewCellDelegate: AnyObject {
    func didTap(title: String)
}

class MyTableViewCell: UITableViewCell {
    static let identifier = "MyTableViewCell"
    var delegate: MyTableViewCellDelegate? = nil
    var title: String?
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet var button: UIButton!
    @IBAction func didTap() {
        delegate?.didTap(title: self.title!)
    }
    
    func configure(title: String) {
        self.title = title
        button.setTitle(title, for: .normal)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        button.setTitleColor(.label, for: .normal)
    }
}
