# Railway Deployment Guide

## Backend Deployment Steps

### 1. Prepare Your Code
✅ All necessary changes have been made for Railway deployment:
- Database changed from MySQL to PostgreSQL
- Environment variables configured
- Procfile and railway.json created

### 2. Deploy to Railway

1. **Connect Repository:**
   - Go to [Railway.app](https://railway.app)
   - Connect your GitHub repository
   - Select the `backend` folder for deployment

2. **Database Setup:**
   - Railway will automatically provision PostgreSQL database
   - The `DATABASE_URL` environment variable will be set automatically

3. **Environment Variables:**
   Set these in Railway dashboard:
   ```
   FRONTEND_URL=https://your-frontend-domain.vercel.app
   EMAIL_USERNAME=your-email@gmail.com
   EMAIL_PASSWORD=your-app-password
   ```

4. **Deploy:**
   - Railway will auto-detect Spring Boot and deploy
   - Your backend will be live at: `https://your-project-name.railway.app`

### 3. Update Frontend
After backend deployment, update your frontend `.env.local`:
```
VITE_API_BASE_URL=https://your-railway-backend-url.railway.app/api
```

### 4. CORS Configuration
Update the `FRONTEND_URL` environment variable in Railway with your actual frontend URL.

## Troubleshooting

- **Port Issues:** Railway uses `$PORT` environment variable
- **Database:** PostgreSQL is used instead of MySQL
- **CORS:** Make sure `FRONTEND_URL` matches your frontend domain

## Testing
Test your contact form after deployment to ensure everything works!