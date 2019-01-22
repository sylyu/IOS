// 1.Write a program that adds the number 1-255 to an array
var numArr: [Int] = [Int]()

for i in 1...255 {
    // create the deck
    numArr.append(i)
}
// 2. two random values in the array
// * Hint: You can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in.  The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type.  How can you deal with this using your knowledge of types?

//  3.Now write the code that swaps random value 100 times(You've created a "Shuffle"~)
// shuffle the array
for _ in 1...100 {
    let random1 = Int(arc4random_uniform(255))
    let random2 = Int(arc4random_uniform(255))
    
    let temp = numArr[random1]
    numArr[random1] = numArr[random2]
    numArr[random2] = temp
}
print(numArr)

//  4.Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of life, the Universe, and Everything at index_" and print the index of where "42" was before you removed it.

if let index = numArr.index(of: 42) {
    numArr.remove(at: index)
}
print(numArr)
