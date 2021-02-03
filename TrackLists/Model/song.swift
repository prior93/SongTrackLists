//
//  song.swift
//  TrackLists
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import Foundation
struct Song {
    let track: String
    let album: String
    let Cover: String
    
    
    static func creatSong()->[Song]{
        var songs: [Song] = []
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        for index in 0..<tracks.count {
            let song = Song(track: tracks[index], album: albums[index], Cover:covers [index])
            songs.append(song)
            
        }
        return songs
}
}
