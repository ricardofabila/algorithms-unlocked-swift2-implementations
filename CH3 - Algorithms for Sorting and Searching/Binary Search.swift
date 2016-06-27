//
//  binarySearch.swift
//  
//
//  Created by Ricardo Fabila Reyes on 26/06/16.
//
//

//This search requires your array to be sorted
func binarySearch(var sortedArray : [Int], elementToSearch : Int) -> Bool {
    
    var lowerBound = 0
    var upperbound = sortedArray.count - 1
    
    while lowerBound <= upperbound {
        let middle = (lowerBound + upperbound) / 2
        let value = sortedArray[middle]
        
        if value == elementToSearch {
            print("Element found at index: \(middle)." )
            return true;
        }
        
        if (value < elementToSearch) {
            lowerBound = middle + 1
        }
        
        if (value > elementToSearch) {
            upperbound = middle - 1
        }
        
        
    }
    
    print("Element not found." )
    return false
}


//Creating an array with the numbers 1 to 25
var array : [Int] = [];

for i in 1...25{
    array += [i]
}

//and it found the number 20 at the index 19.
binarySearch(array, elementToSearch: 20)