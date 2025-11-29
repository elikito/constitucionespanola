import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import ArticleCard from '@/components/ArticleCard';
import { supabase } from '@/lib/supabaseClient';
import type { Article } from '@/lib/supabaseClient';

async function getDisposiciones(): Promise<Article[]> {
  const { data, error } = await supabase
    .from('articulos')
    .select('*')
    .gte('numero_articulo', 200)
    .order('numero_articulo', { ascending: true });

  if (error) {
    console.error('Error fetching disposiciones:', error);
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

export const metadata = {
  title: 'Disposiciones - Constitución Española',
  description: 'Disposiciones adicionales, transitorias, derogatoria y final de la Constitución Española de 1978',
};

export default async function DisposicionesPage() {
  const disposiciones = await getDisposiciones();
  const titulos = await getTitulos();

  // Agrupar disposiciones por tipo
  const adicionales = disposiciones.filter(d => d.numero_articulo >= 201 && d.numero_articulo <= 204);
  const transitorias = disposiciones.filter(d => d.numero_articulo >= 211 && d.numero_articulo <= 219);
  const derogatoria = disposiciones.filter(d => d.numero_articulo === 220);
  const final = disposiciones.filter(d => d.numero_articulo === 221);

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
                Disposiciones
              </nav>
              
              <h1 className="text-3xl font-bold text-blue-900 mb-2">
                Disposiciones
              </h1>
              <p className="text-gray-600">
                Adicionales, transitorias, derogatoria y final
              </p>
            </div>

            {adicionales.length > 0 && (
              <div className="mb-12">
                <h2 className="text-2xl font-bold text-gray-800 mb-4">
                  Disposiciones Adicionales
                </h2>
                <div className="space-y-6">
                  {adicionales.map((disp) => (
                    <ArticleCard
                      key={disp.id}
                      numero={disp.numero_articulo}
                      texto={disp.texto}
                      titulo={disp.titulo}
                      urlBoe={disp.url_boe}
                    />
                  ))}
                </div>
              </div>
            )}

            {transitorias.length > 0 && (
              <div className="mb-12">
                <h2 className="text-2xl font-bold text-gray-800 mb-4">
                  Disposiciones Transitorias
                </h2>
                <div className="space-y-6">
                  {transitorias.map((disp) => (
                    <ArticleCard
                      key={disp.id}
                      numero={disp.numero_articulo}
                      texto={disp.texto}
                      titulo={disp.titulo}
                      urlBoe={disp.url_boe}
                    />
                  ))}
                </div>
              </div>
            )}

            {derogatoria.length > 0 && (
              <div className="mb-12">
                <h2 className="text-2xl font-bold text-gray-800 mb-4">
                  Disposición Derogatoria
                </h2>
                <div className="space-y-6">
                  {derogatoria.map((disp) => (
                    <ArticleCard
                      key={disp.id}
                      numero={disp.numero_articulo}
                      texto={disp.texto}
                      titulo={disp.titulo}
                      urlBoe={disp.url_boe}
                    />
                  ))}
                </div>
              </div>
            )}

            {final.length > 0 && (
              <div className="mb-12">
                <h2 className="text-2xl font-bold text-gray-800 mb-4">
                  Disposición Final
                </h2>
                <div className="space-y-6">
                  {final.map((disp) => (
                    <ArticleCard
                      key={disp.id}
                      numero={disp.numero_articulo}
                      texto={disp.texto}
                      titulo={disp.titulo}
                      urlBoe={disp.url_boe}
                    />
                  ))}
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </Layout>
  );
}
