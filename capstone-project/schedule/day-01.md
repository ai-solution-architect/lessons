# Snapptale — Day 1 Development Guide  
### Kickoff, Tooling & Initial UI Scaffold with Next.js App Router + TDD basics  
*Goal: Complete within ~2 hours tonight*

***

## 🚦 Day 1: Kickoff & Setup — Next.js App Router + Tailwind + TypeScript + ESLint + Tests

### Goal for Today  
By the end of this session you will have:

- Installed and configured all essential tools (Node.js, Git, Qoder IDE)  
- Created a new Next.js project with the modern App Router (`src/app` folder) including Tailwind CSS and TypeScript setup  
- Set up ESLint for code quality  
- Implemented simple test files for your homepage and upload pages using Jest and React Testing Library  
- Written minimal code so those tests pass (Test-Driven Development cycle begins!)  
- Committed your progress with clear messages  
- Drafted a clear, beginner-friendly development roadmap including future AI integration steps  

***

### 1. What You’re Building Today  
- A React-based web app named **Snapptale**  
- A welcoming homepage (`src/app/page.tsx`)  
- An upload page placeholder (`src/app/upload/page.tsx`)  
- Next.js **App Router** is used for routing — this means each page is a component inside the `src/app` folder  
- File input on Upload page is disabled for now  
- Testing framework will be set up and basic tests written to check these pages  
> **Important:** No actual AI-powered features or image generation yet (NanoBanana integration begins Day 3)  
> Google Gemini CLI is your **AI coding assistant inside the IDE**, *not* the AI model for images  

***

### 2. Tools You’ll Need  

