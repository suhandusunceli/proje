import SwiftUI

struct GroupsView: View {
    var body: some View {
        NavigationView {
            List {
                GroupRow(name: "İtalya Gezisi", memberCount: 4, icon: "🇮🇹")
                GroupRow(name: "Ev Arkadaşları", memberCount: 3, icon: "🏠")
                GroupRow(name: "Doğum Günü", memberCount: 6, icon: "🎂")
            }
            .navigationTitle("Gruplar")
            .navigationBarItems(trailing: Button(action: {}) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.blue)
            })
        }
    }
}

struct GroupRow: View {
    let name: String
    let memberCount: Int
    let icon: String
    
    var body: some View {
        HStack {
            Text(icon)
                .font(.title)
            Text(name)
            Spacer()
            HStack {
                Image(systemName: "person.2.fill")
                Text("\(memberCount)")
            }
            .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    GroupsView()
} 