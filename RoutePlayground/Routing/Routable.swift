//
//  Routable.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI

public enum NavigationType {
	case push
	case sheet
	case fullScreenCover
}

public protocol Routable: Hashable, Identifiable {
	associatedtype ViewType: View
	var navigationType: NavigationType { get }
	func viewToDisplay(router: Router<Self>) -> ViewType
}

extension Routable {
	public var id: Self { self }
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}
