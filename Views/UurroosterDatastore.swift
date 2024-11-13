//
//  UurroosterDatastore.swift
//  VivesPlus
//
//  Created by Mano Bouttelisier on 12/11/2024.
//

import Foundation
@Observable


class UurroosterDataStore {
    
    private var uurrooster : [EventModel]
    
    init() {
        uurrooster = ReadJSON().uurrooster
        sort()
    }
    private func sort(){
        uurrooster.sort(by: { $0.startDateTime < $1.startDateTime })
    }
    
    func getEvents() -> [EventModel] {
        return uurrooster
        
    }
    
    func updateEvent(event: EventModel ){
        for i in 0 ..< uurrooster.count {
            if uurrooster[i].id == event.id {
                uurrooster[i] = event
            }
        }
        sort()
    }
    func deleteEvent(id: String) {
        for i in 0 ..< uurrooster.count {
            if uurrooster[i].id == id {
                uurrooster.remove(at: i)
            }
        }
        sort()
    }
    func getEvent(id: String) -> EventModel {
        var event = EventModel()
        for i in 0 ..< uurrooster.count {
            if uurrooster[i].id == id {
                event = uurrooster[i]
            }
        }
        return event
    }
}

