/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet var rayStarterButton: UIButton!
  
  @IBOutlet var rayLeading: NSLayoutConstraint!
  
  
  
  @IBOutlet var widerImageBrad: NSLayoutConstraint!
   
  @IBOutlet var skinnyWidth: NSLayoutConstraint!
  var skinny = false
  
  @IBOutlet var dennisNormalWidth: NSLayoutConstraint!
  
  
  @IBOutlet var dennisWiderWidth: NSLayoutConstraint!
 
  @IBAction func animateConstraintWasPressed(_ sender: Any) {
    UIView.animate(withDuration: 1.0,animations: {
     self.rayLeading.constant = 0
        
       self.skinny = !self.skinny
       if (self.skinny){
//          self.view.removeConstraint(self.widerImageBrad)
//          self.view.addConstraint(self.skinnyWidth)
//
//          self.view.removeConstraint(self.dennisNormalWidth)
//          self.view.addConstraint(self.dennisWiderWidth)
              
        self.view.removeConstraints([self.widerImageBrad, self.dennisNormalWidth])
        self.view.addConstraints([self.skinnyWidth, self.dennisWiderWidth])
     }
              else{
//                self.view.removeConstraint(self.skinnyWidth)
//                self.view.addConstraint(self.widerImageBrad)
//                self.view.removeConstraint(self.dennisWiderWidth)
//                self.view.addConstraint(self.dennisNormalWidth)
                
                self.view.removeConstraints([self.skinnyWidth, self.dennisWiderWidth])
                self.view.addConstraints([self.widerImageBrad, self.dennisNormalWidth])
      }
      self.view.layoutIfNeeded()
     })
     
      
    
  }
  
 
  
  
  
}
