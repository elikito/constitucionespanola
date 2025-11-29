'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { ChevronDown, ChevronRight, Menu, X } from 'lucide-react';
import { supabase } from '@/lib/supabaseClient';

interface Title {
  numero: number;
  nombre: string;
  capitulos?: Chapter[];
}

interface Chapter {
  numero: number;
  nombre: string;
  seccion?: string;
}

interface Article {
  numero_articulo: number;
  titulo?: string;
}

interface SidebarProps {
  titulos: Title[];
}

export default function Sidebar({ titulos }: SidebarProps) {
  const [expandedTitles, setExpandedTitles] = useState<Set<number>>(new Set());
  const [isOpen, setIsOpen] = useState(false);
  const [isMobile, setIsMobile] = useState(false);
  const [tituloArticles, setTituloArticles] = useState<{ [key: number]: Article[] }>({});
  const [loadingArticles, setLoadingArticles] = useState<{ [key: number]: boolean }>({});

  useEffect(() => {
    const checkMobile = () => setIsMobile(window.innerWidth < 768);
    checkMobile();
    window.addEventListener('resize', checkMobile);
    return () => window.removeEventListener('resize', checkMobile);
  }, []);

  const numberToRoman = (num: number): string => {
    const romanNumerals: [number, string][] = [
      [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']
    ];
    
    let result = '';
    for (const [value, numeral] of romanNumerals) {
      while (num >= value) {
        result += numeral;
        num -= value;
      }
    }
    return result;
  };

  const numberToOrdinal = (num: number): string => {
    const ordinals: { [key: number]: string } = {
      1: 'primero', 2: 'segundo', 3: 'tercero', 4: 'cuarto', 5: 'quinto',
      6: 'sexto', 7: 'séptimo', 8: 'octavo', 9: 'noveno', 10: 'décimo'
    };
    return ordinals[num] || `${num}º`;
  };

  const getArticleRange = (tituloNum: number): string => {
    const ranges: { [key: number]: string } = {
      0: 'a.1-9',
      1: 'a.10-55',
      2: 'a.56-65',
      3: 'a.66-96',
      4: 'a.97-107',
      5: 'a.108-116',
      6: 'a.117-127',
      7: 'a.128-136',
      8: 'a.137-158',
      9: 'a.159-165',
      10: 'a.166-169'
    };
    return ranges[tituloNum] || '';
  };

  const fetchArticlesForTitle = async (numero: number) => {
    if (tituloArticles[numero]) return; // Ya cargados
    
    setLoadingArticles(prev => ({ ...prev, [numero]: true }));
    
    const roman = numberToRoman(numero);
    const tituloName = `Título ${roman}`;
    
    const { data, error } = await supabase
      .from('articulos')
      .select('numero_articulo, titulo')
      .eq('titulo', tituloName)
      .order('numero_articulo', { ascending: true });

    if (!error && data) {
      setTituloArticles(prev => ({ ...prev, [numero]: data }));
    }
    
    setLoadingArticles(prev => ({ ...prev, [numero]: false }));
  };

  const toggleTitle = async (numero: number) => {
    const newExpanded = new Set(expandedTitles);
    if (newExpanded.has(numero)) {
      newExpanded.delete(numero);
    } else {
      newExpanded.add(numero);
      // Siempre cargar artículos al expandir
      await fetchArticlesForTitle(numero);
    }
    setExpandedTitles(newExpanded);
  };

  const sidebarContent = (
    <div className="h-full overflow-y-auto bg-gray-50 border-r border-gray-200 p-4">
      <div className="space-y-1">
        <Link 
          href="/preambulo"
          className="block px-4 py-2 rounded-lg hover:bg-blue-50 text-gray-700 hover:text-blue-900 transition"
          onClick={() => isMobile && setIsOpen(false)}
        >
          Preámbulo
        </Link>
        
        <Link 
          href="/titulo/0"
          className="block px-4 py-2 rounded-lg hover:bg-blue-50 transition"
          onClick={() => isMobile && setIsOpen(false)}
        >
          <div className="flex flex-col">
            <span className="text-gray-700 hover:text-blue-900">Título Preliminar</span>
            <span className="text-xs text-gray-500">a.1-9</span>
          </div>
        </Link>

        {titulos.filter(t => t.numero > 0).map((titulo) => (
          <div key={titulo.numero}>
            <button
              onClick={() => toggleTitle(titulo.numero)}
              className="w-full flex items-center justify-between px-4 py-2 hover:bg-blue-50 rounded-lg transition text-left"
            >
              <div className="flex flex-col">
                <span className="text-gray-700 hover:text-blue-900 font-medium">
                  Título {numberToRoman(titulo.numero)}
                </span>
                <span className="text-sm text-gray-600">
                  {titulo.nombre}
                </span>
                <span className="text-xs text-gray-500">
                  {getArticleRange(titulo.numero)}
                </span>
              </div>
              {expandedTitles.has(titulo.numero) ? (
                <ChevronDown className="w-5 h-5 text-gray-600" />
              ) : (
                <ChevronRight className="w-5 h-5 text-gray-600" />
              )}
            </button>
            
            {expandedTitles.has(titulo.numero) && titulo.capitulos && titulo.capitulos.length > 0 && (
              <div className="ml-4 mt-2 space-y-1">
                {titulo.capitulos.map((capitulo) => (
                  <Link
                    key={capitulo.numero}
                    href={`/titulo/${titulo.numero}/capitulo/${capitulo.numero}`}
                    className="block px-4 py-2 text-sm hover:bg-blue-50 rounded-lg transition text-gray-700"
                    onClick={() => isMobile && setIsOpen(false)}
                  >
                    {capitulo.seccion && `${capitulo.seccion} - `}
                    Capítulo {numberToOrdinal(capitulo.numero)}: {capitulo.nombre}
                  </Link>
                ))}
              </div>
            )}
            
            {expandedTitles.has(titulo.numero) && (!titulo.capitulos || titulo.capitulos.length === 0) && (
              <div className="ml-4 mt-2 space-y-1">
                {loadingArticles[titulo.numero] ? (
                  <div className="px-4 py-2 text-sm text-gray-500">
                    Cargando artículos...
                  </div>
                ) : tituloArticles[titulo.numero] && tituloArticles[titulo.numero].length > 0 ? (
                  <>
                    <Link
                      href={`/titulo/${titulo.numero}`}
                      className="px-4 py-1 text-xs text-blue-600 hover:text-blue-800 font-semibold hover:underline cursor-pointer block"
                      onClick={() => isMobile && setIsOpen(false)}
                    >
                      {tituloArticles[titulo.numero].length} artículos →
                    </Link>
                    <div className="max-h-60 overflow-y-auto">
                      {tituloArticles[titulo.numero].map((article) => (
                        <Link
                          key={article.numero_articulo}
                          href={`/articulo/${article.numero_articulo}`}
                          className="block px-4 py-2 text-sm hover:bg-blue-50 rounded-lg transition text-gray-700"
                          onClick={() => isMobile && setIsOpen(false)}
                        >
                          Artículo {article.numero_articulo}
                        </Link>
                      ))}
                    </div>
                  </>
                ) : null}
              </div>
            )}
          </div>
        ))}
        
        <Link 
          href="/disposiciones"
          className="block px-4 py-2 rounded-lg hover:bg-blue-50 text-gray-700 hover:text-blue-900 transition"
          onClick={() => isMobile && setIsOpen(false)}
        >
          Disposiciones
        </Link>
      </div>
    </div>
  );

  if (isMobile) {
    return (
      <>
        <button
          onClick={() => setIsOpen(!isOpen)}
          className="md:hidden fixed top-20 left-4 z-50 bg-blue-900 text-white p-3 rounded-full shadow-lg hover:bg-blue-800 transition"
        >
          {isOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
        </button>

        {isOpen && (
          <>
            <div 
              className="fixed inset-0 bg-black bg-opacity-50 z-40"
              onClick={() => setIsOpen(false)}
            />
            <div className="fixed inset-y-0 left-0 w-80 z-50 bg-white shadow-xl">
              {sidebarContent}
            </div>
          </>
        )}
      </>
    );
  }

  return (
    <aside className="w-80 h-[calc(100vh-4rem)] sticky top-16 hidden md:block">
      {sidebarContent}
    </aside>
  );
}
