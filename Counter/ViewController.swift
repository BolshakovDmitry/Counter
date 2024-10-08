import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        textView.text = "История изменений:"
    }
    
    private var counter = 0

    @IBAction func minusButton(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            label.text = String(counter)
            textView.text = "Значение счётчика: \(getCurrentTime()) изменено на -1"
        } else if counter == 0 {
            textView.text = "\(getCurrentTime()) попытка уменьшить значение счётчика ниже 0"
        }
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        counter += 1
        label.text = String(counter)
        textView.text = "Значение счётчика: \(getCurrentTime()) изменено на +1"
    }
    
    @IBAction func resetButton(_ sender: Any) {
        counter = 0
        label.text = "0"
        textView.text = "\(getCurrentTime()) значение сброшено"
    }
    
    func getCurrentTime() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        let formattedDate = dateFormatter.string(from: currentDate)
        return String(formattedDate)
    }
    

   
    
}
