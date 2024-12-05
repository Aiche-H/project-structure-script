# Create Folder Structure Script

This repository contains scripts to create a predefined folder structure with necessary files for a web project. The scripts are available for both Unix-based systems (macOS and Linux) and Windows.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
  - [On macOS and Linux](bash.md)
  - [On Windows](cmd-pwrshll.md)
- [Script Details](#script-details)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository provides shell and PowerShell scripts to automate the creation of a folder structure for a web project. The structure includes main directories, subdirectories, and essential files like `index.html`, `global.css`, and `global.js`. This automation can save time and ensure consistency in project setup.

## Usage

### On macOS and Linux

For detailed instructions on how to use the script on macOS and Linux, see [this guide](bash.md).

### On Windows

For detailed instructions on how to use the script on Windows, see [this guide](cmd-pwrshll.md).

## Script Details

### Bash Script (macOS and Linux)

The Bash script (`create_structure.sh`) creates the following structure:

- Main directories: `resources`, `pages`, `global`
- Subdirectories in `resources`: `css`, `javascript`
- Subdirectories in `global`: `css`, `javascript`, `images`, `data`
- Subdirectories in `pages/<page_name>`: `local-css`, `local-javascript`, `local-data`, `local-images`
- Essential files: `index.html`, `global.css`, `global.js`, `readme.md`, `.gitignore`

### PowerShell Script (Windows)

The PowerShell script (`create_structure.ps1`) creates the same structure as the Bash script, but is designed to run on Windows.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
