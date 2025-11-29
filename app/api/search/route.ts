import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabaseClient';

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const query = searchParams.get('q');

  if (!query || query.length < 2) {
    return NextResponse.json({ results: [] });
  }

  try {
    // Buscar por número de artículo
    const isNumber = /^\d+$/.test(query.trim());
    
    if (isNumber) {
      const articleNumber = parseInt(query.trim());
      const { data, error } = await supabase
        .from('articulos')
        .select('numero_articulo, titulo, capitulo, texto')
        .eq('numero_articulo', articleNumber)
        .limit(1);

      if (error) throw error;
      
      return NextResponse.json({ results: data || [] });
    }

    // Buscar por texto usando Full Text Search de Supabase
    const { data, error } = await supabase
      .from('articulos')
      .select('numero_articulo, titulo, capitulo, texto')
      .textSearch('texto', query, {
        type: 'websearch',
        config: 'spanish'
      })
      .limit(10);

    if (error) {
      // Si falla el Full Text Search, hacer búsqueda con ILIKE
      const { data: fallbackData, error: fallbackError } = await supabase
        .from('articulos')
        .select('numero_articulo, titulo, capitulo, texto')
        .ilike('texto', `%${query}%`)
        .limit(10);

      if (fallbackError) throw fallbackError;
      
      return NextResponse.json({ results: fallbackData || [] });
    }

    return NextResponse.json({ results: data || [] });
  } catch (error) {
    console.error('Search error:', error);
    return NextResponse.json(
      { error: 'Error al realizar la búsqueda', results: [] },
      { status: 500 }
    );
  }
}
