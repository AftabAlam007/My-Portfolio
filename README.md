<<<<<<< HEAD
# Aftab Alam - Personal Portfolio

A modern, responsive personal portfolio website for Java Full Stack Developer Aftab Alam.

## 🚀 Tech Stack

### Frontend
- **React 18** - Modern JavaScript library
- **Vite** - Fast build tool
- **Tailwind CSS** - Utility-first CSS framework
- **Framer Motion** - Animation library
- **React Simple Typewriter** - Typing animation effect
- **React Icons** - Icon library
- **Axios** - HTTP client
- **React Hot Toast** - Toast notifications

### Backend
- **Spring Boot 3** - Java framework
- **Spring Data JPA** - Data persistence
- **MySQL** - Database
- **Spring Validation** - Input validation
- **Lombok** - Java boilerplate reduction

## 📁 Project Structure

```
My-Portfolio/
├── frontend/          # React application
│   ├── src/
│   │   ├── components/
│   │   │   ├── Hero.jsx
│   │   │   ├── About.jsx
│   │   │   ├── Skills.jsx
│   │   │   ├── Projects.jsx
│   │   │   ├── Contact.jsx
│   │   │   ├── Navbar.jsx
│   │   │   └── Footer.jsx
│   │   ├── App.jsx
│   │   ├── main.jsx
│   │   └── index.css
│   ├── package.json
│   ├── vite.config.js
│   ├── tailwind.config.js
│   └── postcss.config.js
└── backend/           # Spring Boot application
    ├── src/main/java/com/aftab/portfolio/
    │   ├── PortfolioApplication.java
    │   ├── controller/
    │   │   └── ContactController.java
    │   ├── model/
    │   │   └── Contact.java
    │   ├── repository/
    │   │   └── ContactRepository.java
    │   └── service/
    │       └── ContactService.java
    ├── src/main/resources/
    │   └── application.properties
    └── pom.xml
```

## 🛠️ Setup Instructions

### Prerequisites
- Node.js (v16 or higher)
- Java 17
- Maven
- MySQL

### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd My-Portfolio/frontend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

4. Open [http://localhost:5173](http://localhost:5173) in your browser.

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd My-Portfolio/backend
   ```

2. Update database configuration in `src/main/resources/application.properties`:
   ```properties
   spring.datasource.username=your_mysql_username
   spring.datasource.password=your_mysql_password
   ```

3. Run the Spring Boot application:
   ```bash
   mvn spring-boot:run
   ```

4. The API will be available at [http://localhost:8080](http://localhost:8080).

## 🎨 Features

- **Responsive Design** - Works on all devices
- **Dark Theme** - Modern dark theme with glassmorphism
- **Smooth Animations** - Powered by Framer Motion
- **Typing Animation** - Dynamic hero section
- **GitHub Integration** - Auto-fetch latest repositories
- **Contact Form** - Functional backend integration
- **SEO Optimized** - Meta tags and performance optimized

## 📧 Contact Form

The contact form sends data to the Spring Boot backend and stores it in MySQL database.

API Endpoint: `POST /api/contact`

Request Body:
```json
{
  "name": "Aftab",
  "email": "demo@example.com",
  "message": "Hello, I want to connect!"
}
```

## 🚀 Deployment

### Frontend Deployment (Vercel/Netlify)

1. Build the project:
   ```bash
   npm run build
   ```

2. Deploy the `dist` folder to your hosting platform.

### Backend Deployment

1. Build the JAR file:
   ```bash
   mvn clean package
   ```

2. Deploy the JAR file to your server or cloud platform (Heroku, AWS, etc.).

## 📝 Environment Variables

Create a `.env` file in the frontend root for production:

```env
VITE_API_BASE_URL=https://your-backend-url.com/api
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Md Aftab Alam**
- Portfolio: [Your Portfolio URL]
- LinkedIn: [Your LinkedIn]
- GitHub: [[Your GitHub]](https://github.com/AftabAlam007)
- Email: aftab.alam@example.com
=======
# My-Portfolio
>>>>>>> a3689073ff48b392a94379e0002f0bd24cc6d765
