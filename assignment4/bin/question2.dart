void main() {
  registerUser(username: "Khader", email: "khader@example.com");
}

void registerUser({required String username, required String email}) {
  print("User $username registered with email $email");
}
