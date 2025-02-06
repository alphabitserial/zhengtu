# 征途 - Zhēngtú (Journey)

Zhēngtú is a simple, opinionated toolchain manager for Zig and ZLS (Zig Language Server). It provides a streamlined way to install and update both Zig and ZLS on x86_64 Linux systems. The tool is designed to be minimal, reliable, and easy to use, with a focus on automation.

---

## Features

- **Automatic Installation**: Installs the latest nightly versions of Zig and ZLS.
- **System Integration**: Includes a systemd timer for weekly automatic updates.
- **Minimal Dependencies**: Requires only `git`, `tar`, and `nushell` to operate.

---

## Requirements

### Runtime Dependencies
- **nushell**: The script is written in and requires [nushell](https://www.nushell.sh/).
- **git**: Used for cloning and updating the ZLS repository.
- **tar**: Required for extracting Zig tarballs.

### Installation Dependencies
- **just**: A command runner for installation and uninstallation. Install it via your package manager or [here](https://github.com/casey/just).

---

## Installation

1. Ensure `nushell`, `git`, and `tar` are installed on your system.
2. Clone this repository:
   ```bash
   git clone https://github.com/alphabitserial/zhengtu.git
   cd zhengtu
   ```
3. Run the installation command:
   ```bash
   just
   ```
4. Add `~/.zhengtu/bin` to your shell's `PATH`.

---

## Usage

Once installed, Zhēngtú will automatically manage your Zig and ZLS installations. You can manually trigger an update by running:
```bash
zhengtu
```

---

## Uninstallation

To remove Zhēngtú and all associated files, run the following command from your local repository clone:
```bash
just uninstall
```
This will:
* Delete the `~/.zhengtu` directory.
* Disable and remove the systemd timer.

---

## Limitations

* **Architecture**: Currently, Zhēngtú only supports **x86_64 Linux.**
* **Manual PATH Update**: You need to manually add `~/.zhengtu/bin` to your `PATH` after installation.

---

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

---

## License

Zhēngtú is licensed under the MIT License. See `LICENSE` for details.

