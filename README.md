# Pahe-DL
![My Banner](https://raw.githubusercontent.com/HashShin/Pahe-DL/main/img/banner.jpg)

A lightweight, interactive AnimePahe downloader and command-line tool to search and batch-download anime from AnimePahe with multi-threaded speed.

---

## Disclaimer
This tool interacts with content hosted on third-party websites. Users are responsible for complying with all applicable local and international laws and the terms of service of the content providers.  
The creators and maintainers of this tool do not condone or encourage any unauthorized use.

---

## Key Features
- **Interactive Search** — Find anime titles quickly right from your terminal.  
- **Optimal Downloads** — Uses concurrent connections to maximize download speed.  
- **Live Progress** — Real-time progress bars for active downloads.  
- **Quality Selection** — Choose preferred resolution (1080p, 720p, etc.).  
- **Flexible Ranging** — Download a single episode or any defined range (e.g., `1-12`).

---

## Getting Started

### 1. Installation
The application is provided as a single executable file (`Pahe-DL-Linux` or `Pahe-DL-Windows.exe`).

- **Download**: Get the latest release for Windows, Android Termux, or Linux. [Download](https://github.com/HashShin/Pahe-DL/releases/latest)


Install with one command Android Termux and Linux
 ```
curl -fsSL https://raw.githubusercontent.com/HashShin/Pahe-DL/main/script/install.sh | sh
```
  

### 2. Execution
Open your command line and run the program from its directory:

**Windows**
```

.\Pahe-DL.exe

```

**Android/Linux**
```

./Pahe-DL-linux

```

---

## How to Use

The program guides you through a simple step-by-step flow.

### **Step 1: Search for an Anime**
Type the anime name and press ENTER:

```

? Enter anime name to search: <your query>

```

### **Step 2: Select from Results**
Navigate with arrow keys and press ENTER:

```

? Select the anime:

> My Hero Academia (TV) (Airing)
> Hunter x Hunter (2011) (Finished)
> ...

```

### **Step 3: Choose Download Quality**
Enter your preferred resolution:

```

? Enter desired quality (e.g., 1080p, 720p): 720p

```

### **Step 4: Specify Episode Range**
Choose what episodes to download. Examples:

| Input | Downloads |
|-------|-----------|
| `15` | Only episode 15 |
| `1-12` | Episodes 1 through 12 |
| `25-` | Episode 25 through last available |

```

? Enter episode range (e.g., 1-12, 5, 10-): 1-5

```

### **Step 5: Monitor the Download**
You’ll see real-time progress:

![download](https://raw.githubusercontent.com/HashShin/Pahe-DL/main/img/download_sample.jpg)


Files are automatically organized into a folder named after the anime and placed in the anime_download folder.

---

## 🛠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| **Download is slow** | Check internet speed; servers may also be slow. |
| **Download fails/stops** | Tool retries automatically; if persistent, the source may be down. |
| **Quality not found** | Falls back to next best available quality. |
| **"Permission Denied"** | Give execute permission (Linux): `chmod +x ./Pahe-DL-linux` |
