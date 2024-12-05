//
//  PlaygroundRoute.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI


enum PlaygroundRoute: Routable {
	case firstView(NavigationType)
	case secondView(NavigationType, String)
	case thirdView(NavigationType)
	
	@ViewBuilder
	func viewToDisplay(router: Router<PlaygroundRoute>) -> some View {
		switch self {
		case .firstView:
			FirstView(router: router)
		case .secondView(_, let description):
			SecondView(router: router, description: description)
		case .thirdView:
			ThirdView(router: router)
		}
	}
	
	var navigationType: NavigationType {
		switch self {
		case .firstView(let type):
			return type
		case .secondView(let type, _):
			return type
		case .thirdView(let type):
			return type
		}
	}
}
