import { dev } from 'astro';

try {
  const server = await dev({
    root: process.cwd(),
    server: {
      port: 4321,
      host: true
    }
  });
  console.log('Astro dev started programmatically on port 4321');
} catch (err) {
  console.error('Error in astro dev:', err);
}
