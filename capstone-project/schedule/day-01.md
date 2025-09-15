Certainly! Here is your updated detailed **Day 1** development guide incorporating all the specified updates for your app **Snapptale**, updated tooling, IDE, and AI assistant:

***

# Snapptale — Day 1 Development Guide  
### Kickoff, Tooling Setup & Initial UI Scaffold  
*Goal: Complete within ~2 hours tonight*

***

## 🚦 Day 1: Project Kickoff – Tooling, Planning and Environment Setup

### Goal:
By the end of today’s 2-hour session, you will have:  
- Installed and configured all essential tools  
- Bootstrapped a fresh Next.js + React + TypeScript app with Tailwind CSS & ESLint  
- Initialized Git version control  
- Created a simple placeholder homepage with an upload input  
- Written a clear roadmap for the next development steps

***

### 1. 📋 What You’re Building Today  
You will create the very first working version of **Snapptale**, a web app that:  
- Lets users upload a child’s photo (UI placeholder only for now)  
- Prepares the foundation for adding AI-driven personalized story generation later  
- Shows a welcoming landing page  
> **Note:** Today you’re not integrating AI yet — focus on getting your dev environment ready with a minimal working UI.

***

### 2. 🛠 Essential Tools Setup — Install & Prepare

| Tool                 | Purpose                                               | Where to Get / Notes                                           |
|----------------------|------------------------------------------------------|----------------------------------------------------------------|
| **Node.js (LTS)**    | Run JavaScript runtime & Next.js framework           | https://nodejs.org (v18+ recommended)                         |
| **Git**              | Version control                                       | https://git-scm.com                                            |
| **Qoder IDE**        | Your preferred development environment                | Download and install the latest from your source               |
| **GitHub Account**   | Remote Git repository hosting                         | https://github.com                                            |
| **React + Next.js**  | React app framework with SSR & routing                | Installed via `create-next-app` CLI                            |
| **TypeScript**       | Typed superset of JavaScript for code safety          | Integrated via scaffolding                                       |
| **Tailwind CSS**     | Utility-first CSS for fast styling & responsiveness   | Setup integrated in Next.js scaffolding                       |
| **ESLint**           | Linting & code quality                                | Setup integrated in scaffolding                                |
| **Google Gemini CLI + Qoder AI Tool** | AI assistant to speed up coding           | Configure in Qoder for contextual AI fetch & code generation   |
| **Figma (optional)** | UI design and prototyping                             | https://figma.com, good for early UI sketching                 |

***

### 3. 🏗 Step-by-Step for Day 1 (First 2 Hours)

***

#### 0 - Prepare Your Environment (Approx. 20 minutes)

1. **Install Node.js and Git.**  
   Verify installation by running:
   ```bash
   node -v
   git --version
   ```
2. **Install or Open Qoder IDE.**  
   Set it up if needed and enable AI code assistance tools:
   - Enable Google Gemini CLI integration  
   - Enable Qoder AI assistant features

***

#### 1 - Initialize Your Project Folder & Git (10 minutes)

Open Qoder terminal or command line:

```bash
mkdir snapptale
cd snapptale
git init
```

Create a GitHub repository named "snapptale" (or as you prefer). Set it remote later.

***

#### 2 - Bootstrap Your App with Next.js + Tailwind + TypeScript + ESLint (25 minutes)

Run the official Next.js setup:

```bash
npx create-next-app@latest . --typescript --eslint --tailwind
```

- Select **Yes** to TypeScript, ESLint, Tailwind CSS prompts.  
- Walk through defaults: choose default value for experimental features (No).  
- Wait for dependencies to install.  

***

#### 3 - Run & Verify Local Dev Server (5 minutes)

Start the app:

```bash
npm run dev
```

Open browser at [http://localhost:3000](http://localhost:3000) — you should see the Next.js starter page.

***

#### 4 - Clean Homepage & Customize UI (20 minutes)

Open `src/pages/index.tsx` in Qoder and:

- Remove unnecessary default content  
- Replace it by a **Snapptale welcome page** template:

Paste inside the component’s return:

```tsx
return (
  <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-6">
    <h1 className="text-5xl font-extrabold mb-6 text-blue-600">Snapptale</h1>
    <p className="text-lg mb-8">Upload a photo of your child to start generating their personalized storybook</p>
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
)
```

Save and reload your app in the browser.

***

#### 5 - Initialize Codebase Commit (5 minutes)

Back to Qoder terminal:

```bash
git add .
git commit -m "Initial commit: Next.js + Tailwind scaffold & snapptale landing page"
```

***

#### 6 - Write Your Development Roadmap (5 minutes)

Create a `README.md` file or use any note tool, and jot down:

```markdown
## Snapptale Development Roadmap

### Day 1 - Setup & Initial UI (Done)

- Scaffolded Next.js + TypeScript + Tailwind app
- Made simple landing/home page with disabled photo upload

### Day 2 - Implement Photo Upload and Preview

- Enable file uploads & preview image in UI
- Setup backend API endpoint for upload storage (temp)

### Day 3 - Integrate Gemini CLI API for AI Story & Illustration

- Connect image to Gemini CLI for AI-generated character art
- Connect text generation API for story creation

### Day 4 - Display generated chapters with illustrations

- Make an interactive book preview UI
- Add loading and error handling

### Day 5 - Add Save, Download & Export to PDF

- Implement user download of storybook PDF
- Add premium feature gating for paid upgrades

### Day 6 - Testing, Bug Fixes & UI polish
### Day 7 - Final tweak, deploy, prepare demo & deliverable
```

***

### Coach’s Pro Tips for Today:

- Use **Google Gemini CLI** and **Qoder AI Tool** actively while coding—ask for React component snippets and API call examples.  
- Don’t stress — today’s goal is NOT a polished product but a stable skeleton you can build on.  
- Experiment briefly with Tailwind classes to get familiar with utility-first styling.  

***

### What You’ll Have by Tonight:  
- Snapptale folder initialized with Git  
- Next.js + TS + Tailwind + ESLint ready to run locally  
- Custom landing page with disabled upload input & “Next” button  
- Dev roadmap written and committed for collaboration & clarity  
- Basic comfort with your tools and setup environment  

***

### Want Next Steps?  
After today’s session, just ask:  
**“Guide me through Day 2: photo upload & backend setup for Snapptale”**  

***

**You’re off to a great start! Follow this step-by-step exactly, and your first day will be a success.**  
If you want, I can provide commands, config snippets, even debugging help as you code.  

***

Would you like me to prepare a ready-to-paste `package.json` and sample `tailwind.config.js` for your Snapptale app?  
Or a Quick Start AI prompt set for your Gemini CLI in Qoder?  
Let me know!
