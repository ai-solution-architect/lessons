  /snapptale/
  ├─── .gitignore              # Tells Git which files and folders to ignore.
  ├─── eslint.config.mjs       # Configuration for ESLint, a tool for code quality.
  ├─── next.config.ts          # Configuration file for the Next.js framework.
  ├─── package-lock.json       # Records the exact versions of your project's dependencies.
  ├─── package.json            # Lists project dependencies and defines scripts (e.g., npm run dev).
  ├─── postcss.config.mjs      # Configuration for PostCSS, used for CSS processing with Tailwind.
  ├─── README.md               # A file with information about the project.
  ├─── tsconfig.json           # Configuration for the TypeScript compiler.
  ├─── public/                 # A directory for static assets that are publicly accessible.
  │    ├─── file.svg           # An SVG image.
  │    ├─── globe.svg          # An SVG image.
  │    ├─── next.svg           # The Next.js logo image.
  │    ├─── vercel.svg         # The Vercel logo image.
  │    └─── window.svg         # An SVG image.
  └─── src/                    # The main source code directory for your application.
       └─── app/               # The core of your app, using the Next.js App Router.
           ├─── favicon.ico    # The icon displayed in the browser tab.
           ├─── globals.css    # CSS styles that apply to the entire application.
           ├─── layout.tsx     # The main layout that wraps all your pages.
           ├─── page.tsx       # The component for the homepage (the "/" route).
           └─── upload/        # A folder representing the "/upload" route.
                └─── page.tsx   # The component for the "/upload" page.
