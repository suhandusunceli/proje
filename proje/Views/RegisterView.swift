import SwiftUI

struct RegisterView: View {
    @State private var fullName = ""
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                // Header
                VStack(spacing: 15) {
                    Text("Kayıt Ol")
                        .font(.title)
                        .bold()
                    
                    // Profile Image Picker
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "camera.fill")
                            .foregroundColor(.blue)
                            .offset(y: -25)
                    }
                }
                
                // Form Fields
                VStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("İsim Soyisim:")
                            .foregroundColor(.gray)
                        TextField("", text: $fullName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Kullanıcı Adı:")
                            .foregroundColor(.gray)
                        TextField("", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    VStack(alignment: .leading) {
                        Text("E-posta Adresi:")
                            .foregroundColor(.gray)
                        TextField("", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Şifre Oluştur:")
                            .foregroundColor(.gray)
                        SecureField("", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding(.horizontal)
                
                // Register Button
                Button(action: {}) {
                    Text("Kayıt Ol")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.vertical)
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

#Preview {
    NavigationView {
        RegisterView()
    }
} 