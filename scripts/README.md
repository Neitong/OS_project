# File & Directory Management Program

## 📌 Overview
This Bash script-based program provides essential file and directory management features such as listing files, creating backups, counting files, checking disk usage, searching files, compressing directories, and logging user actions.

## 🚀 Features
📂 List files and directories with details.

🛑 Backup files and directories to a chosen location.

🔢 Count the number of files in a directory.

📊 Display disk usage of a given directory.

🔍 Search for files by name or extension.

📦 Compress files or directories.

📝 Log all actions in script.log.

## Projedct Structure

``` bash
File-Directory-Manager/
│── scripts/
│   │── list.sh          # List files and directories
│   │── backup.sh        # Backup files and directories
│   │── count.sh         # Count files in a directory
│   │── disk_usage.sh    # Show disk usage
│   │── search.sh        # Search for files by name or extension
│   │── compress.sh      # Compress files or directories
│   │── logger.sh        # Log actions
│   │── menu.sh          # Main menu script
│── script.log           # Log file for actions
│── README.md            # Instructions for installation and usage
│── run.sh               # Entry point script to execute the program

```

## 🛠️ Installation & Setup
### 1️⃣ Prerequisites
- A Linux or macOS system (or Windows with WSL)
- Bash shell installed
- Git installed

### 2️⃣ Clone the Repository
```
git clone <your-repo-url>
cd File-Directory-Manager
```
### 3️⃣ Make Scripts Executable
```
chmod +x scripts/*.sh
chmod +x run.sh
```
### 4️⃣ Run the Program
```
./run.sh
```

## 📜 Usage Guide
The program displays a menu with the following options:
```
==============================
  File & Directory Manager
==============================
1. List files and directories
2. Backup files or directories
3. Count files in a directory
4. Display disk usage
5. Search for a file
6. Compress files or directories
7. Exit
==============================
Choose an option (1-7):
```

## 🛠️ Testing the Scripts
To test each script separately, run:
```
bash scripts/list.sh
bash scripts/backup.sh
bash scripts/count.sh
bash scripts/disk_usage.sh
bash scripts/search.sh
bash scripts/compress.sh
```

Check script.log to ensure actions are logged properly:
```
cat script.log
```

## 🖥️ GitHub Workflow
### ✅ Push Changes to GitHub
```
git add .
git commit -m "Updated README and tested scripts"
git push origin main
```

## 🎯 Future Improvements
- Add error handling for invalid inputs.

- Enhance UI with colors for better readability.

- Support for additional compression formats.

## 👨‍💻 Contributors
@Nei tong
