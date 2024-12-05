//
//  ContentView.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		RoutingView(PlaygroundRoute.self) { router in
			RootView(router: router)
		}
	}
}

struct RootView: View {
	@StateObject var router: Router<PlaygroundRoute>
	var body: some View {
		HStack {
			Button("First") {
				router.routeTo(.firstView(.push))
			}
			Button("Second") {
				router.routeTo(.secondView(.sheet, "Got here from RootView"))
			}
			Button("Third") {
				router.routeTo(.thirdView(.fullScreenCover))
			}
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
