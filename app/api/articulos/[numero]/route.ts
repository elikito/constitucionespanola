import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabaseClient';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ numero: string }> }
) {
  const { numero } = await params;
  const articleNumber = parseInt(numero);

  if (isNaN(articleNumber)) {
    return NextResponse.json(
      { error: 'Número de artículo inválido' },
      { status: 400 }
    );
  }

  try {
    const { data, error } = await supabase
      .from('articulos')
      .select('*')
      .eq('numero_articulo', articleNumber)
      .single();

    if (error) {
      if (error.code === 'PGRST116') {
        return NextResponse.json(
          { error: 'Artículo no encontrado' },
          { status: 404 }
        );
      }
      throw error;
    }

    return NextResponse.json({ article: data });
  } catch (error) {
    console.error('Error fetching article:', error);
    return NextResponse.json(
      { error: 'Error al obtener el artículo' },
      { status: 500 }
    );
  }
}
