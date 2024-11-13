import SwiftUI

struct UurroosterList: View {
    @Environment(UurroosterDataStore.self) private var datastore
    @State var selection: EventModel?

    var body: some View {
        VStack {
            
            List(datastore.getEvents(), id: \.self, selection: $selection) { event in
                VStack {
                    if event.allDay != true {
                        Text(DateUtil.formatDateTime(date: event.startDateTime))
                        Spacer()
                    }
                    HStack {
                        Text(event.title)
                        Spacer()
                        //Text(event.date.formatted(.dateTime))
                    }
                    
                    // Corrected closing braces for the else statement
                    if event.allDay == true {
                        HStack {
                            Text(DateUtil.formatDateTime(date: event.startDateTime))
                            Spacer()
                            //Text(event.date.formatted(.dateTime))
                        }
                        HStack {
                            Text(event.title)
                            Spacer()
                            //Text(event.date.formatted(.dateTime))
                        }
                    }
                }
            }
        }
    }
}
