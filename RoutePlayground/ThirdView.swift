//
//  ThirdView.swift
//  RoutePlayground
//
//  Created by Ant Gardiner on 03/07/2024.
//

import SwiftUI

struct ThirdView: View {
	@StateObject var router: Router<PlaygroundRoute>
	var body: some View {
		VStack {
			Text("ThirdView")
				.font(.title)
			Spacer()
			Button("Dismiss") {
				router.dismiss()
			}
		}
		.frame(maxWidth: .infinity)
		.background(.gray)
		.cornerRadius(3.0)
	}
}

#Preview {
	RoutingView(PlaygroundRoute.self) { router in
		ThirdView(router: router)
	}}
