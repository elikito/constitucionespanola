'use client';

import { useState } from 'react';
import SearchBar, { SearchResult } from './SearchBar';
import ArticleCard from './ArticleCard';
import Link from 'next/link';
import { BookOpen, Scale, FileText } from 'lucide-react';

export default function HomePage() {
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<SearchResult[]>([]);

  const handleSearch = (query: string, results: SearchResult[]) => {
    setSearchQuery(query);
    setSearchResults(results);
  };

  const highlightText = (text: string, query: string) => {
    if (!query || query.length < 2) return text;
    
    const parts = text.split(new RegExp(`(${query})`, 'gi'));
    return parts.map((part, index) => 
      part.toLowerCase() === query.toLowerCase() 
        ? <mark key={index} className="bg-yellow-300 font-semibold">{part}</mark>
        : part
    );
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
            <h2 className="text-2xl font-bold text-gray-800 mb-4">
              Resultados para &quot;{searchQuery}&quot; ({searchResults.length})
            </h2>
            <div className="space-y-6">
              {searchResults.map((result) => (
                <div key={result.numero_articulo}>
                  <ArticleCard
                    numero={result.numero_articulo}
                    texto={result.texto}
                    explicacion_sencilla={result.explicacion_sencilla}
                    titulo={result.titulo}
                    capitulo={result.capitulo}
                    urlBoe={`https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a${result.numero_articulo}`}
                  />
                  {/* Highlight search term in text */}
                  <div className="mt-2 p-4 bg-yellow-50 rounded border-l-4 border-yellow-400">
                    <p className="text-sm text-gray-700">
                      {highlightText(result.texto.substring(0, 300), searchQuery)}
                      {result.texto.length > 300 && '...'}
                    </p>
                  </div>
                </div>
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

        {/* Quick Access Cards - Solo mostrar si no hay búsqueda */}
        {!searchQuery && (
          <>
            <div className="grid md:grid-cols-3 gap-6 mb-12">
              <Link 
                href="/preambulo"
                className="bg-white p-6 rounded-lg shadow-md hover:shadow-lg transition group"
              >
                <div className="flex items-center mb-3">
                  <BookOpen className="w-8 h-8 text-blue-600 mr-3" />
                  <h3 className="text-lg font-semibold text-gray-800">Preámbulo</h3>
                </div>
                <p className="text-gray-600 text-sm">
                  Introducción y principios fundacionales
                </p>
              </Link>

              <Link 
                href="/titulo/0"
                className="bg-white p-6 rounded-lg shadow-md hover:shadow-lg transition group"
              >
                <div className="flex items-center mb-3">
                  <Scale className="w-8 h-8 text-blue-600 mr-3" />
                  <h3 className="text-lg font-semibold text-gray-800">Título Preliminar</h3>
                </div>
                <p className="text-gray-600 text-sm">
                  Artículos 1-9: Fundamentos del Estado
                </p>
              </Link>

              <Link 
                href="/disposiciones"
                className="bg-white p-6 rounded-lg shadow-md hover:shadow-lg transition group"
              >
                <div className="flex items-center mb-3">
                  <FileText className="w-8 h-8 text-blue-600 mr-3" />
                  <h3 className="text-lg font-semibold text-gray-800">Disposiciones</h3>
                </div>
                <p className="text-gray-600 text-sm">
                  Adicionales, transitorias y finales
                </p>
              </Link>
            </div>

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
