void main() {
  registerUserUpdated(username: "Khader", email: "khader@example.com");
  registerUserUpdated(username: "Khader", email: "khaderexample.com");
}

void registerUserUpdated({required String username, required String email}) {
  if (email.contains('@')) {
    print('User $username registered with email $email successfully');
  } else {
    print("Invalid email for user $username");
  }
}
