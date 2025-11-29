import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import ArticleCard from '@/components/ArticleCard';
import { supabase } from '@/lib/supabaseClient';
import type { Article } from '@/lib/supabaseClient';
import { Metadata } from 'next';

interface PageProps {
  params: Promise<{
    numero: string;
  }>;
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const { numero } = await params;
  return {
    title: `Artículo ${numero} - Constitución Española`,
    description: `Consulta el artículo ${numero} de la Constitución Española de 1978`,
  };
}

async function getArticle(numero: number): Promise<Article | null> {
  const { data, error } = await supabase
    .from('articulos')
    .select('*')
    .eq('numero_articulo', numero)
    .single();

  if (error) {
    console.error('Error fetching article:', error);
    return null;
  }

  return data;
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

export default async function ArticlePage({ params }: PageProps) {
  const { numero } = await params;
  const articleNumber = parseInt(numero);
  const article = await getArticle(articleNumber);
  const titulos = await getTitulos();

  if (!article) {
    return (
      <Layout>
        <div className="flex">
          <Sidebar titulos={titulos} />
          <div className="flex-1 px-4 md:px-8 py-8">
            <div className="max-w-4xl mx-auto text-center">
              <h1 className="text-4xl font-bold text-red-600 mb-4">
                Artículo no encontrado
              </h1>
              <p className="text-gray-600 mb-8">
                El artículo {numero} no está disponible en la base de datos.
              </p>
              <a href="/" className="text-blue-600 hover:text-blue-800 font-medium">
                ← Volver al inicio
              </a>
            </div>
          </div>
        </div>
      </Layout>
    );
  }

  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <div className="flex-1 px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            <ArticleCard
              numero={article.numero_articulo}
              texto={article.texto}
              explicacion_sencilla={article.explicacion_sencilla}
              titulo={article.titulo}
              seccion={article.seccion}
              capitulo={article.capitulo}
              urlBoe={article.url_boe}
            />
          </div>
        </div>
      </div>
    </Layout>
  );
}
