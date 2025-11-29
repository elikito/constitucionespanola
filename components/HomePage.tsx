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
    <div className="flex-1 px-4 md:px-8 py-8">
      {/* Hero Section */}
      <div className="max-w-4xl mx-auto mb-12">
        <div className="text-center mb-8">
          <h1 className="text-4xl md:text-5xl font-bold text-blue-900 mb-4">
            Constitución Española
          </h1>
          <p className="text-xl text-gray-600 mb-2">
            27 de diciembre de 1978
          </p>
          <p className="text-gray-600">
            Herramienta de consulta rápida y ligera
          </p>
        </div>

        {/* Search Bar */}
        <div className="mb-12">
          <SearchBar onSearch={handleSearch} showDropdown={false} />
        </div>

        {/* Search Results */}
        {searchQuery && searchResults.length > 0 && (
          <div className="mb-12">
            <div className="flex justify-between items-center mb-4">
              <h2 className="text-xl font-semibold text-gray-800">
                {searchResults.length} resultado{searchResults.length !== 1 ? 's' : ''}
              </h2>
              <div className="text-sm text-gray-500">
                {searchResults.length} en enunciados
              </div>
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

                  {/* Article Title with highlight badge */}
                  <div className="flex items-start justify-between mb-2">
                    <h3 className="text-base font-semibold text-gray-900">
                      {getArticleTitle(result.numero_articulo)}
                    </h3>
                    <span className="ml-2 px-2 py-1 text-xs bg-yellow-200 text-yellow-900 rounded flex-shrink-0">
                      💡 Coincidencia en enunciado
                    </span>
                  </div>

                  {/* Highlighted Text */}
                  <div className="text-sm text-gray-700 leading-relaxed">
                    <p className="line-clamp-3">
                      {highlightText(result.texto, searchQuery)}
                    </p>
                  </div>

                  {/* Explanation if exists */}
                  {result.explicacion_sencilla && (
                    <div className="mt-3 pt-3 border-t border-gray-100">
                      <p className="text-xs text-gray-600 italic line-clamp-2">
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

        {/* Structure Overview - Solo mostrar si no hay búsqueda */}
        {!searchQuery && (
          <>
            {/* Structure Overview */}
            <div className="bg-white rounded-lg shadow-md p-8">
              <h2 className="text-2xl font-bold text-gray-800 mb-6">
                Estructura de la Constitución
              </h2>
              
              <div className="space-y-4">
                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Preámbulo</h3>
                  <p className="text-gray-600 text-sm">Declaración de principios e intenciones</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Título Preliminar</h3>
                  <p className="text-gray-600 text-sm">Artículos 1-9</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Título I</h3>
                  <p className="text-gray-600 text-sm">De los derechos y deberes fundamentales (Art. 10-55)</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Título II</h3>
                  <p className="text-gray-600 text-sm">De la Corona (Art. 56-65)</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Título III</h3>
                  <p className="text-gray-600 text-sm">De las Cortes Generales (Art. 66-96)</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Título IV</h3>
                  <p className="text-gray-600 text-sm">Del Gobierno y de la Administración (Art. 97-107)</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Títulos V-X</h3>
                  <p className="text-gray-600 text-sm">Relaciones Gobierno-Cortes, Poder Judicial, Economía, etc. (Art. 108-169)</p>
                </div>

                <div className="border-l-4 border-blue-600 pl-4">
                  <h3 className="font-semibold text-lg text-gray-800">Disposiciones</h3>
                  <p className="text-gray-600 text-sm">Adicionales, transitorias, derogatoria y final</p>
                </div>
              </div>
            </div>

            {/* Info Box */}
            <div className="mt-8 bg-blue-50 border-l-4 border-blue-600 p-6 rounded">
              <h3 className="font-semibold text-blue-900 mb-2">
                ℹ️ Sobre esta herramienta
              </h3>
              <p className="text-gray-700 text-sm">
                Esta aplicación permite consultar de forma rápida y sencilla todos los artículos 
                de la Constitución Española. Cada artículo incluye un enlace directo al texto 
                oficial publicado en el BOE. Utiliza el buscador o navega por la estructura 
                jerárquica usando el menú lateral.
              </p>
            </div>
          </>
        )}
      </div>
    </div>
  );
}
