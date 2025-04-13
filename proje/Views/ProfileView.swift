import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    VStack(spacing: 8) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.gray)
                        Text("Sühan Düşünceli")
                            .font(.title2)
                        Text("suhan@gmail.com")
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                }
                
                Section {
                    NavigationLink(destination: EmptyView()) {
                        Label("Profil Düzenle", systemImage: "person.fill")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Uygulama Ayarları", systemImage: "gear")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Destek Merkezi", systemImage: "questionmark.circle")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Arkadaşına Davet Gönder", systemImage: "person.badge.plus")
                    }
                }
                
                Section {
                    Button(action: {}) {
                        HStack {
                            Text("Çıkış Yap")
                                .foregroundColor(.red)
                            Spacer()
                            Image(systemName: "arrow.right.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .navigationTitle("Profil")
        }
    }
}

#Preview {
    ProfileView()
} 