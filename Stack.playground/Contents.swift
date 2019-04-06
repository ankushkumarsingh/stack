import Foundation
class Stack<T> {
  
  var stackArray = [T]()
  
  func push(element : T) {
    self.stackArray.append(element)
  }
  
  func pop() {
    if !stackArray.isEmpty{
      stackArray.removeLast()
    }
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
    stackArray.forEach({ (e) in
      print("e\(e)")
    })    
  }
}


let stack = Stack<Int>()
stack.push(element: 1)
stack.push(element: 2)

stack.printStack()
