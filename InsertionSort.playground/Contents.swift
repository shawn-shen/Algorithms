import UIKit

let arrayNumber = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
let arrayAlphabet = [ "b", "a", "x", "s", "d", "f", "c", "e" ]

insertionSort(a: arrayNumber, order: .ascending)
insertionSort(a: arrayNumber, order: .descending)
insertionSort(a: arrayAlphabet, order: .ascending)
insertionSort(a: arrayAlphabet, order: .descending)

func insertionSort<T: Comparable>(a: [T], order: SortOrder) -> [T] {
    func sort(a: T, b: T, order: SortOrder) -> Bool {
        switch order {
        case .ascending:
            return a >= b
        case .descending:
            return a <= b
        }
    }
    
    var array = a
    for i in stride(from: 1, through: array.count - 1, by: 1) {
        for j in stride(from: i - 1, through: 0, by: -1) {
            if sort(a: array[j], b: array[i], order: order) {
                if j == 0 || sort(a: array[i], b: array[j - 1], order: order) {
                    let current = array[i]
                    array.remove(at: i)
                    array.insert(current, at: j)
                }
            }
        }
    }
    return array
}

enum SortOrder {
    case ascending
    case descending
}
