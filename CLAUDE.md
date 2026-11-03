## Development

When starting the dev server, run it in the foreground as a persistent daemon process:

```powershell
node -e "import('./node_modules/astro/dist/core/dev/index.js').then(m => m.default({ root: '.' }))"
```

> **Note for Windows environment:** Do NOT use `astro dev --background` or `npm run dev` in background mode. On Windows, tool runners terminate process tree jobs when the command exits, killing the detached background child process. Running foreground with `IsDaemon: true` keeps the server alive across turns.

## Documentation

Full documentation: https://docs.astro.build

Consult these guides before working on related tasks:

- [Adding pages, dynamic routes, or middleware](https://docs.astro.build/en/guides/routing/)
- [Working with Astro components](https://docs.astro.build/en/basics/astro-components/)
- [Using React, Vue, Svelte, or other framework components](https://docs.astro.build/en/guides/framework-components/)
- [Adding or managing content](https://docs.astro.build/en/guides/content-collections/)
- [Adding styles or using Tailwind](https://docs.astro.build/en/guides/styling/)
- [Supporting multiple languages](https://docs.astro.build/en/guides/internationalization/)
