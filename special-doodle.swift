
    void login(std::string username, std::string password) {
        auto user = users.find(username);
        if (user != users.end()) {
            user->second.authenticate(username, password);
        } else {
            std::cout << "User not found. Login failed.\n";
        }
