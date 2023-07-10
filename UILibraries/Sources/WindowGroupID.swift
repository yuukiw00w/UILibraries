//
//  Created by Yuki Noseda on 2023/07/01.
//

import Foundation

enum WindowGroupID: CaseIterable, Identifiable {
    case home
    case contents

    var id: String {
        name
    }

    private var name: String { String(describing: self) }
}
