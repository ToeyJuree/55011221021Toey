// Playground - noun: a place where people can play

import UIKit

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
// var shoppingListExplict: [String] = ["Eggs", "Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread","Cheese","Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList