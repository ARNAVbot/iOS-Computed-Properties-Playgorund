import Foundation
//import UIKit

var pizzaInInches : Int = 8 {
    // setting an observable property
    // called when the value is abt to change
    willSet {
        // to access what value will be set
        print("new value = \(newValue)")
        // to access the old value do the following
        print("old value = \(pizzaInInches)")
    }
    // called when the value is set
    didSet {
        // to access the old value
        print("old value = \(oldValue)")
        // to access the newly set value
        print("new value = \(pizzaInInches)")
        if(pizzaInInches > 10) {
            print("invalid size")
            pizzaInInches = 10
        }
    }
}
pizzaInInches = 12
print("pizza inches = \(pizzaInInches)")

// the following is an example of computed properties
// 2 things are imp to declare a variable as a computed property
// 1. It shud be a var and not let
// 2. It shud always declare its type
var numberOfSlices : Int {
    // the following is called the getter. and it is always called whenever this variable ->numberOfSlices is accessed
//    return pizzaInInches - 4
    
    // the above piece of code can also be written as follows: Writing get is not necesscary
    get {
        return pizzaInInches - 4
    }
    // the following method is called , whenever a new value to numberOfSlices is set
    // if the following is not written, then the property numberOfSlices becomes read-only and hence writing any value to this variable would always fail and give compile time error
    set {
        print("new value = \(newValue)")
    }
}

print("No of slices = \(numberOfSlices)")
numberOfSlices = 2


