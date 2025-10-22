//
//  Midterm_NoaMandorf
//  Noa Mandorf
//  8/21/25
//

import SwiftUI

struct ContentView: View {
    // Load the Data from the JSON
    let djs: [DJ] = Bundle.main.decode([DJ].self, from: "Data.json")
    // creates a view
    var body: some View {
        //starts the list
        NavigationView {
//            loops through the JSON file
            List(djs) { dj in
                // creats clickable links to take you yo new view called Description
                NavigationLink(destination: Description(dj: dj)){
                    //mkaes a HStack
                    HStack {
                        //loads the image first
                        Image(dj.imageName)
                        //styles for img
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                        // creates a vstack for the name and the preview of description
                        VStack(alignment: .leading) {
                            //name first
                            Text(dj.name)
                            //test styles
                                .font(.headline)
                            //description preview
                            Text(dj.description)
                            //styles
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                        }
                    }
//                    hstack styles
                    .padding(.vertical, 5)
                }
                //title for the list
                .navigationTitle("EDM Legends")
            }
        }
    }
}

#Preview {
    ContentView()
}
