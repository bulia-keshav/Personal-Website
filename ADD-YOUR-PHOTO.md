# 📸 How to Add Your Photo

## Quick Steps

1. **Prepare your photo:**
   - Use a professional headshot or portrait
   - Recommended: Square format (1:1 ratio)
   - Minimum size: 400x400 pixels
   - Recommended size: 800x800 pixels
   - Format: JPG or PNG

2. **Name the file:**
   - Rename your photo to: `profile.jpg`
   - Or if PNG: `profile.png` (and update HTML)

3. **Add to folder:**
   - Place `profile.jpg` in the `keshav-portfolio` folder
   - Same location as `index.html`

4. **Done!**
   - Refresh your browser
   - Your photo will appear in a beautiful circular frame

## Photo Tips for Best Results

### ✅ Good Photos:
- Professional headshot
- Clear face visibility
- Good lighting
- Plain or blurred background
- Business casual or formal attire
- Smiling or professional expression
- High resolution

### ❌ Avoid:
- Group photos
- Blurry or low-quality images
- Dark or poorly lit photos
- Distracting backgrounds
- Photos with other people
- Selfies (unless professional)

## If Using Different File Name

If your photo is named differently (e.g., `keshav.jpg`), edit `index.html`:

Find this line (around line 33):
```html
<img src="profile.jpg" alt="Keshav Bulia" class="hero-image">
```

Change to:
```html
<img src="keshav.jpg" alt="Keshav Bulia" class="hero-image">
```

## If Using PNG Instead of JPG

Edit `index.html` line 33:
```html
<img src="profile.png" alt="Keshav Bulia" class="hero-image">
```

## Temporary Placeholder

If you don't have a photo ready yet, I've set up a placeholder that will show a gradient circle. Once you add `profile.jpg`, it will automatically display your photo.

## Styling (Already Done!)

Your photo will automatically have:
- ✅ Circular frame
- ✅ White border
- ✅ Blue gradient glow effect
- ✅ Smooth hover animation
- ✅ Pulsing border effect
- ✅ Responsive sizing (200px desktop, 150px mobile)

## Testing

After adding your photo:
1. Open http://localhost:8000
2. Check the image loads correctly
3. Try hovering over it (should scale slightly)
4. Resize browser to test mobile view

## Image Optimization (Optional)

For faster loading:
1. Use https://tinypng.com/ to compress
2. Or use ImageOptim (Mac)
3. Or use Squoosh (https://squoosh.app/)

Target file size: Under 200KB

## Professional Photo Resources

Don't have a professional photo?
- Use your phone with good natural lighting
- Ask a friend to take a photo
- Use a university ID photo (if good quality)
- Consider a professional photographer
- Use LinkedIn photo (if professional)

---

**Quick summary:** Just drop `profile.jpg` in the keshav-portfolio folder and you're done! 📸
