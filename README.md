# Pradeep Kumar Raghupathy - Resume

Professional resume website hosted on GitHub Pages.

## 🌐 Live Site

**URL:** [https://yourusername.github.io](https://yourusername.github.io)  
**Custom Domain:** `resume.spikey.tech` (optional)

## 📄 About

Self-taught software developer with 10+ years of experience building production-ready mobile and web applications. Founder of **Spikey Tech Inc.**, specializing in iOS (Swift/SwiftUI), Flutter, and AI integration.

## 🚀 Quick Start

This resume is built with pure HTML/CSS and is optimized for:

- ✅ Desktop browsers
- ✅ Mobile devices (responsive design)
- ✅ PDF generation (print-friendly)
- ✅ Fast loading (no external dependencies except fonts)

## 📦 Files

```
resume/
├── index.html                          # Main resume page
├── Profile Image.jpg                   # Profile photo
├── Spikey Tech Logo - ...1x.png       # Company logo
├── README.md                           # This file
└── .gitignore                          # Git ignore rules
```

## 🛠️ Local Development

To view locally, simply open `index.html` in your browser:

```bash
open index.html
# or
python3 -m http.server 8000
# then visit http://localhost:8000
```

## 📤 Deployment

### Initial Setup

1. **Create GitHub Repository:**

   ```bash
   # Option 1: Personal site (recommended)
   # Create repo named: yourusername.github.io

   # Option 2: Project site
   # Create repo named: resume
   ```

2. **Initialize Git & Push:**

   ```bash
   cd /Volumes/Prado/Documents/Resume
   git init
   git add .
   git commit -m "Initial commit: Professional resume"
   git branch -M main
   git remote add origin https://github.com/yourusername/yourusername.github.io.git
   git push -u origin main
   ```

3. **Enable GitHub Pages:**

   - Go to repository Settings → Pages
   - Source: Deploy from branch `main`
   - Folder: `/ (root)`
   - Click Save

4. **Wait 1-2 minutes** for deployment

5. **Visit:** `https://yourusername.github.io`

### Updates

To update your resume:

```bash
# Make changes to index.html
git add .
git commit -m "Update: [describe changes]"
git push
```

GitHub Pages will auto-deploy in ~1 minute.

## 🌍 Custom Domain Setup (Optional)

### Option 1: Subdomain (resume.spikey.tech)

1. **Add CNAME file** (already created if using setup script)

2. **Configure DNS** at your domain provider:

   ```
   Type: CNAME
   Name: resume
   Value: yourusername.github.io
   TTL: 3600
   ```

3. **Enable in GitHub:**
   - Settings → Pages → Custom domain
   - Enter: `resume.spikey.tech`
   - Check "Enforce HTTPS"

### Option 2: Apex Domain (pradeepkumar.dev)

Configure DNS A records:

```
Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153
```

## 🔧 Features

- **Mobile Responsive:** Optimized for phones, tablets, and desktops
- **PDF Download:** Floating button triggers browser print dialog
- **Print Optimized:** Clean PDF output with proper page breaks
- **Fast Loading:** Minimal dependencies, optimized images
- **SEO Ready:** Proper meta tags and semantic HTML
- **Accessible:** WCAG compliant markup

## 📊 Analytics (Optional)

Add Google Analytics by inserting before `</head>`:

```html
<!-- Google Analytics -->
<script
  async
  src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"
></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() {
    dataLayer.push(arguments);
  }
  gtag("js", new Date());
  gtag("config", "G-XXXXXXXXXX");
</script>
```

## 🔗 Links

- **Website:** [www.spikey.tech](https://www.spikey.tech)
- **LinkedIn:** [pradeep-kumar-raghupathy](https://www.linkedin.com/in/pradeep-kumar-raghupathy-8125181b4)
- **Company:** [Spikey Tech Inc.](https://www.linkedin.com/company/spikeytech/)
- **Everything Journal:** [everythingjournal.app](https://everythingjournal.app)

## 📝 License

© 2025 Pradeep Kumar Raghupathy. All rights reserved.

---

**Built with:** HTML5, CSS3, JavaScript  
**Hosted on:** GitHub Pages  
**Font:** Quicksand (Google Fonts)
