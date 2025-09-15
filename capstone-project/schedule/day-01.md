# Snapptale — Day 1 Development Guide  
### Kickoff, Tooling Setup & Initial UI Scaffold with React Router  
*Goal: Complete within ~2 hours tonight*

***

## 🚦 Day 1: Project Kickoff – Tooling, Planning and Environment Setup

### Goal:
By the end of today’s 2-hour session, you will have:  
- Installed and configured all essential tools  
- Bootstrapped a fresh Next.js + React + TypeScript app with Tailwind CSS & ESLint  
- Initialized Git version control  
- Set up basic React App Routing for multi-page navigation  
- Created a simple placeholder landing page with a disabled upload input  
- Written a clear roadmap for the following development steps

***

### 1. 📋 What You’re Building Today  
You will create the very first working version of **Snapptale**, a web app that:  
- Lets users upload a child’s photo (UI placeholder only at this stage)  
- Has multiple routes (pages) ready for future storybook steps  
- Shows a welcoming landing homepage  
> **Note:** No AI integration today—focus on setting up routing and your dev environment.

***

### 2. 🛠 Essential Tools Setup — Install & Prepare

| Tool                 | Purpose                                               | Where to Get / Notes                                           |
|----------------------|------------------------------------------------------|----------------------------------------------------------------|
| **Node.js (LTS)**    | Run JavaScript runtime & Next.js framework           | [https://nodejs.org](https://nodejs.org) (v18+ recommended)    |
| **Git**              | Version control                                       | [https://git-scm.com](https://git-scm.com)                    |
| **Qoder IDE**        | Your preferred development environment                | Download and install the latest from your source               |
| **GitHub Account**   | Remote Git repository hosting                         | [https://github.com](https://github.com)                      |
| **React + Next.js**  | React app framework with SSR & routing                | Installed via `create-next-app` CLI                            |
| **TypeScript**       | Typed superset of JavaScript for code safety          | Integrated via scaffolding                                      |
| **Tailwind CSS**     | Utility-first CSS for fast styling & responsiveness   | Setup integrated in Next.js scaffolding                        |
| **ESLint**           | Linting & code quality                                | Setup integrated in scaffolding                                |
| **React Router DOM** | Client-side routing library for React apps           | To be added via npm; enables multi-page SPA routing            |
| **Google Gemini CLI + Qoder AI Tool** | AI assistant to speed up coding           | Configure in Qoder for contextual AI fetch & code generation   |
| **Figma (optional)** | UI design and prototyping                             | [https://figma.com](https://figma.com), good for early UI sketching                 |

***

### 3. 🏗 Step-by-Step for Day 1 (First 2 Hours)

***

#### 0 - Prepare Your Environment (Approx. 20 minutes)

1. **Install Node.js and Git.**  
   Verify with:  
   ```bash
   node -v
   git --version
   ```
2. **Install or Open Qoder IDE.**  
   Enable **Google Gemini CLI** and **Qoder AI assistant** plugins.

***

#### 1 - Initialize Your Project Folder & Git (10 minutes)

In Qoder terminal:

```bash
mkdir snapptale
cd snapptale
git init
```

Create GitHub repo “snapptale” and link it (optional for today).

***

#### 2 - Bootstrap Your App with Next.js + Tailwind + TypeScript + ESLint (20 minutes)

Run:

```bash
npx create-next-app@latest . --typescript --eslint --tailwind
```

Confirm Yes to TS, ESLint, Tailwind CSS prompts, No to experimental features.

***

#### 3 - Install React Router DOM (5 minutes)

Install React Router DOM for client-side routing:

```bash
npm install react-router-dom @types/react-router-dom
```

***

#### 4 - Set Up Basic React Routing (30 minutes)

In `src` folder, create router boilerplate:

- Create `src/App.tsx` with routing logic:

```tsx
import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import Home from './pages/Home';
import Upload from './pages/Upload';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/upload" element={<Upload />} />
        <Route path="*" element={<Navigate replace to="/" />} />
      </Routes>
    </Router>
  );
}

export default App;
```

- Create folder `/pages` and inside create:

`Home.tsx`:
```tsx
import React from 'react';
import { Link } from 'react-router-dom';

export default function Home() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-6">
      <h1 className="text-5xl font-extrabold mb-6 text-blue-600">Snapptale</h1>
      <p className="text-lg mb-8">Welcome! Start by uploading a photo of your child.</p>
      <Link
        to="/upload"
        className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded"
      >
        Go to Upload
      </Link>
    </main>
  );
}
```

`Upload.tsx`:
```tsx
import React from 'react';

export default function Upload() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-6">
      <h1 className="text-4xl font-bold mb-6">Upload Photo</h1>
      <input
        type="file"
        accept="image/*"
        className="mb-8 p-2 border border-gray-400 rounded"
        disabled
      />
      <button className="bg-blue-500 text-white px-6 py-3 rounded opacity-50 cursor-not-allowed" disabled>
        Next (coming soon)
      </button>
    </main>
  );
}
```

- Update `src/pages/index.tsx` to just render `<App />`:

```tsx
import React from 'react';
import App from '../App';

export default function Index() {
  return <App />;
}
```

***

#### 5 - Run & Verify (5 minutes)

```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000), verify navigation from homepage to upload page.

***

#### 6 - Initial Git Commit (5 minutes)

```bash
git add .
git commit -m "Setup Next.js with React Router, Tailwind, TS scaffold; Home and Upload pages"
```

***

#### 7 - Write Your Development Roadmap (5 minutes)

Create/update `README.md` or notes with:

```markdown
## Snapptale Development Roadmap

### Day 1 - Setup & Initial UI with Routing (Done)

- Scaffolded Next.js + TypeScript + Tailwind + React Router
- Created Home & Upload pages with navigation

### Day 2 - Enable photo upload & preview

- Implement real file input & image preview on Upload page
- Setup backend API for file storage

### Day 3 - Integrate Gemini CLI for AI image & story generation

- Add API calls for AI character art & story text

### Day 4 - Show interactive storybook preview

- Render generated story chapters and images
- Add error and loading states

### Day 5-7 - Export, polish, test, deploy MVP
```

***

### Coach’s Pro Tips for Today:

- Use **Google Gemini CLI** and **Qoder AI Tool** inside Qoder IDE to generate code snippets for routing, components, and API calls quickly.  
- Test navigation repeatedly to confirm routing works smoothly.  
- Customize Tailwind config later to incorporate vibe’s color scheme.

***

### What You’ll Have by Tonight:  
- React app scaffolded with TS, Tailwind, ESLint, and **React Router**  
- Multi-page SPA running locally with Home and Upload routes  
- Disabled upload input UI ready for next steps  
- Git repo synced and roadmap committed

***

### Want Next Steps?  
Just ask:  
**“Guide me through Day 2: Implementing file upload & image preview for Snapptale”**

***

**Follow this stepwise guide exactly and you’ll finish your first day strong, laying a solid foundation for a scalable React app with routing!**  
I’m here to help with any config files, snippets, or troubleshooting as you go.
