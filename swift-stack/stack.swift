//
//  stack.swift
//  swift-stack
//
//  Created by Javier Solorzano on 2/7/21.
//

import Foundation

let MAXIMUM_NUMBER_OF_ELEMENTS: Int = 10000


/// A generic Stack data structure
///
/// This data structure implements the classic data structure with push, pop, and top methods. This data structure has a maximum number of elements of 10,000

class Stack<T> {
	private var length: Int
	private var nodes: [T?] = [T?](repeating: nil, count: MAXIMUM_NUMBER_OF_ELEMENTS)
	
	/// Creates an instance of the Stack data structure with a default length of 0
	init() {
		length = 0
	}
	
	/// A function to get the length of the Stack
	///
	/// - Returns: The length of the Stack as an integer
	///
	public func getLength() -> Int {
		return length
	}
	
	/// This function removes the highest numbered element of the Stack
	///
	/// - Returns: The node that was previously at the top of the stack
	public func pop() -> T? {
		if length == 0 {
			return nil
		}
		
		length -= 1
		return nodes[length]
	}
	
	/// This function pushes a new item on the top of the stack
	///
	///
	public func push(_ item: T?) -> Bool {
		if length + 1 == MAXIMUM_NUMBER_OF_ELEMENTS {
			return false
		}
		
		nodes[length] = item
		length += 1
		return true
	}
	
	public func top() -> T? {
		return nodes[length - 1]
	}
}
