import { ExternalLink } from 'lucide-react';
import Link from 'next/link';

interface ArticleCardProps {
  numero: number;
  texto: string;
  titulo?: string;
  seccion?: string;
  capitulo?: string;
  urlBoe: string;
}

export default function ArticleCard({ 
  numero, 
  texto, 
  titulo, 
  seccion, 
  capitulo, 
  urlBoe 
}: ArticleCardProps) {
  return (
    <article className="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition">
      <div className="flex items-start justify-between mb-4">
        <div>
          <h2 className="text-2xl font-bold text-blue-900 mb-2">
            Artículo {numero}
          </h2>
          {(titulo || capitulo) && (
            <div className="text-sm text-gray-600">
              {titulo && `Título ${titulo}`}
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

      <div className="prose prose-lg max-w-none">
        <p className="text-gray-800 leading-relaxed whitespace-pre-line">
          {texto}
        </p>
      </div>

      <div className="mt-4 pt-4 border-t border-gray-200">
        <Link 
          href={`/articulo/${numero}`}
          className="text-blue-600 hover:text-blue-800 font-medium transition"
        >
          Ver detalles →
        </Link>
      </div>
    </article>
  );
}
