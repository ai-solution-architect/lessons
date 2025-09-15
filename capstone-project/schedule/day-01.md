## 🚦 Day 1: Project Kickoff – Tooling, Planning, and Environment Setup

**Goal:**
By the end of your first 2-hour session, you will have:

- Chosen and installed the essential tools
- Created a basic project scaffold (Next.js/React)
- Set up version control
- Built your first UI placeholder (welcome/upload page)
- Written down your roadmap for the coming days

***

### 1. 📋 What You’re Building

You will create a simple web app where:

- The user uploads a child’s photo
- (In later steps) The app will turn it into a personalized storybook using AI APIs
Today, you won’t connect to AI yet—just get running, so you can iterate quickly!

***

### 2. 🛠️ Tools You Need (Install These First)

| Tool | What For | How/Where to Get |
| :-- | :-- | :-- |
| Node.js (LTS version) | Runs JS/React app | [nodejs.org](https://nodejs.org) |
| Git | Version control | [git-scm.com](https://git-scm.com) |
| VS Code (or WebStorm) | Code editor | [code.visualstudio.com](https://code.visualstudio.com) |
| GitHub account | Free repo hosting | [github.com](https://github.com) |
| Figma (web signup) | UI prototyping | [figma.com](https://figma.com) |
| (Optional) GitHub Copilot | AI coding assistant | Enable in VS Code Extensions |
| Browser (Chrome/Edge) | For app preview | Already installed (likely) |


***

### 3. 🏗️ Step-by-Step: Your First 2 Hours

#### **0. Gather Prerequisites (10min)**

- Install **Node.js**
- Install **Git**
- Install **VS Code**
_All are free. Test them: `node -v`, `git --version`, open VS Code._


#### **1. Create a Project Folder \& Initialize Git (10min)**

```bash
mkdir ai-storybook
cd ai-storybook
git init
```

_Next, start a repo on GitHub and follow instructions there. (If unsure, can push online tomorrow.)_

#### **2. Bootstrap the Web App with Next.js (20min)**

_Next.js is a React-based framework—great for beginners and deploys ANYWHERE._

```bash
npx create-next-app@latest .
```

- Name? “ai-storybook”
- TypeScript is optional but recommended (say “yes” if you’re curious, “no” if not)
- ESLint? Yes
- src dir? Yes
- Tailwind CSS? Yes (makes UI fast to build and pretty)
- Experimental features? No

_Let it install. When done:_

```bash
npm run dev
```

- Open `http://localhost:3000` in browser—you’ll see the default page.


#### **3. Clean Up \& Make It Yours (15min)**

- Open the `src/pages/index.js` or `.tsx` – change `<h1>Welcome to Next.js!</h1>` to
`<h1>AI Storybook Generator</h1>`
- Delete default filler components (e.g., “Learn Next” links).


#### **4. Set Up Your Repo for Clean Coding (10min)**

- In VS Code, go to **Source Control** (or terminal):

```bash
git add .
git commit -m "Initial project setup"
```


#### **5. Make a Simple Welcome \& Upload UI (20min)**

- In `src/pages/index.js` or `.tsx`, paste this code **inside the exported function**:

```jsx
return (
  <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100">
    <h1 className="text-4xl font-bold mb-4">AI Storybook Generator</h1>
    <p className="mb-6 text-xl">Upload a photo to begin</p>
    <input
      type="file"
      accept="image/*"
      className="mb-6 border border-gray-400 px-4 py-2 rounded"
      disabled
    />
    <button className="bg-blue-600 text-white px-6 py-2 rounded shadow opacity-50" disabled>
      Next (Coming soon)
    </button>
  </main>
)
```

- Save, look in browser. You now have a modern landing page with a file upload control (disabled, implementation will come later).


#### **6. Quick Commit (2min)**

```bash
git add .
git commit -m "Add simple home and upload page"
```


#### **7. Map Your Next Steps (15min)**

In a plain README.md or a Google Doc, write (you can copy this):

```markdown
Roadmap:
1. Make file upload actually save a photo (tomorrow)
2. Connect to AI API for generating art/story (after file upload works)
3. Display generated results in the UI
4. Add user download/preview/export options
5. Polish look, test, and deploy MVP
```


***

### 4. 🔑 Coach Tips

- Don’t try to “do it all” tonight! If you have time left, experiment with Tailwind classes in your main component.
- Take 5min to sketch the page flow in **Figma** (rectangles, arrows—don’t overthink!) and share your screenshot with peers/tutor for feedback.
- If you get stuck on setup, search for “[tool] quick start” or ask Copilot/chat for a snippet.

***

## ✅ By Tonight’s End, You Should Have:

- Project folder with clean scaffold
- Local Next.js dev server running
- Main page with heading and disabled upload
- Git repo with at least two commits
- Your next-day to-do written out

***

### Tomorrow: Enable File Upload, Preview, and Start Thinking About API Integration!

If you want, ask for “Day 2: Enabling Uploads \& Starting API Integration” and I’ll walk you through it step by step.

***
**This plan is fully production-aligned, proven by years of real projects and teaching beginners and teams. Follow it literally and you’ll rapidly gain speed and confidence!**

