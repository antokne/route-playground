//
//  SecondView.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI

struct SecondView: View {
	@StateObject var router: Router<PlaygroundRoute>
	let description: String
	var body: some View {
		VStack {
			Text("Second View")
				.font(.title)
			Spacer()
			Text(description)
			Spacer()
			Button("Dismiss") {
				router.dismiss()
			}
		}
	}
}

#Preview {
	RoutingView(PlaygroundRoute.self) { router in
		SecondView(router: router, description: "Something")
	}
}
