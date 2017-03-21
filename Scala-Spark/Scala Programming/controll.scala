import util.control.Breaks._

var y = 0

while(y < 10){
  println(s"something print here is $y")
  printf("y is %d", y)
  y = y+1
}


def adder(left: Int, right: Int): Int = {
  return left + right
}
printf("added number %d", adder(2,5))

def checkingPrime(numberCheck: Int): Boolean = {
  for(n <- Range(2, numberCheck)){
    if(numberCheck%n == 0){
      return false
    }
  }
  return true
}

println(checkingPrime(5));
println(checkingPrime(12));
