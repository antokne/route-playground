# route-playground
A simple example looking at how to use a router pattern in SwiftUI

A demonstration of how a router pattern could work in SwiftUI.

Requires `NavigationPath` which is an iOS16 min target feature.

Has the following:

* A Routable Protocol.
* A routing view which sets up a navigation stack with an option for a sheet and full screen cover. Used from main view
* A concrete Router that manages the routing and presenting of view.

A concrete implementation of the Routeble Protocol is required that defines the views and navigation types used to access that view.
