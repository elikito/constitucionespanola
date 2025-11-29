'use client';

import { useState, useEffect } from 'react';
import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import ArticleCard from '@/components/ArticleCard';
import { supabase } from '@/lib/supabaseClient';
import type { Article } from '@/lib/supabaseClient';

interface PageProps {
  params: Promise<{
    tituloNum: string;
  }>;
}

function numberToRoman(num: number): string {
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
}

async function getArticlesByTitle(tituloNum: string): Promise<Article[]> {
  let tituloName = '';
  
  if (tituloNum === '0') {
    tituloName = 'Título Preliminar';
  } else {
    const roman = numberToRoman(parseInt(tituloNum));
    tituloName = `Título ${roman}`;
  }

  const { data, error } = await supabase
    .from('articulos')
    .select('*')
    .eq('titulo', tituloName)
    .order('numero_articulo', { ascending: true });

  if (error) {
    console.error('Error fetching articles:', error);
    return [];
  }

  return data || [];
}

async function getTitulos() {
  const { data, error } = await supabase
    .from('titulos')
    .select('*')
    .order('numero', { ascending: true });

  if (error) {
    console.error('Error fetching titles:', error);
    return [];
  }

  return data || [];
}

async function getTituloName(tituloNum: string) {
  const { data, error } = await supabase
    .from('titulos')
    .select('nombre')
    .eq('numero', parseInt(tituloNum))
    .single();

  if (error || !data) {
    return tituloNum === '0' ? 'Título Preliminar' : `Título ${tituloNum}`;
  }

  return data.nombre;
}

export default function TituloPage({ params }: PageProps) {
  const [tituloNum, setTituloNum] = useState<string>('');
  const [articles, setArticles] = useState<Article[]>([]);
  const [titulos, setTitulos] = useState<any[]>([]);
  const [tituloName, setTituloName] = useState<string>('');
  const [showExplanations, setShowExplanations] = useState<boolean>(true);

  useEffect(() => {
    const loadData = async () => {
      const resolvedParams = await params;
      setTituloNum(resolvedParams.tituloNum);
      
      const [articlesData, titulosData, nameData] = await Promise.all([
        getArticlesByTitle(resolvedParams.tituloNum),
        getTitulos(),
        getTituloName(resolvedParams.tituloNum)
      ]);
      
      setArticles(articlesData);
      setTitulos(titulosData);
      setTituloName(nameData);
    };
    
    loadData();
  }, [params]);

  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <div className="flex-1 px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            <div className="mb-8">
              <h1 className="text-3xl font-bold text-blue-900 mb-4">
                {tituloNum === '0' 
                  ? `Título Preliminar - ${tituloName}` 
                  : `Título ${numberToRoman(parseInt(tituloNum))} - ${tituloName}`
                }
              </h1>
              <div className="flex items-center justify-between">
                <p className="text-gray-600">
                  {articles.length} artículo{articles.length !== 1 ? 's' : ''}
                </p>
                <label className="flex items-center space-x-2 cursor-pointer">
                  <input
                    type="checkbox"
                    checked={showExplanations}
                    onChange={(e) => setShowExplanations(e.target.checked)}
                    className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500"
                  />
                  <span className="text-sm text-gray-700">Mostrar explicaciones sencillas</span>
                </label>
              </div>
            </div>

            <div className="space-y-6">
              {articles.length === 0 ? (
                <div className="text-center py-12 bg-white rounded-lg shadow-md">
                  <p className="text-gray-600">
                    No hay artículos disponibles para este título.
                  </p>
                </div>
              ) : (
                articles.map((article) => (
                  <ArticleCard
                    key={article.id}
                    numero={article.numero_articulo}
                    texto={article.texto}
                    explicacion_sencilla={article.explicacion_sencilla}
                    titulo={article.titulo}
                    seccion={article.seccion}
                    capitulo={article.capitulo}
                    urlBoe={article.url_boe}
                    showExplanation={showExplanations}
                  />
                ))
              )}
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
}