| Tool                     | Purpose                          | Where to get it                              |
|--------------------------|---------------------------------|---------------------------------------------|
| Node.js (LTS)            | Run JavaScript and Next.js       | [https://nodejs.org](https://nodejs.org)    |
| Git                      | Version control                 | [https://git-scm.com](https://git-scm.com) |
| Qoder IDE                | Development environment + AI assist | Provided internally or official source     |
| GitHub                   | Remote source control host      | [https://github.com](https://github.com)    |
| React + Next.js          | Frontend app with file-based routing | Bootstrapped via CLI                        |
| TypeScript               | Typed JavaScript for code safety | Included in scaffold                         |
| ESLint                   | Code linter for quality          | Included in scaffold                         |
| Tailwind CSS             | Utility-first styling framework  | Included in scaffold                         |
| Jest + React Testing Library | Testing frameworks             | Installed manually inside project            |
| Google Gemini CLI + Qoder AI Tool | Coding assistant            | Enable in Qoder IDE                          |
| Figma (optional)         | UI design & prototyping          | [https://figma.com](https://figma.com)      |

***

### 3. Step-by-Step Development: Day 1 (About 2 hours)

***

#### 0 - Prepare Your Environment (Approx. 20 minutes)

- Install **Node.js LTS** and **Git** if not already installed.  
- Verify installs by running below commands in your terminal:
  ```bash
  node -v
  git --version
  ```
- Open **Qoder IDE** and make sure **Google Gemini CLI** and **Qoder AI assistant** plugins are activated so you get AI coding help while you work.

***

#### 1 - Create Project Folder & Initialize Git (Approx. 10 minutes)

- In your terminal or inside Qoder terminal panel, run:

  ```bash
  mkdir snapptale
  cd snapptale
  git init
  ```

- This creates your project folder and initializes it for Git version control.

- To link to a GitHub repo later, you can push your commits once done.

***

#### 2 - Scaffold Next.js App (Approx. 25 minutes)

- Run the official Next.js bootstrap tool with TypeScript, ESLint, and Tailwind CSS:

  ```bash
  npx create-next-app@latest . --typescript --eslint --tailwind
  ```

- Answer these prompts:

  - Use TypeScript? **Yes**  
  - Use ESLint? **Yes**  
  - Use Tailwind CSS? **Yes**  
  - Use experimental features? **No**

- Wait for dependencies to install fully.

***

#### 3 - Setup Testing Dependencies (Approx. 10 minutes)

- In the root of your project (`/snapptale`), install testing libraries:

  ```bash
  npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event
  ```

- Create a config file at project root as `jest.config.js`:

  ```js
  module.exports = {
    testEnvironment: 'jsdom',
    setupFilesAfterEnv: ['@testing-library/jest-dom/extend-expect'],
    moduleDirectories: ['node_modules', '<rootDir>/'],
    testPathIgnorePatterns: ['/node_modules/', '/.next/'],
  };
  ```

- Edit `package.json` to add a **test** script (if not added):

  ```json
  "scripts": {
    "test": "jest"
  }
  ```

***

#### 4 - Create Your Pages in `src/app/` Folder (Approx. 25 minutes)

- **Homepage:** Edit file `src/app/page.tsx` to have:

  ```tsx
  import Link from 'next/link';

  export default function Home() {
    return (
      <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
        <h1 className="text-5xl font-extrabold text-blue-600 mb-6">Snapptale</h1>
        <p className="mb-8 text-lg">
          Upload a photo to start your personalized storybook journey.
        </p>
        <Link
          href="/upload"
          className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded focus:ring-2 focus:ring-blue-500"
        >
          Go to Upload
        </Link>
      </main>
    );
  }
  ```

- **Upload page:** Create a folder `src/app/upload/` if not existing, then create `page.tsx` inside it with:

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
          className="bg-gray-400 cursor-not-allowed text-white px-6 py-3 rounded"
        >
          Next (coming soon)
        </button>
      </main>
    );
  }
  ```

***

#### 5 - Create Test Files (Approx. 20 minutes)

- Create a folder at project root `/tests`

- Create `tests/home.test.tsx`:

  ```tsx
  import { render, screen } from '@testing-library/react';
  import Home from '../src/app/page';

  describe('Home Page', () => {
    it('renders Snapptale title and navigation link', () => {
      render(<Home />);
      expect(screen.getByRole('heading', { name: /snapptale/i })).toBeInTheDocument();
      expect(screen.getByRole('link', { name: /go to upload/i })).toBeInTheDocument();
    });
  });
  ```

- Create `tests/upload.test.tsx`:

  ```tsx
  import { render, screen } from '@testing-library/react';
  import Upload from '../src/app/upload/page';

  describe('Upload Page', () => {
    it('renders upload heading and disabled input and button', () => {
      render(<Upload />);
      expect(screen.getByRole('heading', { name: /upload photo/i })).toBeInTheDocument();
      expect(screen.getByRole('textbox', { hidden: true })).toBeInTheDocument();
      expect(screen.getByRole('button', { name: /next/i })).toBeDisabled();
    });
  });
  ```

***

#### 6 - Run Your Tests (Approx. 10 minutes)

- Run in terminal:

  ```bash
  npm test
  ```

- Initially, tests may fail — fix your components code until they pass.

***

#### 7 - Run Your App & Explore (Approx. 5 minutes)

- Start dev server:

  ```bash
  npm run dev
  ```

- Open browser at `http://localhost:3000`, check homepage  
- Click “Go to Upload” to navigate to upload page

***

#### 8 - Commit Your Progress (Approx. 5 minutes)

```bash
git add .
git commit -m "TDD: Scaffold Snapptale Next.js app with Home & Upload pages and passing tests"
```

***

#### 9 - Write Your Roadmap (Approx. 5 minutes)

Add/update `README.md` at project root:

```markdown
# Snapptale Development Roadmap (TDD)

## Day 1: Setup & test scaffold (done)
- Complete Next.js App Router + TS + Tailwind + ESLint setup
- Home and Upload pages with tests and routing configured

## Day 2:
- Implement file upload + live image preview (with tests)
- Prepare backend file upload API

## Day 3:
- Integrate NanoBanana API for AI-generated images
- Start story text generation integration

## Days 4–7:
- Interactive story preview, export, polishing, deployment
```

***

### Coach Tips for Today  
- Write tests **before** coding features to guide development and catch bugs early.  
- Use **Google Gemini AI in Qoder IDE** to auto-generate test and component boilerplate faster.  
- Commit often with descriptive messages to track progress.  
- Don’t rush — thorough testing and clean code pay off in later steps.

***

**By following this detailed stepwise tutorial you’ll:**

- Build a strong, test-covered foundation for Snapptale  
- Gain familiarity with React, Next.js App Router, TDD, and Tailwind CSS  
- Prepare your project for adding AI image and story generation smoothly

***

**Ready for Day 2 (File Upload & Preview) whenever you are — I’ll provide the step-by-step with tests included!**
