package main

import (
	"fmt"
	"math"
	"time"
)

var primes struct {
	values      []int
	lastChecked int
}
var floatingPrimes []int

func main() {
	// Saving some time, add values personally calculated with calculator
	primes.values = append(primes.values, []int{
		2,
		3,
		5,
		//7,
		//11,
		//13,
		//17,
		//19,
		//23,
		//29,
		//31,
		//37,
		//41,
		//43,
		//47,
		//53,
		//59,
	}...)
	primes.lastChecked = 5

	//testPrime(2)
	//testPrime(11)
	//var isPrime bool

	//withTime(testPrime, 5)
	//withTime(testPrime, 2)
	//withTime(testPrime, 8)
	//withTime(testPrime, 9)
	withTime(testPrime, 11)
	withTime(testPrime, 13)
	withTime(testPrime, 15)
	withTime(testPrime, 27)
	withTime(testPrime, 37)
	//withTime(testPrime, 41)
	withTime(testPrime, 49)
	withTime(testPrime, 73)
	withTime(testPrime, 343)
	withTime(testPrime, 5099)
	withTime(testPrime, 7917)
	withTime(testPrime, 7919)
	withTime(testPrime, 433494437)
	withTime(testPrime, 910285727)
	withTime(testPrime, 1344731743)
	//isPerfectSquare(4)
	//isPerfectSquare(16)
	//isPerfectSquare(11)
	//isPerfectSquare(111)
	//isPerfectSquare(121)
}

func isPerfectSquare(n int) {
	sqrt := math.Sqrt(float64(n))
	fmt.Println(sqrt)
	if math.Floor(sqrt) == sqrt {
		fmt.Println("perfect square")
	} else {
		fmt.Println("not perfect square")
	}

}

func testPrime(n int) bool {
	fmt.Printf("\nTest %d\n", n)
	if n <= 1 {
		return false
	}
	if n > 2 && n%2 == 0 {
		fmt.Printf("%d is even, not prime\n", n)
		// prime must be odd
		return false
	}
	sqrt := math.Sqrt(float64(n))
	if math.Floor(sqrt) == sqrt {
		fmt.Printf("%d is a perfect root of %v, not prime\n", n, sqrt)
		// perfect squares cannot be primes
		return false
	}
	if n > 8 {
		cbrt := math.Cbrt(float64(n))
		if math.Floor(cbrt) == cbrt {
			fmt.Printf("%d is a perfect cube root of %v, not prime\n", n, cbrt)
			return false
		}
	}

	//var primes []int
	// TODO remove 2
	//isPrime := true
	//l := math.Min(math.Sqrt(float64(n)), float64(n))
	//limit := int(math.Min(l, 100))

	fmt.Printf("checking pre-calculated primes, there are %d.\n", len(primes.values))
	for _, p := range primes.values {
		if p >= n/2 {
			fmt.Printf("%d - reached half of %d, this is a prime, no point checking further\n", p, n)
			floatingPrimes = append(floatingPrimes, n)
			// can add to primes, but probably better not, to keep them sorted
			return true
		}
		if n%p == 0 {
			fmt.Printf("%d is not prime, divisible by %d\n", n, p)
			return false
		}
	}

	fmt.Printf("didn't find, finding more primes starting from %d to %d\n", primes.lastChecked, n/2)
	//fmt.Printf("testing n = %d, limit = %d\n", n, limit)
	//for i := 2; i < limit; i++ {
	for i := primes.lastChecked + 1; i < n/2; i++ {
		if i*i >= n {
			fmt.Printf("%d pow 2 is heigher than %d, number is prime\n", i, n)
			return true
		}
		//bi, _ := new(big.Int).SetString(strconv.Itoa(i), 10)
		//bn, _ := new(big.Int).SetString(strconv.Itoa(n), 10)
		//bi.Exp(bi, bn, nil)
		//bs, _ := new(big.Int).SetString(strconv.Itoa(i), 10)
		//bi.Sub(bi, bs)
		//bm := new(big.Int)
		//bm.Mod(bi, bn)
		//if len(bm.Bits()) != 0 {
		//	return false
		//	//isPrime = false
		//}
		isPrime := true
		if it := isFloatingPrime(i); !it {
			// Check if i is a prime
			for _, p := range primes.values {
				if i%p == 0 {
					isPrime = false
				}
			}
		}

		//fmt.Println(isPrime)
		if isPrime {
			primes.values = append(primes.values, i)
			primes.lastChecked = i
			if n%i == 0 {
				fmt.Printf("%d is not prime, divisible by %d\n", n, i)
				return false
			}
		}
	}

	//fmt.Println(primes)
	return true
}

func withTime(f func(int) bool, n int) bool {
	start := time.Now()
	isPrime := f(n)
	fmt.Printf("took: %v\n", time.Since(start))
	fmt.Printf("%d - %t\n", 11, isPrime)
	return isPrime
}

func isFloatingPrime(i int) bool {
	for k, v := range floatingPrimes {
		if v == i {
			floatingPrimes = append(floatingPrimes[:k], floatingPrimes[k+1:]...)
			fmt.Printf("%d was a floating prime, the rest of floating primes: %v\n", i, floatingPrimes)
			return true
		}
	}
	return false
}
