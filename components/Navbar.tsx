'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Search } from 'lucide-react';

export default function Navbar() {
  const pathname = usePathname();
  const isHomePage = pathname === '/';

  const handleSearchClick = (e: React.MouseEvent) => {
    e.preventDefault();
    window.location.href = '/';
    setTimeout(() => {
      const searchSection = document.getElementById('search-section');
      if (searchSection) {
        searchSection.scrollIntoView({ behavior: 'smooth', block: 'center' });
      }
    }, 100);
  };

  return (
    <nav className="bg-blue-900 text-white shadow-lg sticky top-0 z-50">
      <div className="container mx-auto px-4">
        <div className="flex items-center justify-between h-16">
          <Link href="/" className="flex items-center space-x-2 hover:opacity-80 transition">
            <span className="text-base md:text-xl font-bold">Constitución Española 1978</span>
          </Link>
          
          {!isHomePage && (
            <a
              href="/"
              onClick={handleSearchClick}
              className="flex items-center space-x-1 hover:opacity-80 transition bg-blue-800 px-3 py-2 rounded-lg cursor-pointer"
              title="Ir al buscador"
            >
              <Search className="w-5 h-5" />
              <span className="hidden md:inline text-sm">Buscar</span>
            </a>
          )}
        </div>
      </div>
    </nav>
  );
}
