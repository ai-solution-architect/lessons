# Snapptale — Day 2 Development Guide  
### File Upload & Real-Time Image Preview  
*Goal: Enable users to select a photo and preview it before continuing*

***

## What You Will Achieve Today

- Make the file input functional (not disabled)  
- Preview the selected image immediately on the upload page  
- Prepare the UI to accept images that will later be sent to AI APIs  
- Keep code simple and well-commented for beginner learning

***

## Prerequisites

- Completed **Day 1** setup (Next.js App Router scaffold)  
- Familiarity with basic React function components and state (covered yesterday)

***

## Step-by-Step Instructions (~2 hours)

***

### 1. Open Upload Page Component

Open:  
```
src/app/upload/page.tsx
```

***

### 2. Import React Hooks

At the top, add React’s `useState` import:

```tsx
import React, { useState } from 'react';
```

***

### 3. Modify Upload Component to Handle File Selection & Preview

Replace your existing component code with this:

```tsx
export default function Upload() {
  // Hold selected file’s preview URL
  const [previewSrc, setPreviewSrc] = useState<string | null>(null);

  // Handle file selection and generate preview
  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      // Create a temporary URL to display image preview
      const url = URL.createObjectURL(file);
      setPreviewSrc(url);
    } else {
      setPreviewSrc(null);
    }
  };

  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-4xl font-bold mb-6">Upload Photo</h1>

      {/* File input */}
      <input
        type="file"
        accept="image/*"
        onChange={handleFileChange}
        className="border border-gray-400 p-2 rounded mb-6"
      />

      {/* Preview image */}
      {previewSrc && (
        <div className="mb-6 border border-gray-300 p-2 rounded max-w-xs">
          <img
            src={previewSrc}
            alt="Preview"
            className="max-w-full h-auto rounded"
          />
        </div>
      )}

      {/* Next button */}
      <button
        disabled={!previewSrc}
        className={`px-6 py-3 rounded text-white transition ${
          previewSrc ? 'bg-blue-600 hover:bg-blue-700 cursor-pointer' : 'bg-gray-400 cursor-not-allowed'
        }`}
      >
        Next (coming soon)
      </button>
    </main>
  );
}
```

***

### 4. Explanation

- `useState` holds the image file preview URL.  
- `handleFileChange` fires when user selects a file, updating preview with `URL.createObjectURL`.  
- Preview shows only if a file is selected.  
- The Next button is **enabled only when a file is selected** to encourage the flow.

***

### 5. Run & Test

```bash
npm run dev
```

- Navigate: [http://localhost:3000/upload](http://localhost:3000/upload)  
- Choose a photo file. You should see it preview instantly below the input.  
- See that “Next” button becomes enabled when an image is selected.

***

### 6. Clean Up & Commit

Back in Qoder terminal:

```bash
git add src/app/upload/page.tsx
git commit -m "Enable photo file upload and preview in Upload page"
```

***

### 7. Next Step Roadmap Reminder

In README or your notes:

```markdown
## Day 3 Preview

- Build backend API endpoint to accept uploaded photo and save temporarily
- Connect frontend upload input to call backend upload API
- Prepare NanoBanana API integration with backend proxy to send image for art generation
- Start incorporating AI-assisted story text generation calls
```

***

### Coach Tips

- Use **Google Gemini AI in Qoder** to help write additional handlers or API call snippets.  
- Keep your code modular and clean; don’t rush complex backend calls today.  
- Tailwind classes can be adjusted for style tweaks on preview box, button hover, etc.  
- Remember to revoke object URLs if you advance app (to prevent memory leaks)—can be done on component unmount or new file selection.

***

**You now have a working file upload and live preview feature foundational for Snapptale’s personalized storybook AI pipeline!**

Would you like me to help you write a simple backend file upload API next? Or to scaffold the NanoBanana API integration for image generation?Here is your detailed Day 2 step-by-step guide to implement file upload and image preview in Snapptale with Next.js App Router and Tailwind CSS, designed for React beginners:

***

# Snapptale — Day 2 Development Guide  
### Implement File Upload & Image Preview  
*Goal: Enable users to select a photo and instantly preview it*

***

## What You Will Achieve
- Activate the file input (no longer disabled)  
- Show a real-time preview of the selected image  
- Prepare groundwork for later AI integration  
- Keep simple, clean, and well-commented code

***

## Step-by-Step Instructions

### 1. Open `src/app/upload/page.tsx`

### 2. Import React Hooks
```tsx
import React, { useState } from 'react';
```

### 3. Update Upload Component
```tsx
export default function Upload() {
  const [previewSrc, setPreviewSrc] = useState<string | null>(null);

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      const url = URL.createObjectURL(file);
      setPreviewSrc(url);
    } else {
      setPreviewSrc(null);
    }
  };

  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-8">
      <h1 className="text-4xl font-bold mb-6">Upload Photo</h1>
      <input
        type="file"
        accept="image/*"
        onChange={handleFileChange}
        className="border border-gray-400 p-2 rounded mb-6"
      />
      {previewSrc && (
        <div className="mb-6 border border-gray-300 p-2 rounded max-w-xs">
          <img src={previewSrc} alt="Preview" className="max-w-full h-auto rounded" />
        </div>
      )}
      <button
        disabled={!previewSrc}
        className={`px-6 py-3 rounded text-white transition ${
          previewSrc ? 'bg-blue-600 hover:bg-blue-700 cursor-pointer' : 'bg-gray-400 cursor-not-allowed'
        }`}
      >
        Next (coming soon)
      </button>
    </main>
  );
}
```

### 4. Run & Test
```bash
npm run dev
```
- Go to `http://localhost:3000/upload`
- Select a photo file and see the preview appear  
- Notice the Next button enables only after selecting a file

### 5. Commit Your Changes
```bash
git add src/app/upload/page.tsx
git commit -m "Enable photo upload and preview"
```

***

## Roadmap Reminder: Upcoming Next Steps

- **Day 3:** Implement backend API to accept uploaded photos  
- **Day 4+:** Integrate NanoBanana image generation API calls  
- **Later:** Start story generation & complete MVP pipeline

***

If you want help writing the backend upload API or integrating NanoBanana next, just ask!
