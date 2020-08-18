//
//  ContentView.swift
//  Quran IDN API
//
//  Created by addjn on 18/08/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var net = Networking()
    var body: some View {
        List(net.datas) { surah in
            ListSurah(surah: surah)
        }
        .onAppear {
            self.net.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
