import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Types para la base de datos
export interface Article {
  id: number;
  numero_articulo: number;
  titulo?: string;
  seccion?: string;
  capitulo?: string;
  texto: string;
  url_boe: string;
  created_at?: string;
}

export interface Title {
  id: number;
  numero: number;
  nombre: string;
  created_at?: string;
}

export interface Chapter {
  id: number;
  titulo_id: number;
  numero: number;
  nombre: string;
  seccion?: string;
  created_at?: string;
}
