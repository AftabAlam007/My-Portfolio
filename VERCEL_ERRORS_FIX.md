# 🚨 **VERCEL DEPLOYMENT ERRORS - FIX GUIDE**

## 🔍 **Why You're Getting Errors:**

### **Error 1: Wrong Deployment Directory**
- **Problem:** Deploying entire project instead of `frontend/` folder
- **Solution:** Deploy only the `frontend` directory to Vercel

### **Error 2: Missing Environment Variables**
- **Problem:** `VITE_API_BASE_URL` not set in Vercel dashboard
- **Solution:** Add environment variable in Vercel

### **Error 3: API Calls Failing**
- **Problem:** Backend not deployed yet, so contact form fails
- **Solution:** Deploy backend first to Railway

---

## ✅ **STEP-BY-STEP FIX:**

### **Step 1: Deploy Backend to Railway FIRST**
```bash
# Backend is ready - just deploy to Railway
# Get URL like: https://your-project.railway.app
```

### **Step 2: Deploy Frontend to Vercel**
1. **Go to Vercel Dashboard**
2. **Import Project:**
   - Connect GitHub repository
   - **IMPORTANT:** Set "Root Directory" to `frontend/`
   - This tells Vercel to deploy only the frontend folder

3. **Configure Build Settings:**
   - Framework Preset: `Vite`
   - Build Command: `npm run build`
   - Output Directory: `dist`

4. **Add Environment Variables:**
   ```
   VITE_API_BASE_URL=https://your-railway-backend.railway.app/api
   ```

5. **Deploy**

### **Step 3: Update Backend CORS**
After frontend deploys, update Railway environment:
```
FRONTEND_URL=https://your-vercel-frontend.vercel.app
```

---

## 🔧 **Current Vercel Configuration (frontend/vercel.json):**

```json
{
  "version": 2,
  "builds": [
    {
      "src": "package.json",
      "use": "@vercel/static-build",
      "config": {
        "distDir": "dist"
      }
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ],
  "outputDirectory": "dist"
}
```

---

## 🚨 **Common Mistakes to Avoid:**

| ❌ **Wrong** | ✅ **Correct** |
|-------------|---------------|
| Deploy entire project to Vercel | Deploy only `frontend/` folder |
| No environment variables | Set `VITE_API_BASE_URL` in Vercel |
| Deploy frontend before backend | Deploy backend to Railway first |
| Root directory = `/` | Root directory = `frontend/` |

---

## 📊 **Expected Result:**
- ✅ Frontend deploys successfully
- ✅ Contact form works (after backend is live)
- ✅ All animations and features work
- ✅ No runtime errors

---

## 🎯 **Quick Test:**
After deployment, check:
1. **Frontend loads:** `https://your-project.vercel.app`
2. **Contact form:** Should show error initially (backend not live yet)
3. **After backend deployment:** Contact form should work

**Deploy backend first, then frontend!** 🚀