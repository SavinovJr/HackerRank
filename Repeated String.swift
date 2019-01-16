/*
Lilah has a string, s, of lowercase English letters that she repeated infinitely many times.
Given an integer, n, find and print the number of letter a's in the first n letters of Lilah's infinite string.

s: a string to repeat
n: the number of characters to consider

*/

func repeatedString(s: String, n: Int) -> Int {
    guard s.count != 0, n != 0 else {
        return 0
    }

    let aCountsInS = s.filter({ $0 == "a"}).count

    guard aCountsInS != 0 else {
        return 0
    }

    let divided = Int ( n / s.count)
    let remainder = n % s.count

    let countWholeSInStringLengthN = divided * aCountsInS
    let remainString = s.prefix(remainder)

    let remaindedACounts = remainString.filter({ $0 == "a" }).count

    return countWholeSInStringLengthN + remaindedACounts
}
