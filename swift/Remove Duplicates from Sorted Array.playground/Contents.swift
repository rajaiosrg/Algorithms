// Playground - noun: a place where people can play

/*:
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
Do not allocate extra space for another array, you must do this in place with constant memory.
For example, Given input array A = [1,1,2],
Your function should return length = 2, and A is now [1,2].
*/

func removeDuplicates(a: [Int]) -> [Int] {
    var index = 0, array = [Int](a)
    
    for var i=0; i<array.count; i++ {
        if (array[i] != array[index]) {
            index++
            array[index] = array[i]
        }
    }
    
    return [Int](array[0...index])
}

func removeDuplicates0(a: [Int]) -> [Int] {
    var index = 0, array = [Int](a)
    
    for var i=1; i<array.count; i++ {
        if (array[i] != array[i-1]) {
            index++
            array[index] = array[i]
        }
    }
    
    return [Int](array[0...index])
}

var A = [1,1,2]
removeDuplicates(A)
removeDuplicates0(A)

var B = [1,1,2,4,5,6,6,6,6,7,8,9,55]
removeDuplicates(B)
removeDuplicates0(B)

//: inplace example
func removeDuplicatesInplace(inout array: [Int]) -> Int {
    var index = 0
    
    for var i=0; i<array.count; i++ {
        if (array[i] != array[index]) {
            index++
            array[index] = array[i]
        }
    }
    
    array.removeRange(index+1..<array.count)
    return array.count
}

var A1 = [1,1,2]
removeDuplicatesInplace(&A1)
A1

var B1 = [1,1,2,4,5,6,6,6,6,7,8,9,55]
removeDuplicatesInplace(&B1)
B1

/*:
Follow up for ”Remove Duplicates”: What if duplicates are allowed at most twice? For example, Given sorted array A = [1,1,1,2,2,3],
Your function should return length = 5, and A is now [1,1,2,2,3]
*/

func removeDuplicates22(a:[Int]) -> [Int] {
    var r = 2;
    var a = [Int](a)
    for var i = 2; i < a.count; i++ {
        if (a[i] != a[r-2]) {
            a[r] = a[i]
            r++
        }
    }
    return [Int](a[0..<r])
}


func removeDuplicates2(a: [Int]) -> [Int] {
    var index = 0, array = [Int](a)
    
    for var i=1; i<array.count-1; i++ {
        if (!(array[i] == array[i-1] && array[i] == array[i+1])) {
            index++
            
            array[index] = array[i]
        }
    }
    
    return [Int](array[0...index])
}

var A2 = [1,1,1,2,2,3]
removeDuplicates2(A2)
removeDuplicates22(A2)

var B2 = [1,1,1,1,2,2,2,3,3]
removeDuplicates2(B2)
removeDuplicates22(B2)

/*:
Follow up for ”Remove Duplicates”: What if duplicates are allowed at most three times?
*/

func removeDuplicates3(a: [Int]) -> [Int] {
    var index = 0, array = [Int](a)
    
    for var i=1; i<array.count-2; i++ {
        if (!(array[i] == array[i+2] && array[i] == array[i-1]  && array[i] == array[i+1])) {
            index++
            
            array[index] = array[i]
        }
    }
    
    return [Int](array[0...index])
}

var B3 = [1,1,1,1,2,2,2,2,3,3,3,3,3,3,3]
removeDuplicates3(B3)


