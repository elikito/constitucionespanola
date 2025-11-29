'use client';

import { useState } from 'react';
import SearchBar, { SearchResult } from './SearchBar';
import Link from 'next/link';

export default function HomePage() {
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<SearchResult[]>([]);

  const handleSearch = (query: string, results: SearchResult[]) => {
    setSearchQuery(query);
    setSearchResults(results);
    // Limpiar resultados si el query está vacío
    if (!query || query.length < 2) {
      setSearchResults([]);
    }
  };

  const highlightText = (text: string, query: string) => {
    if (!query || query.length < 2) return text;
    
    const regex = new RegExp(`(${query.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')})`, 'gi');
    const parts = text.split(regex);
    
    return parts.map((part, index) => 
      regex.test(part) 
        ? <mark key={index} className="bg-yellow-300 font-semibold px-1 rounded">{part}</mark>
        : part
    );
  };

  const getArticleTitle = (numero: number) => {
    if (numero >= 201 && numero <= 204) {
      return `Disposición Adicional ${numero - 200}ª`;
    } else if (numero >= 211 && numero <= 219) {
      return `Disposición Transitoria ${numero - 210}ª`;
    } else if (numero === 220) {
      return 'Disposición Derogatoria';
    } else if (numero === 221) {
      return 'Disposición Final';
    } else {
      return `Artículo ${numero}`;
    }
  };

  return (
    <div className="flex-1 flex flex-col">
      {/* Centered Search Section */}
      {!searchQuery ? (
        <div className="flex-1 flex items-center justify-center px-4 md:px-8">
          <div className="max-w-4xl w-full">
            {/* Search Bar */}
            <div id="search-section" className="mb-8">
              <SearchBar onSearch={handleSearch} showDropdown={false} />
            </div>

            {/* Timeline */}
            <div className="text-center">
              <div className="flex flex-col md:flex-row md:flex-wrap justify-center gap-3 md:gap-4 text-xs md:text-sm text-gray-600">
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>31 de octubre de 1978: Aprobación por las Cortes</span>
                </span>
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>6 de diciembre de 1978: Referéndum</span>
                </span>
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>29 de diciembre de 1978: Entrada en vigor</span>
                </span>
              </div>
            </div>
          </div>
        </div>
      ) : (
        <div className="px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            {/* Search Bar */}
            <div id="search-section" className="mb-8">
              <SearchBar onSearch={handleSearch} showDropdown={false} />
            </div>

            {/* Timeline */}
            <div className="text-center mb-8">
              <div className="flex flex-col md:flex-row md:flex-wrap justify-center gap-3 md:gap-4 text-xs md:text-sm text-gray-600">
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>31 de octubre de 1978: Aprobación por las Cortes</span>
                </span>
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>6 de diciembre de 1978: Referéndum</span>
                </span>
                <span className="flex items-center justify-center gap-2">
                  <span className="w-2 h-2 bg-blue-600 rounded-full flex-shrink-0"></span>
                  <span>29 de diciembre de 1978: Entrada en vigor</span>
                </span>
              </div>
            </div>

        {/* Search Results */}
        {searchQuery && searchResults.length > 0 && (
          <div className="mb-12">
            <div className="flex justify-between items-center mb-4">
              <h2 className="text-xl font-semibold text-gray-800">
                {searchResults.length} resultado{searchResults.length !== 1 ? 's' : ''}
              </h2>
            </div>
            
            <div className="space-y-3">
              {searchResults.map((result) => (
                <Link
                  key={result.numero_articulo}
                  href={`/articulo/${result.numero_articulo}`}
                  className="block bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-shadow"
                >
                  {/* Tags */}
                  <div className="flex gap-2 mb-3">
                    {result.titulo && (
                      <span className="inline-block px-3 py-1 text-xs font-medium bg-purple-100 text-purple-800 rounded">
                        {result.titulo}
                      </span>
                    )}
                    {result.capitulo && (
                      <span className="inline-block px-3 py-1 text-xs font-medium bg-green-100 text-green-800 rounded">
                        {result.capitulo}
                      </span>
                    )}
                  </div>

                  {/* Article Title */}
                  <h3 className="text-base font-semibold text-gray-900 mb-3">
                    {getArticleTitle(result.numero_articulo)}
                  </h3>

                  {/* Highlighted Text - Full article with line breaks */}
                  <div className="text-sm text-gray-700 leading-relaxed whitespace-pre-line">
                    {highlightText(result.texto, searchQuery)}
                  </div>

                  {/* Explanation if exists */}
                  {result.explicacion_sencilla && (
                    <div className="mt-3 pt-3 border-t border-gray-100">
                      <p className="text-xs text-gray-600 italic">
                        💡 {result.explicacion_sencilla}
                      </p>
                    </div>
                  )}
                </Link>
              ))}
            </div>
          </div>
        )}

            {searchQuery && searchResults.length === 0 && (
              <div className="mb-12 text-center p-8 bg-gray-50 rounded-lg">
                <p className="text-gray-600">
                  No se encontraron resultados para &quot;{searchQuery}&quot;
                </p>
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
