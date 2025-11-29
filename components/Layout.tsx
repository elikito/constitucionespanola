import Navbar from './Navbar';

interface LayoutProps {
  children: React.ReactNode;
}

export default function Layout({ children }: LayoutProps) {
  return (
    <div className="min-h-screen bg-gray-100">
      <Navbar />
      <main>{children}</main>
      
      <footer className="bg-gray-800 text-white mt-12">
        <div className="container mx-auto px-4 py-8">
          <div className="grid md:grid-cols-3 gap-8">
            <div>
              <h3 className="font-bold text-lg mb-3">Constitución Española 1978</h3>
              <p className="text-gray-400 text-sm">
                Herramienta de consulta rápida y ligera de la Constitución Española.
              </p>
            </div>
            
            <div>
              <h3 className="font-bold text-lg mb-3">Enlaces</h3>
              <ul className="space-y-2 text-sm">
                <li>
                  <a 
                    href="https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-gray-400 hover:text-white transition"
                  >
                    BOE Oficial
                  </a>
                </li>
                <li>
                  <a 
                    href="https://www.congreso.es/"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-gray-400 hover:text-white transition"
                  >
                    Congreso de los Diputados
                  </a>
                </li>
              </ul>
            </div>
            
            <div>
              <h3 className="font-bold text-lg mb-3">Proyecto</h3>
              <p className="text-gray-400 text-sm mb-2">
                Código abierto en{' '}
                <a 
                  href="https://github.com/elikito/constitucionespanola"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-blue-400 hover:text-blue-300 transition"
                >
                  GitHub
                </a>
              </p>
              <p className="text-gray-400 text-sm">
                Creado por <span className="text-blue-400 font-semibold">Elias K</span>
              </p>
              <p className="text-gray-500 text-xs mt-2">
                Versión v11.29p
              </p>
            </div>
          </div>
          
          <div className="mt-8 pt-8 border-t border-gray-700 text-center">
            <p className="text-gray-400 text-sm">
              © {new Date().getFullYear()} - Constitución Española 1978 • Creado por Elias K
            </p>
          </div>
        </div>
      </footer>
    </div>
  );
}
