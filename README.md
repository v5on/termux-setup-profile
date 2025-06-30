# 🛠️ Termux Custom Setup (Public Profile)

Easily customize your Termux with colorful banners, organized folders, shell shortcuts, and a professional developer layout.  
🌈 No coding knowledge required!

---

📦 Features

- 🧑‍💻 Personalized Banner with your name
- 📁 Auto-created folders (Web, Python, Tools, Notes, Projects)
- 🧰 Shortcuts like home, menu, web, tools, py
- 🖥️ Custom ZSH shell with colorful prompt
- 🌐 Public, editable, open-source design

---

🚀 Installation (Step-by-Step)

✅ Step 1: Install Git (if not available)

`bash
pkg update && pkg upgrade -y
pkg install git openssl-tool -y
`

> ⚠️ যদি git ব্যবহার করতে গিয়ে libcrypto.so.3 not found এর মত error আসে, তাহলে নিচের কমান্ডগুলো ব্যবহার করুন:
`bash
pkg uninstall git
pkg install openssl-tool
pkg install git
`

---

🧠 Step 2: Clone the Repository

`bash
git clone https://github.com/v5on/termux-setup-profile.git
cd termux-setup-profile
`

---

🧩 Step 3: Run the Setup Script

`bash
chmod +x termux-setup.sh
./termux-setup.sh
`

> 📌 রান করার সময় স্ক্রিপ্ট আপনার নাম ও বর্ণনা জিজ্ঞেস করবে। আপনি যা চান তা দিয়ে দিন—আপনার জন্য environment auto-customize হয়ে যাবে!

---

🧪 Commands & Usage

Command  Description
menu  Show custom command list
home  Return to your main directory
web  Enter web development folder
py  Enter Python projects folder
tools  Enter tools folder
update  Update packages list & upgrade

🔁 Restart Termux or type zsh after setup.

---

📁 Directory Structure Created

- Scripts/ → Custom shell scripts  
- Notes/ → Markdown notes and welcome message  
- Tools/ → Your installed utilities  
- Web/ → HTML, CSS, JavaScript projects  
- Python/ → Python automation & apps  
- Backups/ → Keep important files  
- Projects/ → Anything else you build  

---

📜 License

This project is released under the MIT License, so feel free to fork and modify it!

---

> 💬 “The best of houses is the house where an orphan gets love and kindness.” — Prophet Muhammad ﷺ

---
