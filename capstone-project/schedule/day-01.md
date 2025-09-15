# Snapptale — Day 1 Development Guide (with TDD approach)  
### Kickoff, Setup & Scaffold using Next.js App Router + Tailwind + TypeScript + ESLint  
*Goal: Complete within ~2 hours*

***

## 🚦 Goals for Today (TDD-focused)

By the end of Day 1, you will have:

- Installed and configured all necessary tools  
- Scaffolded a Next.js project with App Router (`src/app`) including Tailwind and TypeScript  
- Set up an initial test framework (Jest + React Testing Library)  
- Written failing tests for your two pages (Homepage & Upload)  
- Implemented minimal working versions of those pages to pass tests  
- Committed code with meaningful TDD cycle stages  
- Drafted a clear development roadmap including AI integration timeline  

***

## Tools & Dependencies (Confirm these are installed)

| Tool               | Purpose                                        | Installation Source                    |
|--------------------|-----------------------------------------------|--------------------------------------|
| Node.js (v18+)     | Runtime & Next.js dev                          | https://nodejs.org                   |
| Git                | Source control                                | https://git-scm.com                  |
| Qoder IDE          | Development + AI-assist with Gemini CLI       | Company source / Qoder installer     |
| GitHub             | Remote git repository                         | https://github.com                   |
| Next.js            | Framework (App Router by default)             | `npx create-next-app@latest`         |
| TypeScript         | Static typing                                | part of scaffold                     |
| Tailwind CSS       | Utility-first CSS                            | Integrated via scaffold              |
| ESLint             | Linting                                     | Integrated via scaffold              |
| Jest + Testing Library | Test framework and React component testing | Setup instructions below            |
| Google Gemini CLI   | AI for coding assistance (IDE integration)    | Enable in Qoder IDE                  |

***

## Step-by-Step TDD Workflow

### 1. Install testing libraries

Run in terminal:

```bash
npm install --save-dev jest @testing-library/react @testing-library/jest-dom @testing-library/user-event
```

Add Jest config in `package.json` (if not auto-added):

```json
"jest": {
  "testEnvironment": "jsdom",
  "setupFilesAfterEnv": ["@testing-library/jest-dom/extend-expect"]
}
```

***

### 2. Create test files for pages

Create folder `tests` at project root or inside `src`.

For Home page, create `tests/Home.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react';
import Home from '../src/app/page';

describe('Home Page', () => {
  it('renders heading and navigation link', () => {
    render(<Home />);
    expect(screen.getByRole('heading', { name: /snapptale/i })).toBeInTheDocument();
    expect(screen.getByRole('link', { name: /go to upload/i })).toBeInTheDocument();
  });
});
```

For Upload page, create `tests/Upload.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react';
import Upload from '../src/app/upload/page';

describe('Upload Page', () => {
  it('renders upload heading and disabled input/button', () => {
    render(<Upload />);
    expect(screen.getByRole('heading', { name: /upload photo/i })).toBeInTheDocument();
    expect(screen.getByRole('textbox', { hidden: true })).toBeInTheDocument(); // input type file is hidden by label
    expect(screen.getByRole('button', { name: /next/i })).toBeDisabled();
  });
});
```

*Note*: For file inputs, queries may require tuning or alternative selectors.

***

### 3. Run tests

In terminal:

```bash
npm test
```

You will see failing tests initially (no components yet or with old code).

***

### 4. Implement pages to pass tests

- Edit `src/app/page.tsx` (Home page) to include:

```tsx
import Link from 'next/link';

export default function Home() {
  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-5xl font-extrabold text-blue-600 mb-6">Snapptale</h1>
      <p className="mb-8 text-lg">Upload a photo to start your personalized storybook journey.</p>
      <Link href="/upload" className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
        Go to Upload
      </Link>
    </main>
  );
}
```

- Edit `src/app/upload/page.tsx` (Upload page):

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

### 5. Re-run tests and confirm passing

```bash
npm test
```

All tests should now pass.

***

### 6. Run dev server and check UI

```bash
npm run dev
```

Navigate:

- http://localhost:3000 → Home page  
- Click “Go to Upload” → Upload page appears

***

### 7. Commit code

```bash
git add .
git commit -m "Add Home and Upload pages with passing tests (TDD)"
```

***

### 8. Write your development roadmap in `README.md`

```markdown
# Snapptale Development Roadmap (TDD-driven)

## Day 1: Setup & Scaffold with Tests (completed)

- Jest & Testing Library installed & configured  
- Tests added for Home & Upload pages (failing initially)  
- Pages implemented to pass tests  
- Basic routing & UI scaffold ready  

## Next Steps:

- Day 2: Make file upload functional & implement image preview (test first)  
- Day 3: Setup backend file upload API (with tests) and start NanoBanana integration  
- Day 4+: Add story generation, book preview, exporting, etc. (all test-covered)  
```

***

### Coach’s Advice

- Writing tests first formalizes requirements and ensures you don’t waste time on unneeded features  
- Use Gemini AI tool in Qoder for generating tests and React components faster  
- Start small, keep tests focused and code minimal  
- Early testing makes debugging far easier  

***

If you want, I can walk you through **writing tests for file upload next** or **help with backend API testing setup**.  
Let me know how to support your TDD journey!
