//
//  main.swift
//  swift-stack
//
//  Created by Javier Solorzano on 2/7/21.
//

import Foundation

let myStack: Stack<Any> = Stack<Any>()

print("*** Swift Stack Example ***")
print("Select the operation you would like to perform on the Stack")
print("Press 1: push an item onto the stack")
print("Press 2: remove item from the stack")
print("Press 3: See the item at the top of the stacks")
print("Type 'quit' to close the program")

var data: String?
var selection: String?

repeat {
	selection = readLine()
	switch selection {
		case "1":
			print("Enter the item you want to push onto your stack")
			if let data = readLine() {
				myStack.push(data) ? print("Pushed \(data) successfully") : print("Could not push \(data) onto the stack. Stack is full")
			}
		case "2":
			if let poppedItem = myStack.pop() {
				print("Successfully removed \(poppedItem) from the top of the stack")
			}
			else {
				print("Stack is empty, please add items to Stack first")
			}
		case "3":
			if let topItem = myStack.top() {
				print("\(topItem) is at the top of the Stack ")
			}
			else {
				print("Stack is empty, please add items to the Stack first")
			}
		case .none:
			print("Please select a valid option")
		case .some(_):
			print("Please select a valid option")
	}
	print("Make another selection or type 'quit' to exit program")
} while selection != "quit"


