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
  return `${base}${cleanPath.replace(/ /g, '%20')}`;
}

export function uMd(path: string = ''): string {
  const mdPath = path.replace(/-md(?=\.[^.]+$)/, '').replace(/\.[^.]+$/, '-md.webp');
  return u(mdPath);
}

export function imgSrcSet(path: string = '', mdWidth: number = 1000, hdWidth: number = 1920): string {
  return `${uMd(path)} ${mdWidth}w, ${u(path)} ${hdWidth}w`;
}

export const PLAN_OK_COTIZADOR_URL =
  'https://cotizador.saladeventasdigital.com/cotizador/index.php?id_subagrupaciones=1&key=amainmobiliaria&portal=&open_dialog=true';

export const AMA_WHATSAPP_PHONE = '56985266310';
export const AMA_PHONE_DISPLAY = '+56 9 8526 6310';
