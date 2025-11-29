import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import { ExternalLink } from 'lucide-react';
import { supabase } from '@/lib/supabaseClient';

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
  title: 'Preámbulo - Constitución Española',
  description: 'Preámbulo de la Constitución Española de 1978',
};

export default async function PreambulePage() {
  const titulos = await getTitulos();

  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <div className="flex-1 px-4 md:px-8 py-8">
          <div className="max-w-4xl mx-auto">
            <article className="bg-white rounded-lg shadow-md p-8">
              <div className="flex items-start justify-between mb-6">
                <h1 className="text-3xl font-bold text-blue-900">
                  Preámbulo
                </h1>
                
                <a
                  href="https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#preambulo"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center space-x-2 text-blue-600 hover:text-blue-800 transition text-sm"
                >
                  <span>Ver en BOE</span>
                  <ExternalLink className="w-4 h-4" />
                </a>
              </div>

              <div className="prose prose-lg max-w-none">
                <p className="text-gray-800 leading-relaxed mb-4">
                  La Nación española, deseando establecer la justicia, la libertad y la seguridad 
                  y promover el bien de cuantos la integran, en uso de su soberanía, proclama su 
                  voluntad de:
                </p>
                
                <ul className="list-disc ml-8 space-y-2 text-gray-800">
                  <li>
                    Garantizar la convivencia democrática dentro de la Constitución y de las leyes 
                    conforme a un orden económico y social justo.
                  </li>
                  <li>
                    Consolidar un Estado de Derecho que asegure el imperio de la ley como expresión 
                    de la voluntad popular.
                  </li>
                  <li>
                    Proteger a todos los españoles y pueblos de España en el ejercicio de los 
                    derechos humanos, sus culturas y tradiciones, lenguas e instituciones.
                  </li>
                  <li>
                    Promover el progreso de la cultura y de la economía para asegurar a todos una 
                    digna calidad de vida.
                  </li>
                  <li>
                    Establecer una sociedad democrática avanzada, y
                  </li>
                  <li>
                    Colaborar en el fortalecimiento de unas relaciones pacíficas y de eficaz 
                    cooperación entre todos los pueblos de la Tierra.
                  </li>
                </ul>

                <p className="text-gray-800 leading-relaxed mt-4">
                  En consecuencia, las Cortes aprueban y el pueblo español ratifica la siguiente
                </p>
                
                <p className="text-center font-bold text-xl text-blue-900 mt-6">
                  CONSTITUCIÓN
                </p>
              </div>
            </article>
          </div>
        </div>
      </div>
    </Layout>
  );
}
