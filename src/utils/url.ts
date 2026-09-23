// Helper for handling base URLs across environments (local dev vs GitHub Pages)
export const base = import.meta.env.BASE_URL.replace(/\/$/, '');

export function u(path: string = ''): string {
  if (!path || path === '/') {
    return base ? `${base}/` : '/';
  }
  if (
    path.startsWith('http://') ||
    path.startsWith('https://') ||
    path.startsWith('tel:') ||
    path.startsWith('mailto:') ||
    path.startsWith('#') ||
    path.startsWith('javascript:')
  ) {
    return path;
  }
  const cleanPath = path.startsWith('/') ? path : `/${path}`;
  return `${base}${cleanPath}`;
}
