import SwiftUI

struct WalletView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Monthly expenses card
                    VStack {
                        Text("Aylık Harcamalarım")
                            .font(.title2)
                        Text("₺9.450")
                            .font(.title)
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    
                    // Recent transactions
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Harcamalar")
                            .font(.title2)
                        
                        ForEach(["Benzin", "Pizza", "Otel", "Eczane"], id: \.self) { item in
                            HStack {
                                Image(systemName: item == "Benzin" ? "fuelpump.fill" :
                                                item == "Pizza" ? "fork.knife" :
                                                item == "Otel" ? "house.fill" : "cross.case.fill")
                                    .foregroundColor(.blue)
                                Text(item)
                                Spacer()
                                Text(item == "Benzin" ? "3000₺" :
                                     item == "Pizza" ? "640₺" :
                                     item == "Otel" ? "5250₺" : "380₺")
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Cüzdanım")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.blue)
            })
        }
    }
}

#Preview {
    WalletView()
} 