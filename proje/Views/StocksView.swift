import SwiftUI

struct StockRow: View {
    let symbol: String
    let price: Double
    let change: Double
    let time: String
    
    var body: some View {
        HStack {
            Text(symbol)
                .font(.system(.body, design: .monospaced))
                .bold()
            Spacer()
            Text(String(format: "%.2f", price))
            
            HStack {
                Image(systemName: change >= 0 ? "arrow.up.right" : "arrow.down.right")
                Text(String(format: "%.2f%%", abs(change)))
            }
            .foregroundColor(change >= 0 ? .green : .red)
            
            Text(time)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}

struct StocksView: View {
    var body: some View {
        NavigationView {
            List {
                StockRow(symbol: "AEFES", price: 163.00, change: -3.15, time: "18:09:47")
                StockRow(symbol: "AGHOL", price: 314.25, change: 1.21, time: "18:09:25")
                StockRow(symbol: "AGROT", price: 10.68, change: -1.93, time: "18:09:59")
                StockRow(symbol: "AKBNK", price: 69.60, change: 1.53, time: "18:10:00")
                StockRow(symbol: "AKFYE", price: 19.32, change: -0.26, time: "18:09:55")
            }
            .navigationTitle("Borsa")
        }
    }
}

#Preview {
    StocksView()
} 