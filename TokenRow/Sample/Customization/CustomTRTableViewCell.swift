//
//  CustomTRTableViewCell.swift
//  Sample
//
//  Created by Alex Nolasco on 2/11/19.
//

import Foundation
import TokenRow

/// Default cell for the table of the TokenTableCell
class CustomTRTableViewCell<Token: TokenSearchable>: UITableViewCell, EurekaTokenTableViewCell {
    public typealias T = Token
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    func initialize() {
        textLabel?.font = UIFont.systemFont(ofSize: 17)
        textLabel?.minimumScaleFactor = 0.8
        textLabel?.adjustsFontSizeToFitWidth = true
    }
    
    open func setupForToken(_ token: T) {
        textLabel?.text = token.longDisplayString
    }
}

