// Playground - noun: a place where people can play

import UIKit

extension String {
    subscript (i: Int) -> String {
        return String(Array(self)[i])
    }
}

func isMatch(s: String, p: String) -> Bool {
    var startS = 0
    var startP = 0
    
    while startS<count(s) && startP<count(p) {
        var curS = s[startS]
        var curP = p[startP]
        if let nextP = (startP+1)<count(p) ? p[startP+1] : nil {
            if nextP == "*" {
                while startS<count(s) && (curP == s[startS] || curP == ".")  {
                    startS++
                }
                startP+=2
                continue
            }
        }
    
        if curP == "." || curP == curS {
            startS++
            startP++
            continue
        }
    
        return false
    }
    
    if startS < count(s) || startP < count(p) {
        return false
    }
    return true
}



isMatch("aa","a")


isMatch("aaa","aa")









/*
*/