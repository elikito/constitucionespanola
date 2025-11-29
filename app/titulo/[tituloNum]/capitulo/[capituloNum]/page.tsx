import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import ArticleCard from '@/components/ArticleCard';
import { supabase } from '@/lib/supabaseClient';
import type { Article } from '@/lib/supabaseClient';
import { Metadata } from 'next';

interface PageProps {
  params: Promise<{
    tituloNum: string;
    capituloNum: string;
  }>;
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const { tituloNum, capituloNum } = await params;
  return {
    title: `Título ${tituloNum} - Capítulo ${capituloNum} - Constitución Española`,
    description: `Consulta los artículos del Título ${tituloNum}, Capítulo ${capituloNum} de la Constitución Española`,
  };
}

async function getArticlesByChapter(tituloNum: string, capituloNum: string): Promise<Article[]> {
  const { data, error } = await supabase
    .from('articulos')
    .select('*')
    .eq('titulo', tituloNum)
    .eq('capitulo', capituloNum)
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

export default async function ChapterPage({ params }: PageProps) {
  const { tituloNum, capituloNum } = await params;
  const articles = await getArticlesByChapter(tituloNum, capituloNum);
  const titulos = await getTitulos();

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
                Título {tituloNum}
                {' / '}
                Capítulo {capituloNum}
              </nav>
              
              <h1 className="text-3xl font-bold text-blue-900 mb-2">
                Título {tituloNum} - Capítulo {capituloNum}
              </h1>
              <p className="text-gray-600">
                {articles.length} artículo{articles.length !== 1 ? 's' : ''}
              </p>
            </div>

            <div className="space-y-6">
              {articles.length === 0 ? (
                <div className="text-center py-12 bg-white rounded-lg shadow-md">
                  <p className="text-gray-600">
                    No hay artículos disponibles para este capítulo.
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
