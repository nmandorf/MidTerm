//
//  Midterm_NoaMandorf
//  Noa Mandorf
//  8/21/25
//


import SwiftUI

struct Description: View {
    
    //creats a varible of the dj object
    let dj: DJ
        // creates the description view
        var body: some View {
            //makes a vstack for the image and the description
            VStack(spacing: 20) {
                //loads the image from JSON
                Image(dj.imageName)
                //styles
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .cornerRadius(16)
                    .shadow(radius: 10)
                //loads the name from JSON
                Text(dj.name)
                //styles
                    .font(.largeTitle)
                    .fontWeight(.bold)
                //loads the description from JSON
                Text(dj.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
            }
            //styles
            .padding()
            .navigationTitle(dj.name)
            .navigationBarTitleDisplayMode(.inline)
        }
}
