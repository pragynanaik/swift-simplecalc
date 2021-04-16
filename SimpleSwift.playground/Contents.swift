import Foundation

print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    if (args[args.endIndex - 1] == "count") {
        return args.endIndex - 1
    } else if (args[args.endIndex - 1] == "avg"){
        let number = args.endIndex - 1
        if (number == 0) {
            return 0;
        } else {
            var sum = 0
            for i in 0...number - 1 {
                sum = sum + Int(args[i])!
            }
            return sum/number;
        }
    } else if (args[args.endIndex - 1] == "fact") {
        if (args.endIndex == 1) {
            return 0
        }
        var mult = 1
        
        if (Int(args[0])! != 0) {
            for i in 1...Int(args[0])! {
                mult = mult * i
            }
        }
        return mult
    } else {
        let first = Int(args[0])!
        let second = Int(args[2])!
        let operation = args[1]
        
        switch operation {
        case "+":
            return first + second
        case "-":
            return first - second
        case "/":
            return first / second
        case "%":
            return first % second
        case "*":
            return first * second
        default:
        return 0
        }
    }
}

func calculate(_ arg: String) -> Int {
    let stringSplit = arg.components(separatedBy: " ")
    let args = stringSplit
    if (args[args.endIndex - 1] == "count") {
        return args.endIndex - 1
    } else if (args[args.endIndex - 1] == "avg"){
        let number = args.endIndex - 1
        if (number == 0) {
            return 0;
        } else {
            var sum = 0
            for i in 0...number - 1 {
                sum = sum + Int(args[i])!
            }
            return sum/number;
        }
    } else if (args[args.endIndex - 1] == "fact") {
        if (args.endIndex == 1) {
            return 0
        }
        var mult = 1
        
        if (Int(args[0])! != 0) {
            for i in 1...Int(args[0])! {
                mult = mult * i
            }
        }
        return mult
    } else {
        let first = Int(args[0])!
        let second = Int(args[2])!
        let operation = args[1]
        
        switch operation {
        case "+":
            return first + second
        case "-":
            return first - second
        case "/":
            return first / second
        case "%":
            return first % second
        case "*":
            return first * second
        default:
        return 0
        }
    }
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers

calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5

 
// Implement calculate([String]) and calculate(String)
// to use floating-point values

func calculate(_ args: [String]) -> Double {
    if (args[args.endIndex - 1] == "count") {
        return Double(args.endIndex - 1)
    } else if (args[args.endIndex - 1] == "avg"){
        let number = args.endIndex - 1
        if (number == 0) {
            return 0.0;
        } else {
            var sum = 0.0
            for i in 0...number - 1 {
                sum = sum + Double(args[i])!
            }
            return sum/Double(number);
        }
    } else if (args[args.endIndex - 1] == "fact") {
        if (args.endIndex == 1) {
            return 0.0
        }
        var mult = 1.0
        
        if (Double(args[0])! != 0.0) {
            for i in 1...Int(args[0])! {
                mult = mult * Double(i)
            }
        }
        return mult
    } else {
        let first = Double(args[0])!
        let second = Double(args[2])!
        let operation = args[1]
        
        switch operation {
        case "+":
            return first + second
        case "-":
            return first - second
        case "/":
            return first / second
        case "%":
            return first.truncatingRemainder(dividingBy: second)
        case "*":
            return first * second
        default:
            return 0.0
        }
    }
}
func calculate(_ arg: String) -> Double {
    return -1.0
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5

