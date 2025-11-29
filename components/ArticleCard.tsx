import { ExternalLink } from 'lucide-react';
import Link from 'next/link';

interface ArticleCardProps {
  numero: number;
  texto: string;
  explicacion_sencilla?: string;
  titulo?: string;
  seccion?: string;
  capitulo?: string;
  urlBoe: string;
}

export default function ArticleCard({ 
  numero, 
  texto, 
  explicacion_sencilla,
  titulo, 
  seccion, 
  capitulo, 
  urlBoe 
}: ArticleCardProps) {
  // Determinar el tipo de entrada según el número
  const getTitle = () => {
    if (numero >= 201 && numero <= 204) {
      return `Disposición Adicional ${numero - 200}ª`;
    } else if (numero >= 211 && numero <= 219) {
      return `Disposición Transitoria ${numero - 210}ª`;
    } else if (numero === 220) {
      return 'Disposición Derogatoria';
    } else if (numero === 221) {
      return 'Disposición Final';
    } else {
      return `Artículo ${numero}`;
    }
  };

  return (
    <article className="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition">
      <div className="flex items-start justify-between mb-4">
        <div>
          <h2 className="text-2xl font-bold text-blue-900 mb-2">
            {getTitle()}
          </h2>
          {(titulo || capitulo) && numero < 200 && (
            <div className="text-sm text-gray-600">
              {titulo && titulo}
              {titulo && capitulo && ' - '}
              {capitulo && `Capítulo ${capitulo}`}
              {seccion && ` - ${seccion}`}
            </div>
          )}
        </div>
        
        <a
          href={urlBoe}
          target="_blank"
          rel="noopener noreferrer"
          className="flex items-center space-x-1 text-blue-600 hover:text-blue-800 transition text-sm"
        >
          <span>Ver en BOE</span>
          <ExternalLink className="w-4 h-4" />
        </a>
      </div>

      {explicacion_sencilla && (
        <div className="mb-6 p-4 bg-blue-50 border-l-4 border-blue-500 rounded">
          <h3 className="text-lg font-semibold text-blue-900 mb-2 flex items-center">
            <span className="mr-2">💡</span>
            Explicación Sencilla
          </h3>
          <p className="text-gray-700 leading-relaxed">
            {explicacion_sencilla}
          </p>
        </div>
      )}

      <div className="prose prose-lg max-w-none">
        <h3 className="text-lg font-semibold text-gray-900 mb-3">Texto oficial</h3>
        <p className="text-gray-800 leading-relaxed whitespace-pre-line">
          {texto}
        </p>
      </div>

      {numero < 200 && (
        <div className="mt-4 pt-4 border-t border-gray-200">
          <Link 
            href={`/articulo/${numero}`}
            className="text-blue-600 hover:text-blue-800 font-medium transition"
          >
            Ver detalles →
          </Link>
        </div>
      )}
    </article>
  );
}
