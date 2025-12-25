# 🚀 Deploy to GitHub + GoDaddy Custom Domain

## Complete Guide: keshav.bulia.ai

---

## PART 1: Push to GitHub (5 minutes)

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `portfolio` (or any name you like)
3. Description: "Personal Portfolio Website"
4. Make it **Public**
5. **DO NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### Step 2: Push Your Code

Open Terminal and run these commands:

```bash
cd "/Users/keshav/Downloads/Thomas Gültzow_files/keshav-portfolio"

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial portfolio website"

# Add your GitHub repository (REPLACE with your actual username)
git remote add origin https://github.com/YOUR-USERNAME/portfolio.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Replace `YOUR-USERNAME`** with your actual GitHub username!

---

## PART 2: Deploy to Netlify (2 minutes)

### Why Netlify?
- Free hosting
- Automatic HTTPS
- Easy custom domain setup
- Auto-deploys when you update GitHub

### Step 1: Connect to Netlify

1. Go to https://app.netlify.com/
2. Sign up/Login (use GitHub account)
3. Click **"Add new site"** → **"Import an existing project"**
4. Choose **"GitHub"**
5. Authorize Netlify to access your GitHub
6. Select your **portfolio** repository
7. Deploy settings:
   - **Build command:** (leave empty)
   - **Publish directory:** `/` or `.`
8. Click **"Deploy site"**

Wait 30-60 seconds... Your site is now live! 🎉

You'll get a URL like: `https://random-name-12345.netlify.app`

---

## PART 3: Connect Custom Domain (10 minutes)

### Step 1: Set Up Custom Domain in Netlify

1. In your Netlify site dashboard, go to **"Domain settings"**
2. Click **"Add custom domain"**
3. Enter: `keshav.bulia.ai`
4. Click **"Verify"**
5. Netlify will show DNS instructions - **Keep this page open!**

### Step 2: Configure DNS in GoDaddy

1. Go to https://dcc.godaddy.com/
2. Login to your GoDaddy account
3. Find your domain **bulia.ai** and click **"DNS"**
4. You'll see the DNS Management page

### Step 3: Add CNAME Record

**Add a new record:**

| Type  | Name     | Value                          | TTL        |
|-------|----------|--------------------------------|------------|
| CNAME | keshav   | YOUR-SITE-NAME.netlify.app     | 600 (or 1 Hour) |

**Replace `YOUR-SITE-NAME`** with your actual Netlify site name!

**Example:**
- Type: `CNAME`
- Name: `keshav`
- Value: `amazing-portfolio-12345.netlify.app` (your Netlify URL without https://)
- TTL: `600` or `1 Hour`

**Steps in GoDaddy:**
1. Click **"Add"** button
2. Select **"CNAME"** from dropdown
3. Name: `keshav`
4. Value: Your Netlify URL (without https://)
5. TTL: 1 Hour
6. Click **"Save"**

### Step 4: Wait for DNS Propagation

- DNS changes take 5-60 minutes (sometimes up to 24 hours)
- Usually works within 10-15 minutes
- Check status at: https://dnschecker.org/

### Step 5: Enable HTTPS in Netlify

1. Back in Netlify → Domain settings
2. Wait for "DNS verification" to complete (green checkmark)
3. Scroll to **"HTTPS"** section
4. Click **"Verify DNS configuration"**
5. Wait for SSL certificate (2-5 minutes)
6. Once ready, enable **"Force HTTPS"**

---

## 🎉 You're Done!

Your site will be live at: **https://keshav.bulia.ai**

---

## Quick Command Reference

### Initial GitHub Push:
```bash
cd "/Users/keshav/Downloads/Thomas Gültzow_files/keshav-portfolio"
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR-USERNAME/portfolio.git
git branch -M main
git push -u origin main
```

### Update Your Site Later:
```bash
cd "/Users/keshav/Downloads/Thomas Gültzow_files/keshav-portfolio"
git add .
git commit -m "Update content"
git push
```

Netlify will auto-deploy in ~30 seconds!

---

## Troubleshooting

### "Git command not found"
Install Git: https://git-scm.com/downloads

### "Permission denied (GitHub)"
Set up SSH key or use Personal Access Token:
- https://docs.github.com/en/authentication

### "DNS not updating"
- Wait longer (up to 24 hours)
- Clear DNS cache: `sudo dscacheutil -flushcache` (Mac)
- Check at: https://dnschecker.org/

### "SSL certificate not provisioning"
- Make sure CNAME is correct
- Wait 10-15 minutes
- Remove and re-add custom domain in Netlify

### "Site shows Netlify 404"
- Check deploy settings
- Make sure Publish directory is `/` or `.`
- Redeploy in Netlify

---

## Alternative: GitHub Pages + GoDaddy

If you prefer GitHub Pages instead of Netlify:

### GitHub Pages Setup:
1. Go to repository Settings → Pages
2. Source: `main` branch, `/` root
3. Save

### GoDaddy DNS for GitHub Pages:
Add these records:

**A Records:**
| Type | Name | Value           |
|------|------|-----------------|
| A    | @    | 185.199.108.153 |
| A    | @    | 185.199.109.153 |
| A    | @    | 185.199.110.153 |
| A    | @    | 185.199.111.153 |

**CNAME Record:**
| Type  | Name   | Value                      |
|-------|--------|----------------------------|
| CNAME | keshav | YOUR-USERNAME.github.io    |

Then in your repo, add file `CNAME` with content:
```
keshav.bulia.ai
```

**Note:** GitHub Pages with custom subdomain is more complex. Netlify is recommended!

---

## Recommended: Netlify Method

**Why Netlify is better:**
- ✅ Easier custom domain setup
- ✅ Automatic HTTPS
- ✅ Faster deployment
- ✅ Better performance
- ✅ Free tier is generous
- ✅ Auto-deploys on git push
- ✅ Built-in form handling
- ✅ Better error pages

---

## Next Steps After Deployment

1. ✅ Test site at keshav.bulia.ai
2. ✅ Test on mobile device
3. ✅ Add URL to CV
4. ✅ Add to LinkedIn
5. ✅ Share in applications

---

## Support

- Netlify Docs: https://docs.netlify.com/
- GoDaddy DNS Help: https://www.godaddy.com/help/manage-dns-records-680
- GitHub Help: https://docs.github.com/

---

**Ready to start? Let's do Step 1! 🚀**
