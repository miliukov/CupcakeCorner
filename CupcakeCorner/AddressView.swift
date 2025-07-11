import SwiftUI

struct AddressView: View {
    @Bindable var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street adress", text: $order.streetAdress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink("Checkout") {
                    CheckoutView(order: order)
                }
            }
            .disabled(!order.hasValidAdress)
        }
        .navigationTitle("Delivery Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
