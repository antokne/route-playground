//
//  FirstView.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI

struct FirstView: View {
	@StateObject var router: Router<PlaygroundRoute>
	
	var body: some View {
		List {
			Button("Third View") {
				router.routeTo(.thirdView(.fullScreenCover))
			}
			Button("Second View with push") {
				router.routeTo(.secondView(.push, "Pushed"))
			}
			Button("Dismiss") {
				router.dismiss()
			}
		}
		.navigationTitle("The First View")
		.frame(maxWidth: .infinity)
	}
}

#Preview {
	RoutingView(PlaygroundRoute.self) { router in
		FirstView(router: router)
	}
}
