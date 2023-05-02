//
//  VideoView.swift
//  learn-swift
//
//  Created by Indra Mahesa on 02/05/23.
//

import SwiftUI

struct VideoView: View {
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video: video), label: {
                    HStack {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .cornerRadius(5)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(video.title)
                                .fontWeight(.medium)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 4)
                    
                })
            }
            .navigationTitle("Indra's Top 10")
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
