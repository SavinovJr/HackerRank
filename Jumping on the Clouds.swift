// Emma is playing a new mobile game that starts with consecutively numbered clouds. 
// Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus 1 or 2. 
// She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game. 

// c: an array of binary integers 

func jumpingOnClouds(c: [Int]) -> Int {
    var i = 0
    var isNeeded = true
    var steps = 0
    let count = c.count
    while isNeeded {

        var firstElement: Int? = nil
        var secondElement: Int? = nil
        var thirdElement: Int? = nil

        if i < count {
            firstElement = c[i]
        }

        if i + 1 < count {
            secondElement = c[i + 1]
        }

        if i + 2 < count {
            thirdElement = c[i + 2]
        }

        if let f = firstElement,
            let s = secondElement,
            let t = thirdElement {

            if f == 0 && s == 0 && t == 0 || f == 0 && s == 1 && t == 0 {
                steps += 1
                i += 2
            } else if f == 0 && s == 0 {
                steps += 1
                i += 1
            }

        } else if let f = firstElement, let s = secondElement, f == 0, s == 0  {
            steps += 1
            i += 1
        } else {
            isNeeded = false
        }

        if i == count {
            isNeeded = false
        }
    }
    return steps
}
