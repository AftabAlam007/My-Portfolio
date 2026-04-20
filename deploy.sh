# Deployment Checklist Script

echo "🚀 Portfolio Deployment Checklist"
echo "================================="

echo ""
echo "✅ STEP 1: Backend Deployment (Railway)"
echo "1. Go to railway.app"
echo "2. Connect GitHub repository"
echo "3. Deploy from 'backend' folder"
echo "4. Note the backend URL: https://your-project.railway.app"
echo ""

echo "✅ STEP 2: Frontend Deployment (Vercel)"
echo "1. Go to vercel.com"
echo "2. Connect GitHub repository"
echo "3. Set Root Directory to: frontend/"
echo "4. Add Environment Variable:"
echo "   VITE_API_BASE_URL=https://your-railway-backend.railway.app/api"
echo "5. Deploy"
echo ""

echo "✅ STEP 3: Update Backend CORS"
echo "1. Go to Railway dashboard"
echo "2. Add Environment Variable:"
echo "   FRONTEND_URL=https://your-vercel-frontend.vercel.app"
echo "3. Redeploy backend"
echo ""

echo "🎉 Deployment Complete!"
echo "Frontend: https://your-project.vercel.app"
echo "Backend: https://your-project.railway.app"