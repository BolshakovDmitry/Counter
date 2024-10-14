import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var textView: UITextView!
    
    private var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        textView.text = "История изменений:"
    }
    
    private func getCurrentTime() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        let formattedDate = dateFormatter.string(from: currentDate)
        return String(formattedDate)
    }
    
    @IBAction private func minusButtonTapped(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            label.text = String(counter)
            textView.text = textView.text + "\nЗначение счётчика: \(getCurrentTime()) изменено на -1"
        } else if counter == 0 {
            textView.text = textView.text + "\n\(getCurrentTime()) попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction private func plusButtonTapped(_ sender: Any) {
        counter += 1
        label.text = String(counter)
        textView.text = textView.text + "\nЗначение счётчика: \(getCurrentTime()) изменено на +1"
    }
    
    @IBAction private func resetButtonTapped(_ sender: Any) {
        counter = 0
        label.text = "0"
        textView.text = textView.text + "\n\(getCurrentTime()) значение сброшено"
    }
}
