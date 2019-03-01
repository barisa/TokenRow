//
//  CustomTableRow.swift
//  Sample
//
//  Created by Alex Nolasco on 2/11/19.
//

import Eureka
import TokenRow
import CLTokenInputView

final class CustomTokenTableRow<T: TokenSearchable>: _TokenRow<T, TableTokenCell<T, CustomTRTableViewCell<T>>>, RowType {
    
    private var onAccessoryViewCallBack:((CustomTokenTableRow)->(Void))?
    
    lazy var accessoryViewButton: UIButton = {[weak self] in
        let button = UIButton(type: .contactAdd)
        button.addTarget(self, action: #selector(self?.accessoryViewButtonTouchedUp), for: .touchUpInside)
        
        return button
    }()

    func onAccessoryView(_ callback: @escaping(CustomTokenTableRow) -> Void) -> Self {
        onAccessoryViewCallBack = callback
        return self
    }
    
    @objc func accessoryViewButtonTouchedUp(sender: UIButton) {
        onAccessoryViewCallBack?(self)
    }
    
    required public init(tag: String?) {
        super.init(tag: tag)
        cell.customizeTableViewCell = {(t, c) in            
            c.textLabel?.numberOfLines = 0
        }
        cell.tokenView.accessoryView =  accessoryViewButton
        cell.tokenView.textField.textColor = .black
//        cell.tokenView.textField.textColor = UIColor.orange
//        cell.tokenView.fieldColor = UIColor.yellow
//        cell.tokenView.tintColor = UIColor.green
//        cell.tokenView.selectedBackgroundColor = UIColor.purple
    }
    
    override func addToken(_ token: T) {
        super.addToken(token)
    }
}
