# Configuración de Supabase para Constitución Española

## 1. Crear cuenta en Supabase
1. Ve a [supabase.com](https://supabase.com)
2. Crea una cuenta gratuita
3. Crea un nuevo proyecto

## 2. Crear las tablas

Ejecuta estos scripts SQL en el Editor SQL de Supabase:

### Tabla de Artículos
```sql
CREATE TABLE articulos (
  id SERIAL PRIMARY KEY,
  numero_articulo INTEGER NOT NULL UNIQUE,
  titulo TEXT,
  seccion TEXT,
  capitulo TEXT,
  texto TEXT NOT NULL,
  url_boe TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Índices para mejor rendimiento
CREATE INDEX idx_articulos_numero ON articulos(numero_articulo);
CREATE INDEX idx_articulos_titulo ON articulos(titulo);
CREATE INDEX idx_articulos_capitulo ON articulos(capitulo);

-- Full Text Search en español
ALTER TABLE articulos ADD COLUMN texto_search tsvector;
CREATE INDEX idx_articulos_texto_search ON articulos USING GIN(texto_search);

-- Trigger para actualizar texto_search automáticamente
CREATE OR REPLACE FUNCTION articulos_texto_search_trigger() RETURNS trigger AS $$
BEGIN
  NEW.texto_search := to_tsvector('spanish', COALESCE(NEW.texto, ''));
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER articulos_texto_search_update
  BEFORE INSERT OR UPDATE ON articulos
  FOR EACH ROW EXECUTE FUNCTION articulos_texto_search_trigger();
```

### Tabla de Títulos
```sql
CREATE TABLE titulos (
  id SERIAL PRIMARY KEY,
  numero INTEGER NOT NULL UNIQUE,
  nombre TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_titulos_numero ON titulos(numero);
```

### Tabla de Capítulos
```sql
CREATE TABLE capitulos (
  id SERIAL PRIMARY KEY,
  titulo_id INTEGER REFERENCES titulos(id) ON DELETE CASCADE,
  numero INTEGER NOT NULL,
  nombre TEXT NOT NULL,
  seccion TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(titulo_id, numero)
);

CREATE INDEX idx_capitulos_titulo_id ON capitulos(titulo_id);
```

## 3. Insertar datos de ejemplo

### Títulos
```sql
INSERT INTO titulos (numero, nombre) VALUES
(0, 'Título Preliminar'),
(1, 'De los derechos y deberes fundamentales'),
(2, 'De la Corona'),
(3, 'De las Cortes Generales'),
(4, 'Del Gobierno y de la Administración'),
(5, 'De las relaciones entre el Gobierno y las Cortes Generales'),
(6, 'Del Poder Judicial'),
(7, 'Economía y Hacienda'),
(8, 'De la Organización Territorial del Estado'),
(9, 'Del Tribunal Constitucional'),
(10, 'De la reforma constitucional');
```

### Ejemplo de artículos (Título Preliminar)
```sql
INSERT INTO articulos (numero_articulo, titulo, texto, url_boe) VALUES
(1, 'Título Preliminar', 
'1. España se constituye en un Estado social y democrático de Derecho, que propugna como valores superiores de su ordenamiento jurídico la libertad, la justicia, la igualdad y el pluralismo político.

2. La soberanía nacional reside en el pueblo español, del que emanan los poderes del Estado.

3. La forma política del Estado español es la Monarquía parlamentaria.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a1'),

(2, 'Título Preliminar',
'La Constitución se fundamenta en la indisoluble unidad de la Nación española, patria común e indivisible de todos los españoles, y reconoce y garantiza el derecho a la autonomía de las nacionalidades y regiones que la integran y la solidaridad entre todas ellas.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a2'),

(3, 'Título Preliminar',
'1. El castellano es la lengua española oficial del Estado. Todos los españoles tienen el deber de conocerla y el derecho a usarla.

2. Las demás lenguas españolas serán también oficiales en las respectivas Comunidades Autónomas de acuerdo con sus Estatutos.

3. La riqueza de las distintas modalidades lingüísticas de España es un patrimonio cultural que será objeto de especial respeto y protección.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a3');
```

## 4. Configurar políticas de seguridad (Row Level Security)

```sql
-- Habilitar RLS
ALTER TABLE articulos ENABLE ROW LEVEL SECURITY;
ALTER TABLE titulos ENABLE ROW LEVEL SECURITY;
ALTER TABLE capitulos ENABLE ROW LEVEL SECURITY;

-- Permitir lectura pública
CREATE POLICY "Permitir lectura pública articulos" ON articulos FOR SELECT USING (true);
CREATE POLICY "Permitir lectura pública titulos" ON titulos FOR SELECT USING (true);
CREATE POLICY "Permitir lectura pública capitulos" ON capitulos FOR SELECT USING (true);
```

## 5. Obtener las credenciales

1. Ve a Settings > API en tu proyecto de Supabase
2. Copia:
   - Project URL (NEXT_PUBLIC_SUPABASE_URL)
   - anon/public key (NEXT_PUBLIC_SUPABASE_ANON_KEY)
3. Pégalas en tu archivo `.env.local`

## 6. Poblar la base de datos

Para poblar la base de datos con todos los artículos de la Constitución:

1. Descarga el texto oficial del BOE
2. Crea un script de importación o usa el Editor SQL
3. Inserta todos los 169 artículos + disposiciones

Ejemplo de formato para artículos:
```sql
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(14, 'Título I', 'Capítulo 2', 'Sección 1ª',
'Los españoles son iguales ante la ley, sin que pueda prevalecer discriminación alguna por razón de nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a14');
```

## 7. Verificar la configuración

Ejecuta estas consultas para verificar:

```sql
-- Contar artículos
SELECT COUNT(*) FROM articulos;

-- Ver primeros artículos
SELECT * FROM articulos ORDER BY numero_articulo LIMIT 5;

-- Probar búsqueda
SELECT numero_articulo, titulo, LEFT(texto, 100) as preview
FROM articulos
WHERE texto_search @@ to_tsquery('spanish', 'libertad')
LIMIT 5;
```

## 8. Optimización

Para mejor rendimiento:

```sql
-- Actualizar estadísticas
ANALYZE articulos;
ANALYZE titulos;
ANALYZE capitulos;

-- Vacuum (limpieza)
VACUUM ANALYZE;
```

## Recursos adicionales

- [Documentación de Supabase](https://supabase.com/docs)
- [Full Text Search en PostgreSQL](https://www.postgresql.org/docs/current/textsearch.html)
- [Row Level Security](https://supabase.com/docs/guides/auth/row-level-security)
