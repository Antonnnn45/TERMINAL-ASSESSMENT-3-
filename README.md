# 📦 Inventory Management System – Terminal Assessment 3

A web-based inventory management system developed using **CodeIgniter 4** as the final project for Terminal Assessment 3.

---

## 🔑 Default User Accounts

| Role   | Username | Password  |
|--------|----------|-----------|
| Admin  | admin    | admin123  |
| User   | user1    | admin123  |

> ✅ Admin has full access (products, categories, users)  
> 👤 User1 has limited access depending on configuration

---

## 🚀 Features

- ✅ Product and Category CRUD
- 📸 Image upload with file type and size validation
- 🔍 Search and category filtering
- 🔐 Login/Logout with role-based access
- 💬 Flash messages for user actions
- 🛡 CSRF protection and input validation

---

## 🧰 Technologies Used

- **CodeIgniter 4** (PHP Framework)
- **MySQL** (Relational Database)
- **HTML/CSS + Bootstrap 5** (Frontend UI)
- **XAMPP** / **InfinityFree** (Local + Online Hosting)

---

## 🌐 Live Site

🔗 http://TERMINAL-ASSESSMENT-3.infinityfreeapp.com/login

---

## 📁 GitHub Repository

🔗 https://github.com/Antonnnn45/TERMINAL-ASSESSMENT-3

---

## 🛠 Local Setup Instructions (XAMPP)

1. 📥 Clone or download the project into `C:\xampp\htdocs\inventory-system`
2. 🗃 Import the provided SQL file using **phpMyAdmin**
3. ⚙️ Edit your `.env` file with this config:
   ```env
   database.default.hostname = localhost
   database.default.database = inventory_db
   database.default.username = root
   database.default.password =
