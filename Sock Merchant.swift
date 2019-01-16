
// John works at a clothing store. He has a large pile of socks that he must pair by color for sale. 
// Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

// n: the number of socks in the pile
// ar: the colors of each sock

func sockMerchant(n: Int, ar: [Int]) -> Int {
    let sortedArray = ar.sorted()

    var pairCounter = 0
    var i = 0
    while i < n - 1 {
        let firstSock = sortedArray[i]

        let nextSockIndex = i + 1
        let nextSock = sortedArray[nextSockIndex]
        if firstSock == nextSock {
            pairCounter += 1
            i = i + 2
        } else {
            i = i + 1
        }
    }
    return pairCounter
}
