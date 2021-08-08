import SwiftUI

struct DemoModel {
    var doubleQuantity: Double = 1.23 // This works.
    var decimalQuantity: Decimal = 5.34 // This does not work.
}

struct ContentView: View {
    @Binding var model: DemoModel
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.generatesDecimalNumbers = true
        return formatter
    }()
    
    var body: some View {
        Form {
            Section {
                Label {
                    Text("This text field works correctly. It writes the value back to the property when the field loses focus or you click Enter.")
                } icon: {
                    Image(systemName: "checkmark.circle").foregroundColor(Color.green).scaleEffect(1.4)
                }
                .lineLimit(10)
                
                // This works correctly, but without optional and decimal-type.
                TextField(
                    "Input a number of type double…",
                    value: $model.doubleQuantity,
                    formatter: numberFormatter)
            }
            
            Section {
                Label {
                    Text("This text field does not work correctly. \nIt doesn't write the value back to the property when the field loses focus or you click Enter.")
                } icon: {
                    Image(systemName: "xmark.circle").foregroundColor(Color.red).scaleEffect(1.4)
                }
                .lineLimit(10)
                
                // The two-way data binding does not seem to work.
                // The value is not written back to the property correctly.
                // Question: What needs to be changed to make this work?
                TextField(
                    "Input a number of type decimal…",
                    value: $model.decimalQuantity,
                    formatter: numberFormatter)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_PreviewWrapper()
    }
    
    struct ContentView_PreviewWrapper: View {
        @State(initialValue: DemoModel()) var model: DemoModel
        
        var body: some View {
            ContentView(model: $model)
        }
    }
}
