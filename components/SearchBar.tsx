'use client';

import { useState, useEffect, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { Search, X } from 'lucide-react';

export interface SearchResult {
  numero_articulo: number;
  titulo?: string;
  capitulo?: string;
  texto: string;
  explicacion_sencilla?: string;
}

interface SearchBarProps {
  onSearch?: (query: string, results: SearchResult[]) => void;
  showDropdown?: boolean;
}

export default function SearchBar({ onSearch, showDropdown = true }: SearchBarProps) {
  const [query, setQuery] = useState('');
  const [results, setResults] = useState<SearchResult[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [showResults, setShowResults] = useState(false);
  const router = useRouter();
  const searchRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (searchRef.current && !searchRef.current.contains(event.target as Node)) {
        setShowResults(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  useEffect(() => {
    const searchArticles = async () => {
      if (query.length < 2) {
        setResults([]);
        return;
      }

      setIsLoading(true);
      try {
        const response = await fetch(`/api/search?q=${encodeURIComponent(query)}`);
        const data = await response.json();
        setResults(data.results || []);
        setShowResults(true);
        if (onSearch) {
          onSearch(query, data.results || []);
        }
      } catch (error) {
        console.error('Error searching:', error);
        setResults([]);
        if (onSearch) {
          onSearch(query, []);
        }
      } finally {
        setIsLoading(false);
      }
    };

    const debounce = setTimeout(searchArticles, 300);
    return () => clearTimeout(debounce);
  }, [query]);

  const handleResultClick = (articleNumber: number) => {
    router.push(`/articulo/${articleNumber}`);
    setShowResults(false);
    setQuery('');
  };

  return (
    <div ref={searchRef} className="relative w-full max-w-2xl mx-auto">
      <div className="relative">
        <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
        <input
          type="text"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Buscar por artículo o palabra clave..."
          className="w-full pl-12 pr-12 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        />
        {query && (
          <button
            onClick={() => {
              setQuery('');
              setResults([]);
              setShowResults(false);
            }}
            className="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-gray-600"
          >
            <X className="w-5 h-5" />
          </button>
        )}
      </div>

      {showDropdown && showResults && results.length > 0 && (
        <div className="absolute z-50 w-full mt-2 bg-white border border-gray-200 rounded-lg shadow-xl max-h-96 overflow-y-auto">
          {results.map((result) => (
            <button
              key={result.numero_articulo}
              onClick={() => handleResultClick(result.numero_articulo)}
              className="w-full text-left px-4 py-3 hover:bg-blue-50 border-b border-gray-100 last:border-b-0 transition"
            >
              <div className="font-semibold text-blue-900">
                Artículo {result.numero_articulo}
              </div>
              {(result.titulo || result.capitulo) && (
                <div className="text-sm text-gray-600 mt-1">
                  {result.titulo && `Título ${result.titulo}`}
                  {result.titulo && result.capitulo && ' - '}
                  {result.capitulo && `Capítulo ${result.capitulo}`}
                </div>
              )}
              <div className="text-sm text-gray-700 mt-1 line-clamp-2">
                {result.texto.substring(0, 150)}...
              </div>
            </button>
          ))}
        </div>
      )}

      {showDropdown && showResults && query.length >= 2 && results.length === 0 && !isLoading && (
        <div className="absolute z-50 w-full mt-2 bg-white border border-gray-200 rounded-lg shadow-xl p-4 text-center text-gray-600">
          No se encontraron resultados
        </div>
      )}
    </div>
  );
}
