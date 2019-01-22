//: print all values from 1 - 255
var i = 1
while i < 256 {
    print(i)
    i = i + 1
}

//: print all values from 1 - 100 that are divisible by 3 or 5 but not both
var j = 1
while j <= 100 {
    if( j % 3 == 0 ) || ( j % 5 == 0 ) {
        print(j)
    }
    j = j + 1
}

//: FizzBuzz - Now modify that program to print all values from 1-100, but replace the number with "Fizz" when the number is divisible by 3, "Buzz" when the number is divisible by 5, and "FizzBuzz" when the number is divisible by both!
var k = 1
while k <= 100 {
    if( k % 3 == 0) && ( k % 5 == 0){
        print("FizzBuzz")
    }else if k % 3 == 0 {
        print("Fizz")
    }else if k % 5 == 0 {
        print("Buzz")
    }
    k = k + 1
}
