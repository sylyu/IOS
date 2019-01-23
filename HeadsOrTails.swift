import UIKit

//In this exercise, we are going to focus on writing clean and organized code using functions! When using functions it is important to be descriptive and to organize your code to have a separation of concerns. Let's see this in action:
//
//Create a function tossCoin() ->  String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result

//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossCoin() -> String {
    var side: String = String()
    print("Tossing a Coin!")
    let flipped = Int(arc4random_uniform(2))
    
    if flipped == 0 {
        side = "Heads"
        print("Heads")
    }else{
        side = "Tails"
        print("Tails")
    }
    print(side)
    return side
    
}
tossCoin()

func tossMultipleCoins(timesTossed:Int) -> Double {
    var numOfHeads: Int = Int()
    
    for _ in 1...timesTossed {
        if tossCoin() == "Heads" {
            numOfHeads+=1
        }
    }
    return Double(numOfHeads)/Double(timesTossed)
}
print(tossMultipleCoins(timesTossed: 10))
