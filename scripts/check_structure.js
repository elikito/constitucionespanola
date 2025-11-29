const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Por favor exporta las variables de entorno');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

(async () => {
  const { data, error } = await supabase
    .from('articulos')
    .select('titulo, capitulo, seccion, numero_articulo')
    .lte('numero_articulo', 169)
    .order('numero_articulo');
  
  if (error) {
    console.error('Error:', error);
    process.exit(1);
  }

  // Agrupar manualmente
  const groups = {};
  
  data.forEach(article => {
    const key = `${article.titulo || 'null'}|||${article.capitulo || 'null'}|||${article.seccion || 'null'}`;
    
    if (!groups[key]) {
      groups[key] = {
        titulo: article.titulo,
        capitulo: article.capitulo,
        seccion: article.seccion,
        articulos: [],
        primer_articulo: article.numero_articulo,
        ultimo_articulo: article.numero_articulo
      };
    }
    
    groups[key].articulos.push(article.numero_articulo);
    groups[key].ultimo_articulo = article.numero_articulo;
  });

  // Convertir a array y ordenar
  const result = Object.values(groups).sort((a, b) => a.primer_articulo - b.primer_articulo);
  
  console.log('| titulo | capitulo | seccion | articulos | total | primer | ultimo |');
  console.log('|--------|----------|---------|-----------|-------|--------|--------|');
  
  result.forEach(group => {
    console.log(
      `| ${group.titulo || 'null'} | ${group.capitulo || 'null'} | ${group.seccion || 'null'} | ${group.articulos.join(', ')} | ${group.articulos.length} | ${group.primer_articulo} | ${group.ultimo_articulo} |`
    );
  });
})();
