# Keshav Bulia Portfolio - Deployment Guide

## 🚀 Quick Deploy to Netlify

### Method 1: Drag & Drop (Easiest - 2 minutes)

1. **Prepare the folder**
   - Make sure all files are in the `keshav-portfolio` folder
   - Files needed: `index.html`, `styles.css`, `script.js`, `netlify.toml`

2. **Deploy to Netlify**
   - Go to https://app.netlify.com/drop
   - Drag the entire `keshav-portfolio` folder onto the page
   - Wait 10-30 seconds
   - Done! You'll get a URL like: `https://random-name-12345.netlify.app`

3. **Customize your URL** (Optional)
   - Click "Site settings"
   - Click "Change site name"
   - Enter: `keshav-bulia` (or any available name)
   - Your site will be: `https://keshav-bulia.netlify.app`

---

### Method 2: GitHub + Netlify (Recommended for updates)

#### Step 1: Push to GitHub

```bash
cd "/Users/keshav/Downloads/Thomas Gültzow_files/keshav-portfolio"

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial portfolio website"

# Create a new repository on GitHub (do this first!)
# Then connect it:
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

#### Step 2: Connect to Netlify

1. Go to https://app.netlify.com/
2. Click "Add new site" → "Import an existing project"
3. Choose "GitHub" and authorize
4. Select your repository
5. Deploy settings:
   - **Build command**: (leave empty)
   - **Publish directory**: `/`
6. Click "Deploy site"
7. Done! Your site is live

#### Step 3: Custom Domain (Optional)

- In Netlify: Site settings → Domain management → Add custom domain
- Follow instructions to configure DNS

---

## 🎯 GitHub Pages Alternative

### Deploy to GitHub Pages

```bash
cd "/Users/keshav/Downloads/Thomas Gültzow_files/keshav-portfolio"

# Initialize git (if not done already)
git init
git add .
git commit -m "Initial commit"

# Create repo on GitHub, then:
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
git branch -M main
git push -u origin main
```

Then on GitHub:
1. Go to repository Settings
2. Click "Pages" in the sidebar
3. Under "Source", select `main` branch
4. Select `/root` folder
5. Click Save

Your site will be live at: `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

---

## 📝 Making Updates

### If using Netlify with GitHub:
```bash
# Make your changes to the files
# Then:
git add .
git commit -m "Update content"
git push
```
Netlify will auto-deploy in ~30 seconds!

### If using drag & drop:
- Just drag the folder again to Netlify
- It will update the existing site

---

## ✅ Pre-Deployment Checklist

Before deploying, make sure:

- [ ] All links work (test locally)
- [ ] All external links open in new tabs
- [ ] Mobile responsive (test by resizing browser)
- [ ] No console errors (press F12 → Console)
- [ ] Update email/social links if needed
- [ ] Update content to match your CV
- [ ] Test on multiple browsers

---

## 🎨 Quick Customizations

### Change Colors
Edit `styles.css` line 13-22:
```css
:root {
    --primary-color: #2563eb;  /* Change this */
    --primary-dark: #1e40af;   /* And this */
    /* ... */
}
```

### Update Content
Just edit `index.html` - search for the section you want to change.

### Add Your Photo (Optional)
1. Add an image file to the folder (e.g., `profile.jpg`)
2. In `index.html`, find the hero section
3. Add: `<img src="profile.jpg" alt="Keshav Bulia" class="hero-image">`
4. Style it in `styles.css`

---

## 🆘 Troubleshooting

**Problem**: Site not loading
- **Solution**: Check all file names are correct (case-sensitive)

**Problem**: Styles not working
- **Solution**: Make sure `styles.css` is in the same folder as `index.html`

**Problem**: JavaScript not working
- **Solution**: Check browser console for errors (F12)

**Problem**: Links not working
- **Solution**: Make sure all URLs start with `http://` or `https://`

---

## 📧 Need Help?

If you run into issues:
1. Check the browser console (F12 → Console tab)
2. Validate HTML: https://validator.w3.org/
3. Test locally first before deploying

---

## 🎉 Next Steps After Deployment

1. Share your website URL in your:
   - Resume/CV
   - LinkedIn profile
   - Email signature
   - Graduate school applications

2. Monitor analytics (optional):
   - Add Google Analytics
   - Use Netlify Analytics

3. Keep it updated:
   - Add new projects
   - Update research progress
   - Add publications when available

---

**Your site will be live and impressive! Good luck with your MSCS applications! 🚀**
