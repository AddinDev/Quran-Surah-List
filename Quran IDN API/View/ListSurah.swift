//
//  ListSurah.swift
//  Quran IDN API
//
//  Created by addjn on 18/08/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import SwiftUI

struct ListSurah: View {
    var surah: Surah
    var body: some View {
        HStack {
            Text(String(surah.number!))
            VStack(alignment: .leading) {
                Text(surah.name!)
                Text(surah.translationEn!)
            }
            Spacer()
            Text("\(String(surah.numberOfAyahs!)) ayahs")
            Text(surah.typeEn!)
        }
    }
}
