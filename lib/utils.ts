// Utility functions for the app

export function truncateText(text: string, maxLength: number): string {
  if (text.length <= maxLength) return text;
  return text.substring(0, maxLength).trim() + '...';
}

export function formatArticleNumber(numero: number): string {
  return `Artículo ${numero}`;
}

export function generateBoeUrl(articleNumber: number): string {
  const baseUrl = 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1';
  
  if (articleNumber === 0) {
    return `${baseUrl}#preambulo`;
  }
  
  return `${baseUrl}#a${articleNumber}`;
}

export function highlightSearchTerm(text: string, searchTerm: string): string {
  if (!searchTerm) return text;
  
  const regex = new RegExp(`(${searchTerm})`, 'gi');
  return text.replace(regex, '<mark class="bg-yellow-200">$1</mark>');
}

export function slugify(text: string): string {
  return text
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '') // Remove accents
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}
