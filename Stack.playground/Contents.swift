import Foundation
import Foundation
class Stack<T> {
  
  var stackArray = [T]()
  
  func push(element : T) {
    //    print("element\(element)")
    self.stackArray.append(element)
  }
  
  func pop() {
    stackArray.removeLast()
  }
  
  func top() -> T? {
    return stackArray.last
  }
  
  func isEmpty() -> Bool {
    if stackArray.isEmpty {
      return true
    }
    return false
  }
  
  func printStack(){
    print("inside")
    stackArray.forEach({ (e) in
      print("e\(e)")
    })    
  }
}


let stack = Stack<Int>()
stack.push(element: 1)
stack.push(element: 2)

stack.printStack()
