# 🔐 Password Generator Script

This is a simple interactive Bash script that generates random passwords and displays their hashes using various hashing algorithms. It's useful for developers, sysadmins, or anyone who needs secure passwords with selectable hash types.

## Features

- Generate one or multiple random passwords of custom length
- Choose from multiple hash algorithms: MD5, SHA1, SHA256, SHA384, SHA512
- See both the generated password and its hash
- Simple, easy-to-use interactive prompts

## Requirements

- Bash shell
- `openssl` installed on your system

## Usage

1. **Clone or download** the script.

2. **Make the script executable**:

   ```bash
   chmod +x password_generator.sh
   ```

3. **Run the script**:

   ```bash
   ./password_generator.sh
   ```

4. **Follow the prompts**:

   - Enter the desired password length (must be greater than zero)
   - Enter the number of passwords you want (press Enter for 1)
   - Choose the hash type (1-5)

5. **Get your generated password(s) and their hashes!**

## Example

```
🔐 Password Generator Script

Enter password length: 12
How many passwords you want: 2
Please select any hash type:
1. MD5
2. SHA1
3. SHA256
4. SHA384
5. SHA512
Enter your choice (1-5): 3

🔑 Generating 2 password(s) of length 12 with sha256:

Password: hq8LwZr8uF9j
Hash    : 2e9f9b045cd1e399d74ad5c2e2b3e8e6f8b2f3a2e3d4c5b6a7e8d9f0e1f2a3b4
-----------------------------
Password: cJ5wU0rVYxT3
Hash    : 6b2e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e
-----------------------------
```

## Notes

- The script uses `/dev/urandom` via `openssl rand` for strong randomness.
- Passwords are displayed in plaintext; handle with care!
- For hash verification and usage, copy the hash as displayed.

## License

MIT License

---

> Made with ❤️ for secure password generation.
