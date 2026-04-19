# Environment Configuration

## Development Environment Setup

### Prerequisites
- Node.js v16+
- Java 17
- Maven 3.6+
- MySQL 8.0+
- Git

### Frontend Environment Variables

Create a `.env.local` file in the frontend directory:

```env
VITE_API_BASE_URL=http://localhost:8080/api
```

### Backend Environment Variables

For production, set these environment variables:

```bash
DB_HOST=your-database-host
DB_PORT=3306
DB_NAME=portfolio_db
DB_USER=root
DB_PASSWORD=your_password

MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USER=your-email@gmail.com
MAIL_PASSWORD=your-app-specific-password
```

## Project Links to Update

### Edit these files with your actual information:

1. **Frontend - Hero Section** (`src/components/Hero.jsx`)
   - Name: Aftab Alam
   - Title: Java Full Stack Developer | AI Builder

2. **Frontend - Footer** (`src/components/Footer.jsx`)
   - Social media links (GitHub, LinkedIn, Twitter)
   - Email address
   - Contact phone number

3. **Frontend - Projects** (`src/components/Projects.jsx`)
   - Project titles and descriptions
   - Live demo links
   - GitHub repository links

4. **Backend - Application Properties** (`application.properties`)
   - Database URL
   - Database credentials
   - Email configuration

## Database Schema

```sql
CREATE TABLE contacts (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message VARCHAR(1000) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Running the Application

### Development Mode

**Terminal 1 - Backend:**
```bash
cd backend
mvn spring-boot:run
```

**Terminal 2 - Frontend:**
```bash
cd frontend
npm run dev
```

### Production Build

**Frontend:**
```bash
cd frontend
npm run build
# Output: dist folder
```

**Backend:**
```bash
cd backend
mvn clean package -DskipTests
# Output: target/portfolio-backend-0.0.1-SNAPSHOT.jar
```

## Testing the API

### Using cURL

```bash
curl -X POST http://localhost:8080/api/contact \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Test User",
    "email": "test@example.com",
    "message": "This is a test message"
  }'
```

### Using Postman

1. Create POST request to `http://localhost:8080/api/contact`
2. Set Content-Type header to `application/json`
3. Add request body (JSON)
4. Send request

## Performance Optimization

### Frontend
- CSS: Tailwind CSS (optimized builds)
- Images: Use optimized formats (WebP, SVG)
- Code splitting: Already configured in Vite

### Backend
- Database: Add indexes on frequently queried columns
- Caching: Implement Redis for better performance
- Connection pooling: Configure HikariCP

## Security Considerations

1. Store sensitive data in environment variables
2. Enable CORS only for trusted origins
3. Validate all input on the backend
4. Use HTTPS in production
5. Keep dependencies updated
6. Use Spring Security for authentication (if needed later)