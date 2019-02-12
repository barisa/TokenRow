//
//  ViewController.swift
//  Sample
//
//  Created by Alex Nolasco on 2/11/19.
//

import Eureka
import TokenRow

class ViewController: FormViewController {

    private lazy var controller = {
        return Controller()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        form +++ Section("Example")
            <<< CustomTokenTableRow<Stock>() {
                $0.tag = "symbols"
                $0.placeholder = "Choose"
                $0.options = controller.data()
                $0.appendTokens(self.controller.existing())        
                }.onChange({ (row) in
                    debugPrint("changed")
                }).onCellHighlightChanged({ (cell, row) in
                    debugPrint("left/entered")
                })
            +++ Section("Section2")
            <<< ActionSheetRow<String>() {
                $0.title = "ActionSheetRow"
                $0.selectorTitle = "Pick a number"
                $0.options = ["One","Two","Three"]
                $0.value = "Two"    // initially selected
                }.cellSetup({ (cell, row) in
                    debugPrint("test")
                })
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
        
    }
}
