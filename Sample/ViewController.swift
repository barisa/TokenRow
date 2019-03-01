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
        return BodyController()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        form +++ Section("Example")
            <<< CustomTokenTableRow<BodyPart>() {
                $0.tag = "symbols"
                $0.placeholder = "Choose"
                $0.options = controller.data()
                $0.appendTokens(self.controller.existing())
                }.onChange({ (row) in
                    debugPrint("onChange")
                }).onAccessoryView({ (row) in
                    debugPrint("onAccessoryView")         
                    row.appendTokens(self.controller.existing())
                }).onCellHighlightChanged({ (cell, row) in
                    debugPrint("onCellHighlightChanged")
                }).cellSetup({ (cell, row) in
                    debugPrint("cellSetup")
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
            <<< ButtonRow {
                $0.title = "Test"
                $0.onCellSelection({ (cell, row) in
                    debugPrint("test")
                    self.form.validate()
                })
            }
        
    }
}
