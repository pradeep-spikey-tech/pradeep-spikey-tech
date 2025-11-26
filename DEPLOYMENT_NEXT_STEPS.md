# Final Deployment Step

## ✅ Completed So Far

- ✅ Git repository initialized
- ✅ All 7 files staged (index.html, images, CNAME, README, etc.)
- ✅ Initial commit created
- ✅ Connected to GitHub repository: `pradeep-spikey-tech.github.io`

---

## 🚀 Next: Push to GitHub

### Step 1: Run the Push Command

Open Terminal and run:

```bash
cd /Volumes/Prado/Documents/Resume
git push -u origin main
```

### Step 2: Enter Credentials

When prompted:

**Username:** `pradeep-spikey-tech`

**Password:** Paste your Personal Access Token (starts with `ghp_...`)

- ⚠️ When you paste, you won't see anything (this is normal for security)
- Just paste and press Enter

### Expected Output:

```
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (9/9), done.
Writing objects: 100% (10/10), 1.5 MiB | 2.5 MiB/s, done.
Total 10 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/pradeep-spikey-tech/pradeep-spikey-tech.github.io.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

---

## ⚙️ After Successful Push: Enable GitHub Pages

### Step 3: Configure GitHub Pages

1. **Go to:** https://github.com/pradeep-spikey-tech/pradeep-spikey-tech.github.io/settings/pages

2. **Under "Build and deployment":**

   - **Source:** Deploy from a branch
   - **Branch:** main (select from dropdown)
   - **Folder:** / (root) (select from dropdown)
   - Click **Save**

3. **Under "Custom domain":**
   - Enter: `resume.everythingjournal.app`
   - Click **Save**
   - Wait for DNS check
   - Once verified, check **"Enforce HTTPS"**

### Step 4: Configure DNS

At your DNS provider (where you manage everythingjournal.app):

**Add CNAME Record:**

```
Type: CNAME
Name: resume
Value: pradeep-spikey-tech.github.io
TTL: 3600
```

---

## 🎉 Your Resume Will Be Live At:

- **GitHub URL:** https://pradeep-spikey-tech.github.io
- **Custom URL:** https://resume.everythingjournal.app (after DNS propagates)

---

## 🐛 Troubleshooting

### "Authentication failed"

- Make sure you're using the Personal Access Token (not your GitHub password)
- Token should start with `ghp_...`
- Create new token at: https://github.com/settings/tokens

### "Repository not found"

- Verify repository name is exactly: `pradeep-spikey-tech.github.io`
- Check repository exists at: https://github.com/pradeep-spikey-tech/pradeep-spikey-tech.github.io

### Custom domain not working

- Wait 15-30 minutes for DNS propagation
- Verify CNAME record at DNS provider
- Check CNAME file contains: `resume.everythingjournal.app`

---

## 📞 After You Push

Let me know once you've successfully pushed, and I'll help you verify everything is working correctly!
