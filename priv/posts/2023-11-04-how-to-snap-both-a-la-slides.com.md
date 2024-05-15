---
title: How to snap-both à la slides.com?
description: How to snap-both à la slides.com?
date: 2023-11-04
tags: ["frontend", "css", "tailwindcss"]
published: true
---

```html
<div
  class="flex h-screen w-screen snap-x snap-mandatory flex-row overflow-auto"
>
  <div
    class="flex w-screen shrink-0 snap-y snap-mandatory snap-start flex-col items-center overflow-auto bg-sky-500"
  >
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center bg-sky-500"
    >
      Hello, world!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Bonjour, monde!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hallo, Welt!
    </div>
  </div>
  <div
    class="flex w-screen shrink-0 snap-y snap-mandatory snap-start flex-col overflow-auto bg-emerald-500"
  >
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hello, world!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Bonjour, monde!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hallo, Welt!
    </div>
  </div>
  <div
    class="flex w-screen shrink-0 snap-y snap-mandatory snap-start flex-col overflow-auto bg-yellow-500"
  >
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hello, world!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Bonjour, monde!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hallo, Welt!
    </div>
  </div>
  <div
    class="flex w-screen shrink-0 snap-y snap-mandatory snap-start flex-col overflow-auto bg-pink-500"
  >
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hello, world!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Bonjour, monde!
    </div>
    <div
      class="flex h-screen w-full shrink-0 snap-start items-center justify-center"
    >
      Hallo, Welt!
    </div>
  </div>
</div>
```

Sandbox [here](https://play.tailwindcss.com/N47ru0VKKj).
