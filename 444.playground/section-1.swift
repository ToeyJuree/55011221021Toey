import UIKit

class ViewController: UIViewController,UITableViewDelegate{
    let tipCalc = TipCalculatorModel (total: 33.25, taxPct: 0.06)
    
    func refreshUI () {
        toTalTextField.text = String(format: "%0.2f",tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var toTalTextField: UITextField!
    
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    @IBAction func CalculateTapped(sender: AnyObject) {
        tipCalc.total = Double((toTalTextField.text as NSString).doubleValue)
        possibleTips = tipCalc.returnPossibleTips()
        sortedKeys = sorted(Array(possibleTips.keys))
        TableView.reloadData()
        
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        toTalTextField.resignFirstResponder()
    }
    
    
    @IBOutlet weak var TableView: UITableView!
    let tipcalc = TipCalculatorModel(total:33.25 ,taxPct:0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double,total:Double)>()
    var sortedKeys:[Int]=[]
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section : Int) -> Int {
        return sortedKeys.count
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!)->Int{
        return 1
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }
    func tableView(tableView:UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!)-> UITableViewCell!{
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%:"
        cell.detailTextLabel!.text = String(format:"Tip: $%0.2f, Total: $%0.2f", tipAmt,total)
        return cell
    }
    
}