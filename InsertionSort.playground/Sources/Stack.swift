import Foundation

struct Stack<T> {
    fileprivate var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop()-> T? {
        return array.popLast()
    }
    
    var top: T? {
        return array.last
    }
}
