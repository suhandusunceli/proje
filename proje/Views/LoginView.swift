import SwiftUI

struct LoginView: View {
    @State private var isGuestActive = false

    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                // Header
                VStack(spacing: 15) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                    
                    Text("Giriş Yap")
                        .font(.title)
                        .bold()
                    
                    Text("Finhelper'a hoşgeldiniz profilinizi oluşturun. Finhelper'ı birden fazla cihazda kullanın ve bildirimlerini al.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                // Login Buttons
                VStack(spacing: 15) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "apple.logo")
                                .foregroundColor(.white)
                            Text("Apple ile Giriş Yap")
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image("google_logo")
                            Text("Google ile Giriş Yap")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "envelope.fill")
                            Text("E-posta ile Giriş Yap")
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Register Button
                NavigationLink(destination: RegisterView()) {
                    Text("Kayıt Ol")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Language + Guest
                VStack(spacing: 10) {
                    HStack {
                        Image("translate_icon")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Divider()
                            .frame(height: 20)
                        Image("support_icon")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                    
                    // Guest Navigation
                    NavigationLink(destination: MainTabView(), isActive: $isGuestActive) {
                        EmptyView()
                    }
                    
                    Button(action: {
                        isGuestActive = true
                    }) {
                        Text("Ziyaretçi olarak devam et")
                            .font(.footnote)
                            .foregroundColor(.blue)
                            .underline()
                    }
                }
                .padding(.bottom)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    LoginView()
}
