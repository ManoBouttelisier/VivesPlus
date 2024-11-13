//
//  UurroosterList.swift
//  VivesPlus
//
//  Created by Mano Bouttelisier on 12/11/2024.
//

import SwiftUI

struct UurroosterList: View {
    var body: some View {
       NavigationStack {
           VStack{
               Text("Uurrooster")
                  .font(.title)
                  .bold()
           }
                NavigationSplitView(
                  sidebar: <#T##() -> View#>,
                  detail: <#T##() -> View#>)
        }
    }
}

#Preview {
    UurroosterList()
}
