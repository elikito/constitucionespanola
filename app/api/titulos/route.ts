import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabaseClient';

export async function GET() {
  try {
    const { data, error } = await supabase
      .from('titulos')
      .select(`
        *,
        capitulos (*)
      `)
      .order('numero', { ascending: true });

    if (error) throw error;

    return NextResponse.json({ titulos: data || [] });
  } catch (error) {
    console.error('Error fetching titles:', error);
    return NextResponse.json(
      { error: 'Error al obtener los títulos', titulos: [] },
      { status: 500 }
    );
  }
}
