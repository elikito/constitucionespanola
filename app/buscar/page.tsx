import Layout from '@/components/Layout';
import SearchBar from '@/components/SearchBar';
import Sidebar from '@/components/Sidebar';

async function getTitulos() {
  return [
    {
      numero: 1,
      nombre: 'De los derechos y deberes fundamentales',
      capitulos: []
    }
  ];
}

export const metadata = {
  title: 'Buscar - Constitución Española',
  description: 'Busca artículos de la Constitución Española por número o palabra clave',
};

export default async function BuscarPage() {
  const titulos = await getTitulos();

  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <div className="flex-1 px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            <h1 className="text-3xl font-bold text-blue-900 mb-8">
              Buscar en la Constitución
            </h1>
            
            <div className="mb-8">
              <SearchBar />
            </div>

            <div className="bg-blue-50 border-l-4 border-blue-600 p-6 rounded">
              <h3 className="font-semibold text-blue-900 mb-2">
                💡 Consejos de búsqueda
              </h3>
              <ul className="text-gray-700 text-sm space-y-2 list-disc ml-5">
                <li>Busca por número de artículo (ej: "14", "art 23")</li>
                <li>Busca por palabras clave (ej: "libertad", "derechos fundamentales")</li>
                <li>Los resultados aparecerán automáticamente mientras escribes</li>
                <li>Haz clic en cualquier resultado para ver el artículo completo</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
}
