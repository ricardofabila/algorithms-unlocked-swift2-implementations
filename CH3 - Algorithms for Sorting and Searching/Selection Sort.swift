//
//  Selection Sort.swift
//  
//
//  Created by Ricardo Fabila Reyes on 26/06/16.
//
//

//from lowest to highest (ascendent) implementation
func selectionSort(var arrayToCheck : [Int]) -> [Int] {
    var sum = 0
    for (var j = 0; j < arrayToCheck.count; j++){
        //setting the lowest value on the array on the first place
        var max = arrayToCheck[j];
        for (var i = 0; i < arrayToCheck.count; i++){
            if arrayToCheck[i] > max {
                max = arrayToCheck[i]
                let temp = arrayToCheck[j]
                arrayToCheck[j] = max
                arrayToCheck[i] = temp
            }
            sum++
        }
    }
    print( String(sum) + " iterations")
    return arrayToCheck;
}

//descendent implementaiton
func selectionSortDescendent(var arrayToCheck : [Int]) -> [Int] {
    for (var j = 0; j < arrayToCheck.count; j++){
        //setting the lowest value on the array on the first place
        var min = arrayToCheck[j];
        for (var i = 0; i < arrayToCheck.count; i++){
            if arrayToCheck[i] < min {
                min = arrayToCheck[i]
                let temp = arrayToCheck[j]
                arrayToCheck[j] = min
                arrayToCheck[i] = temp
            }
        }
    }
    return arrayToCheck;
}


// Testing them with an array full of random digits
var array : [Int] = [];

for _ in 1...25{
    array += [ Int(arc4random_uniform(100) + 1) ]
}

print("Orinigal array:")
for element in array {
    print(element, terminator: " ")
}
print("")

print("ordered array ascendent")
for element in selectionSort(array) {
    print(element, terminator: " ")
}
print("")


print("ordered array descendent")
for element in selectionSortDescendent(array) {
    print(element, terminator: " ")
}