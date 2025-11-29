import Layout from '@/components/Layout';
import Sidebar from '@/components/Sidebar';
import HomePage from '@/components/HomePage';
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

export default async function Home() {
  const titulos = await getTitulos();
  return (
    <Layout>
      <div className="flex">
        <Sidebar titulos={titulos} />
        <HomePage />
      </div>
    </Layout>
  );
}

