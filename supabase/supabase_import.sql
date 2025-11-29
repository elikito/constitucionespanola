-- ============================================
-- CONSTITUCIÓN ESPAÑOLA 1978
-- Script completo de importación para Supabase
-- ============================================

-- 1. CREAR TABLAS
-- ============================================

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

CREATE TABLE titulos (
  id SERIAL PRIMARY KEY,
  numero INTEGER NOT NULL UNIQUE,
  nombre TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE capitulos (
  id SERIAL PRIMARY KEY,
  titulo_id INTEGER REFERENCES titulos(id) ON DELETE CASCADE,
  numero INTEGER NOT NULL,
  nombre TEXT NOT NULL,
  seccion TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(titulo_id, numero)
);

-- 2. CREAR ÍNDICES
-- ============================================

CREATE INDEX idx_articulos_numero ON articulos(numero_articulo);
CREATE INDEX idx_articulos_titulo ON articulos(titulo);
CREATE INDEX idx_articulos_capitulo ON articulos(capitulo);
CREATE INDEX idx_titulos_numero ON titulos(numero);
CREATE INDEX idx_capitulos_titulo_id ON capitulos(titulo_id);

-- 3. CONFIGURAR FULL TEXT SEARCH
-- ============================================

ALTER TABLE articulos ADD COLUMN texto_search tsvector;
CREATE INDEX idx_articulos_texto_search ON articulos USING GIN(texto_search);

CREATE OR REPLACE FUNCTION articulos_texto_search_trigger() RETURNS trigger AS $$
BEGIN
  NEW.texto_search := to_tsvector('spanish', COALESCE(NEW.texto, ''));
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER articulos_texto_search_update
  BEFORE INSERT OR UPDATE ON articulos
  FOR EACH ROW EXECUTE FUNCTION articulos_texto_search_trigger();

-- 4. CONFIGURAR ROW LEVEL SECURITY
-- ============================================

ALTER TABLE articulos ENABLE ROW LEVEL SECURITY;
ALTER TABLE titulos ENABLE ROW LEVEL SECURITY;
ALTER TABLE capitulos ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Permitir lectura pública articulos" ON articulos FOR SELECT USING (true);
CREATE POLICY "Permitir lectura pública titulos" ON titulos FOR SELECT USING (true);
CREATE POLICY "Permitir lectura pública capitulos" ON capitulos FOR SELECT USING (true);

-- 5. INSERTAR TÍTULOS
-- ============================================

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

-- 6. INSERTAR ARTÍCULOS
-- ============================================
-- NOTA: Aquí se insertarán los 169 artículos de la Constitución
-- Formato de cada artículo:

-- INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
-- (NUMERO, 'TÍTULO', 'CAPÍTULO', 'SECCIÓN', 'TEXTO_COMPLETO', 'URL_BOE');

-- TÍTULO PRELIMINAR (Artículos 1-9)
-- ============================================

INSERT INTO articulos (numero_articulo, titulo, texto, url_boe) VALUES
(1, 'Título Preliminar', 
'1. España se constituye en un Estado social y democrático de Derecho, que propugna como valores superiores de su ordenamiento jurídico la libertad, la justicia, la igualdad y el pluralismo político.

2. La soberanía nacional reside en el pueblo español, del que emanan los poderes del Estado.

3. La forma política del Estado español es la Monarquía parlamentaria.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a1');

-- [AQUÍ CONTINÚAN LOS ARTÍCULOS 2-169]
-- Cada artículo debe seguir el formato anterior


-- 7. OPTIMIZACIÓN FINAL
-- ============================================

ANALYZE articulos;
ANALYZE titulos;
ANALYZE capitulos;
VACUUM ANALYZE;
