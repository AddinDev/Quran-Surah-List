//
//  Networking.swift
//  Quran IDN API
//
//  Created by addjn on 18/08/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import Foundation
import Alamofire

class Networking: ObservableObject {
    @Published var datas = [Surah]()
    
    func getData() {
        AF.request("https://quranapi.idn.sch.id/surah")
        .validate()
            .responseDecodable(of: PurpleData.self) { (response) in
                guard let data = response.value else { return }
                self.datas = data.data!
        }
    }
    
}
