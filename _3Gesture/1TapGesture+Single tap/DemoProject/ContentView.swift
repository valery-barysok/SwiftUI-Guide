//  互动教程合集：https://apps.apple.com/cn/app/id1392811165
//  Xcode互动教程免费下载地址：https://itunes.apple.com/cn/app/id1063100471
//  Swift语言入门实例互动教程免费下载地址：https://itunes.apple.com/cn/app/id1320746678
//  app开发中的神兵利器免费下载地址：https://itunes.apple.com/cn/app/id1209739676
//  Objective-C语言应用开发互动教程免费下载地址：https://apps.apple.com/cn/app/id838877136
//  Copyright © hdjc8.com. All rights reserved.

import SwiftUI

import SwiftUI

struct ContentView : View {
    
    @State var isPressed = false
    
    var body: some View {
        let tapGesture = TapGesture()
            .onEnded { _ in
                self.isPressed.toggle()
        }
        
        return Circle()
            .fill(Color.orange)
            .frame(width: 240, height: 240)
            .gesture(tapGesture)
            .scaleEffect(isPressed ? 1.4 : 1)
            .animation(.default)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
