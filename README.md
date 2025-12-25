# Keshav Bulia - Personal Portfolio

A clean, modern, and responsive personal portfolio website showcasing research experience, projects, and technical skills.

## 🌟 Features

- **Fully Responsive**: Works seamlessly on desktop, tablet, and mobile devices
- **Modern Design**: Clean UI with smooth animations and transitions
- **Performance Optimized**: Vanilla JavaScript - no heavy frameworks
- **Easy to Deploy**: Ready for GitHub Pages or Netlify deployment
- **Accessible**: Semantic HTML and ARIA labels for better accessibility
- **SEO Friendly**: Proper meta tags and semantic structure

## 🚀 Quick Start

### Local Development

1. Clone this repository:
```bash
git clone <your-repo-url>
cd keshav-portfolio
```

2. Open `index.html` in your browser:
```bash
# On macOS
open index.html

# On Linux
xdg-open index.html

# On Windows
start index.html
```

Or use a simple HTTP server:
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js (install http-server globally first: npm i -g http-server)
http-server
```

Then visit `http://localhost:8000`

## 📦 Deployment

### GitHub Pages

1. Create a new repository on GitHub
2. Push your code:
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

3. Go to Settings > Pages
4. Select `main` branch and `/root` folder
5. Save and wait for deployment

Your site will be live at: `https://<username>.github.io/<repo-name>/`

### Netlify

#### Option 1: Drag & Drop
1. Visit [Netlify](https://www.netlify.com/)
2. Sign up/Login
3. Drag the entire `keshav-portfolio` folder to Netlify
4. Done! Your site is live

#### Option 2: Git Integration
1. Push your code to GitHub
2. Connect your GitHub repository to Netlify
3. Deploy settings:
   - Build command: (leave empty)
   - Publish directory: `/`
4. Deploy!

## 🎨 Customization

### Colors
Edit the CSS variables in `styles.css`:
```css
:root {
    --primary-color: #2563eb;
    --primary-dark: #1e40af;
    --accent-color: #0ea5e9;
    /* ... more colors */
}
```

### Content
All content is in `index.html`. Simply search for the section you want to edit and update the text.

### Adding New Sections
1. Add the HTML structure in `index.html`
2. Style it in `styles.css`
3. Add any interactions in `script.js`

## 📁 File Structure

```
keshav-portfolio/
│
├── index.html          # Main HTML file
├── styles.css          # All styles and animations
├── script.js           # JavaScript for interactions
└── README.md          # This file
```

## 🛠️ Technologies Used

- **HTML5**: Semantic markup
- **CSS3**: Modern styling with Grid and Flexbox
- **JavaScript (ES6+)**: Vanilla JS for interactions
- **Font Awesome**: Icons
- **Google Fonts**: Inter font family

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## 📝 License

Feel free to use this template for your own portfolio. Attribution appreciated but not required.

## 📧 Contact

- Email: 21d110008@iitb.ac.in
- LinkedIn: [keshav-bulia](https://www.linkedin.com/in/keshav-bulia-67b70a228)
- GitHub: [bulia-keshav](https://github.com/bulia-keshav)

---

Built with ❤️ by Keshav Bulia
