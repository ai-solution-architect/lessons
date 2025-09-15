# Snapptale — Day 1 Development Guide  
### Kickoff, Tooling & Initial Scaffold with Next.js App Router  
*Goal: Complete within ~2 hours tonight*

***

## 🚦 Day 1: Kickoff & Setup — Next.js App Router + Tailwind + TypeScript

### Goal for Today  
By the end of this session you will have:

- Installed all essential tools including Node.js, Git, Qoder IDE  
- Bootstrapped a new Next.js project with the **App Router** (under `src/app`)  
- Set up TypeScript, ESLint, and Tailwind CSS  
- Created a basic homepage and an upload page routed via the new App Router  
- Written a clear roadmap for subsequent days

***

## 1. What You’re Building Today  
- A simple React-based web app named **Snapptale**  
- Homepage with welcoming title and navigation  
- Upload page with an (initially disabled) photo upload input  
- Learn newest React routing style (App Router)  
> **Note:** No AI integration yet — focus on beginner-friendly project setup and routing foundation.

***

## 2. Tools You’ll Need  

| Tool                     | Purpose                          | Where to get it                              |
|--------------------------|---------------------------------|----------------------------------------------|
| Node.js (LTS)            | JavaScript runtime              | [nodejs.org](https://nodejs.org)             |
| Git                      | Version control                 | [git-scm.com](https://git-scm.com)           |
| Qoder IDE                | Your development environment    | Your Qoder source/download                    |
| GitHub                   | Source control hosting          | [github.com](https://github.com)              |
| React + Next.js          | Frontend framework              | Bootstrapped via CLI                          |
| TypeScript               | Typed JS                       | Included in bootstrapping                      |
| ESLint                   | Code quality                   | Included in bootstrapping                      |
| Tailwind CSS             | Styling                       | Included in bootstrapping                      |
| Google Gemini CLI + Qoder AI | Code assistance (optional)      | Enable within Qoder                           |
| Figma (optional)         | UI prototyping                 | [figma.com](https://figma.com)                 |

***

## 3. Step-by-Step Development: Day 1 (2 Hours)

### Step 0 — Prep Environment (20 mins)  
- Install Node.js & Git, verify with:  
```bash
node -v
git --version
```
- Open Qoder IDE, enable GPT-powered Google Gemini CLI and AI assistant plugins.

***

### Step 1 — Start Your Project (10 mins)

In Qoder terminal, create project folder & init Git:  
```bash
mkdir snapptale
cd snapptale
git init
```

***

### Step 2 — Scaffold Next.js App (App Router + TS + Tailwind + ESLint) (25 mins)

Run official Next.js CLI for App Router (the default now):  
```bash
npx create-next-app@latest . --typescript --eslint --tailwind
```

- Accept defaults, say **No** to experimental features.  
- Wait for install to complete.

***

### Step 3 — Explore Folder Structure  

Your core routing lives inside:  
```
/src/app
```

- `src/app/page.tsx` → Homepage  
- Create other pages as folders: e.g., `src/app/upload/page.tsx`

***

### Step 4 — Create Homepage (`src/app/page.tsx`) (20 mins)

Replace existing content in `src/app/page.tsx` with:

```tsx
import Link from 'next/link';

export default function Home() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-5xl font-extrabold text-blue-600 mb-6">Snapptale</h1>
      <p className="text-lg mb-8">Upload a photo to begin your personalized storybook journey</p>
      <Link
        href="/upload"
        className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded focus:outline-none focus:ring-2 focus:ring-blue-500"
      >
        Go to Upload
      </Link>
    </main>
  );
}
```

Save and check with your dev server.

***

### Step 5 — Create Upload Page (`src/app/upload/page.tsx`) (20 mins)

Create new folder `src/app/upload/` and add `page.tsx` with:

```tsx
export default function Upload() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-4xl font-bold mb-6">Upload Photo</h1>
      <input
        type="file"
        accept="image/*"
        className="border border-gray-400 p-2 rounded mb-6"
        disabled
      />
      <button
        disabled
        className="bg-gray-400 cursor-not-allowed px-6 py-3 rounded text-white"
      >
        Next (coming soon)
      </button>
    </main>
  );
}
```

***

### Step 6 — Run and Confirm (5 mins)  

Launch dev server:

```bash
npm run dev
```

Verify:  
- [http://localhost:3000](http://localhost:3000) shows homepage  
- Click “Go to Upload” → [http://localhost:3000/upload](http://localhost:3000/upload) shows upload page

***

### Step 7 — Commit Your Work (5 mins)

```bash
git add .
git commit -m "Init Snapptale with Next.js App Router, TS, ESLint, Tailwind. Added Home and Upload pages"
```

***

### Step 8 — Plan Ahead (5 mins)

Create/update `README.md` with roadmap draft:

```markdown
# Snapptale Development Roadmap

## Day 1 (Done)
- Scaffold Next.js app with App Router + Tailwind + TypeScript + ESLint
- Create homepage + upload page with routing

## Day 2
- Implement active photo upload & preview UI
- Setup backend API to accept uploads

## Day 3
- Integrate Gemini AI API (via CLI) calls for images + story text

## Day 4-7
- Build story preview UI, add export features, and refine UX/UI
- Prepare for deployment & demo
```

***

### Coach’s Tips for Today:

- App Router simplifies routing—pages are files/folders inside `/app`  
- Use Next.js `Link` component for client-side nav (no page reload)  
- Experiment with Tailwind’s utility classes to quickly style elements  
- Enable Google Gemini CLI in Qoder IDE for snippet assistance  
- Focus on building solid structure, no need to implement AI today  

***

### You’ll Have (by end of session):

- Fully functional dev environment (Node.js, Git, Qoder)  
- Snapptale scaffolded Next.js app with `app` directory routing  
- Home and Upload pages accessible via routing  
- Committed baseline repo and initial roadmap drafted  

***

**Ready for next steps? Just ask:**  
*“Guide me with Day 2: Implementing real photo upload and preview in Snapptale”*

***

*This guide is carefully crafted to help React beginners build a modern scalable app foundation with the latest Next.js conventions.*  
Feel free to ask for code snippets, error solving, or further explanations anytime!
