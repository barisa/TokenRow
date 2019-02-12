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
    required public init(tag: String?) {
        super.init(tag: tag)
    }
    
    override func addToken(_ token: T) {
        super.addToken(token)
        cell.tokenView.textField.textColor = UIColor.orange
        cell.tokenView.fieldColor = UIColor.red
        cell.tokenView.tintColor = UIColor.black
    }
}
