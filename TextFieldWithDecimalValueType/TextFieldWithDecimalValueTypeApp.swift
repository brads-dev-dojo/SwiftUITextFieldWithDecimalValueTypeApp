import SwiftUI

@main
struct TextFieldWithOptionalDecimalValueTypeApp: App {
    @State private var model = DemoModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: $model)
        }
    }
}
