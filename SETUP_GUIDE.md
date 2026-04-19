## 🚀 Complete Setup Guide for Portfolio

### Step 1: Database Setup

1. **Open MySQL and create database:**
   ```sql
   CREATE DATABASE portfolio_db;
   USE portfolio_db;
   ```

2. **Update Backend Configuration:**
   - Open `backend/src/main/resources/application.properties`
   - Update these values:
     ```properties
     spring.datasource.username=root
     spring.datasource.password=your_password
     ```

### Step 2: Backend Setup

1. **Navigate to backend:**
   ```bash
   cd My-Portfolio/backend
   ```

2. **Build the project:**
   ```bash
   mvn clean package
   ```

3. **Run the application:**
   ```bash
   mvn spring-boot:run
   ```

   Backend will run on: `http://localhost:8080`

### Step 3: Frontend Setup

1. **In a new terminal, navigate to frontend:**
   ```bash
   cd My-Portfolio/frontend
   ```

2. **Install dependencies (if not done):**
   ```bash
   npm install
   ```

3. **Start development server:**
   ```bash
   npm run dev
   ```

   Frontend will run on: `http://localhost:5173`

### Step 4: Testing the Application

1. Open your browser and go to `http://localhost:5173`
2. Fill the contact form and submit
3. Check if data is saved in MySQL database:
   ```sql
   SELECT * FROM contacts;
   ```

## 📋 API Documentation

### Contact Submission Endpoint

**URL:** `POST http://localhost:8080/api/contact`

**Headers:**
```
Content-Type: application/json
```

**Request Body:**
```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "message": "Hello, I'm interested in collaborating!"
}
```

**Successful Response (200 OK):**
```json
{
  "message": "Contact form submitted successfully"
}
```

**Error Response (400 Bad Request):**
- Missing or invalid name
- Missing or invalid email
- Missing message

## 🔧 Troubleshooting

### Frontend Issues

1. **Port 5173 already in use:**
   ```bash
   npm run dev -- --port 3000
   ```

2. **Dependencies not installing:**
   ```bash
   npm cache clean --force
   npm install
   ```

### Backend Issues

1. **MySQL Connection Error:**
   - Ensure MySQL is running
   - Check username and password in `application.properties`
   - Verify database exists

2. **Port 8080 already in use:**
   ```bash
   spring.server.port=8081
   ```

## 🚀 Deployment Guide

### Frontend Deployment (Vercel)

1. Push your code to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Import your repository
4. Set environment variables:
   ```
   VITE_API_BASE_URL=https://your-backend-url.com/api
   ```
5. Deploy

### Backend Deployment (Heroku)

1. Build the JAR:
   ```bash
   mvn clean package -DskipTests
   ```

2. Deploy JAR to Heroku or AWS

## 📁 Key Files to Customize

### Frontend
- `src/components/Hero.jsx` - Change name and title
- `src/components/About.jsx` - Update about section
- `src/components/Projects.jsx` - Add your projects
- `src/components/Contact.jsx` - Update contact info

### Backend
- `application.properties` - Database config
- `ContactController.java` - Add email notifications
- `ContactService.java` - Add business logic

## 🎯 Next Steps

1. Update personal information (name, email, phone)
2. Add your GitHub username for auto-fetching repos: `AftabAlam007` (https://github.com/AftabAlam007)
3. Add your actual project links
4. Customize colors and fonts
5. Deploy to production

Good luck! 🎉