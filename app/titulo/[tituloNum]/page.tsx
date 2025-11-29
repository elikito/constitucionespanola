import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import ArticleCard from '@/components/ArticleCard';
import { supabase } from '@/lib/supabaseClient';
import type { Article } from '@/lib/supabaseClient';
import { Metadata } from 'next';

interface PageProps {
  params: Promise<{
    tituloNum: string;
  }>;
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const { tituloNum } = await params;
  return {
    title: `Título ${tituloNum} - Constitución Española`,
    description: `Consulta los artículos del Título ${tituloNum} de la Constitución Española`,
  };
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

export default async function TituloPage({ params }: PageProps) {
  const { tituloNum } = await params;
  const articles = await getArticlesByTitle(tituloNum);
  const titulos = await getTitulos();
  const tituloName = await getTituloName(tituloNum);

  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <div className="flex-1 px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            <div className="mb-8">
              <nav className="text-sm text-gray-600 mb-4">
                <a href="/" className="hover:text-blue-600">Inicio</a>
                {' / '}
                {tituloNum === '0' ? 'Título Preliminar' : `Título ${tituloNum}`}
              </nav>
              
              <h1 className="text-3xl font-bold text-blue-900 mb-2">
                {tituloNum === '0' ? 'Título Preliminar' : `Título ${tituloNum}`}
              </h1>
              <h2 className="text-xl text-gray-700 mb-4">
                {tituloName}
              </h2>
              <p className="text-gray-600">
                {articles.length} artículo{articles.length !== 1 ? 's' : ''}
              </p>
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
                    titulo={article.titulo}
                    seccion={article.seccion}
                    capitulo={article.capitulo}
                    urlBoe={article.url_boe}
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
