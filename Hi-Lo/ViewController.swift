import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  
  var score = 0
  var target = 0
  var newTarget = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    reset()
  }
  
  
  @IBAction func guessHigher(_ sender: Any) {
    newTarget = Int.random(in: 0...100)
    
    if newTarget > target {
      correct()
    } else {
      wrong()
    }
  }
  
  @IBAction func guessLower(_ sender: Any) {
    newTarget = Int.random(in: 0...100)
    
    if newTarget < target {
      correct()
    } else {
      wrong()
    }
  }

  func reset() {
    score = 0
    target = 0
    newTarget = 0
    targetLabel.text = "\(target)"
    scoreLabel.text = "\(score)"
  }
  
  
  func correct() {
    score += 1
    scoreLabel.text = "\(score)"
    target = newTarget
    targetLabel.text = "\(target)"
  }
  
  func wrong() {
    reset()
  }

}

