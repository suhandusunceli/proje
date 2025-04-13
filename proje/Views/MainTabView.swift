import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            WalletView()
                .tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Cüzdanım")
                }
            
            GroupsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Gruplar")
                }
            
            StocksView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Borsa")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                }
        }
    }
}

#Preview {
    MainTabView()
} 