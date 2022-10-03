var words : [String] = []

var line : String?
repeat {
    line = readLine()
    if line != nil {
        words.append(line!)
    }
} while line != nil

print(words)
