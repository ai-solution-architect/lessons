# Snapptale — Day 1 Development Guide  
### Kickoff, Tooling & Initial UI Scaffold with Next.js App Router  
*Goal: Complete within ~2 hours tonight*

***

## 🚦 Day 1: Kickoff & Setup — Next.js App Router + Tailwind + TypeScript

### Goal for Today  
By the end of this session you will have:

- Installed and configured all essential tools including Node.js, Git, Qoder IDE  
- Bootstrapped a Next.js project with App Router (`src/app`)  
- Set up TypeScript, ESLint, and Tailwind CSS  
- Created basic homepage and upload page routed using the new App Router  
- Written a clear roadmap for coming development steps  
- Set expectations about AI tools: Gemini is your **coding assistant**, but **NanoBanana integration for images is on Day 3+**

***

### 1. What You’re Building Today  
- Simple React-based web app named **Snapptale**  
- Homepage welcoming users and routing to Upload page  
- Upload page with a disabled file selector input as placeholder  
- Routing handled by Next.js App Router (modern routing)  

> **Note: No AI Generations or integrations today.**  
> Google Gemini CLI is your **AI helper for writing code** inside Qoder IDE—**not the image model.**  
> Real image generation will be done **via NanoBanana API in Day 3 or later.**

***

### 2. Tools You’ll Need  

| Tool                     | Purpose                          | Where to get it                              |
|--------------------------|---------------------------------|---------------------------------------------|
| Node.js (LTS)            | JavaScript runtime              | [nodejs.org](https://nodejs.org)            |
| Git                      | Version control                 | [git-scm.com](https://git-scm.com)          |
| Qoder IDE                | Development environment         | Download from official or company source    |
| GitHub                   | Code repository hosting         | [github.com](https://github.com)             |
| React + Next.js          | Frontend + routing framework    | Scaffold with CLI                           |
| TypeScript               | Typed JS superset               | Included via CLI scaffolding                  |
| ESLint                   | Code quality linting            | Included via CLI scaffolding                  |
| Tailwind CSS             | Utility-first CSS styling       | Included via CLI scaffolding                  |
| Google Gemini CLI + Qoder AI | AI coding assistant tool         | Integrate in Qoder IDE for instant suggestions  |
| Figma (optional)         | UI design & prototyping          | [figma.com](https://figma.com)                |

***

### 3. Step-by-Step Development: Day 1 (About 2 hours)

***

#### 0 - Prepare Your Environment (20 mins)  
- Install Node.js, Git; verify with `node -v` and `git --version`  
- Open Qoder IDE and enable Google Gemini CLI + AI assistant plugins

***

#### 1 - Create Project Folder & Initialize Git (10 mins)  
```bash
mkdir snapptale
cd snapptale
git init
```

***

#### 2 - Scaffold Next.js App (25 mins)  
```bash
npx create-next-app@latest . --typescript --eslint --tailwind
```

- Select **Yes** for TypeScript, ESLint, Tailwind prompts  
- Choose default for experimental features (No)  
- Wait for install to finish

***

#### 3 - Create Homepage (`src/app/page.tsx`) (20 mins)

```tsx
import Link from 'next/link';

export default function Home() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-5xl font-extrabold text-blue-600 mb-6">Snapptale</h1>
      <p className="text-lg mb-8">
        Upload a photo to begin your personalized storybook journey
      </p>
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

***

#### 4 - Create Upload Page (`src/app/upload/page.tsx`) (20 mins)

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

#### 5 - Run and Verify (5 mins)  

```bash
npm run dev
```

- Open [http://localhost:3000](http://localhost:3000) → homepage  
- Click “Go to Upload” → routed to upload page [http://localhost:3000/upload](http://localhost:3000/upload)

***

#### 6 - Commit Initial Changes (5 mins)  

```bash
git add .
git commit -m "Initial scaffold: Next.js App Router + Tailwind + TS + two pages"
```

***

#### 7 - Write Development Roadmap (5 mins)  

```markdown
# Snapptale Development Roadmap

## Day 1 (Done)
- Scaffold Next.js app with App Router + Tailwind + TypeScript + ESLint
- Built Home and Upload pages with routing

## Day 2
- Implement real file upload & image preview UI
- Setup API backend for file storage

## Day 3
- Integrate NanoBanana image generation API (not Gemini CLI)
- Add story generation AI API calls

## Day 4-7
- Interactive story preview, export features, UX polish, deployment.
```

***

### Coach’s Reminder:

- **Google Gemini CLI in Qoder = AI coding assistant only.**  
- **NanoBanana API integration for images comes later (Day 3+).**  
- Focus on clean, tested code and solid routing foundation today.  
- Use Tailwind CSS utilities to quickly style UI elements.  
- Ask Gemini for code snippets and explanations while coding — it’s your development co-pilot.

***

### What You’ll Have Tonight

- A Next.js App Router project ready with two pages  
- A simple, clean UI scaffold  
- A functioning dev environment and proper versioning  
- A clear, actionable next steps plan with AI integration timeline corrected  
- Confidence to continue building Snapptale tomorrow!

***

**Need Day 2 step-by-step? Just ask:**  
*“Guide me through Day 2: Implement file upload & image preview for Snapptale”*

