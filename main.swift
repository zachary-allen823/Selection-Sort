import Foundation

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:


var words : [String] = []

var line : String?
repeat {
    print("Enter the name of a vegetable, or ^D to quit: ", terminator:"")
    line = readLine()
    if line != nil {
        words.append(line!)
    }
} while line != nil

var array = words
var pass = 0
var swaps = 0
var totalSwaps = 0
var swappedThisPass = false



func swap(integers: inout [String], i:Int, j:Int) {
    precondition(i < integers.count, "i with value \(i) is out of range")
    precondition(i < integers.count, "j with value \(j) is out of range")

    let temp = integers[j]
    integers[j] = integers[i]
    integers[i] = temp
}

for i in 0..<array.count {
    
    print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(array)")
    var minIndex = i
    swaps = 0
    for j in i + 1..<array.count {
        if array[j] < array[minIndex] {
            minIndex = j
                        
        }
        
        
    }
    swaps += 1
    totalSwaps += 1
    
    let temp = array[i]
    array[i] = array[minIndex]
    array[minIndex] = temp
        
    
    
    minIndex += 1

    
    pass += 1
}
   

