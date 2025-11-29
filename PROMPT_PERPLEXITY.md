# Prompt para Perplexity - Generar SQL de Constitución Española

Copia y pega este prompt en Perplexity para generar el script SQL completo:

---

## PROMPT PARA PERPLEXITY:

```
Necesito generar un script SQL completo con TODOS los artículos de la Constitución Española de 1978 (del artículo 1 al 169) más las disposiciones adicionales, transitorias, derogatoria y final.

Cada INSERT debe seguir EXACTAMENTE este formato:

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(NUMERO, 'TÍTULO_X', 'Capítulo X', 'Sección Xª', 'TEXTO_COMPLETO_DEL_ARTÍCULO', 'URL');

ESPECIFICACIONES:

1. **Estructura de la tabla articulos:**
   - numero_articulo: INTEGER (1-169 para artículos normales)
   - titulo: TEXT (ejemplo: "Título I", "Título II", etc.)
   - capitulo: TEXT (ejemplo: "Capítulo 1", "Capítulo 2", NULL si no aplica)
   - seccion: TEXT (ejemplo: "Sección 1ª", "Sección 2ª", NULL si no aplica)
   - texto: TEXT (texto completo del artículo, respetando saltos de línea)
   - url_boe: TEXT (siempre usar formato: https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#aX donde X es el número de artículo)

2. **Organización por títulos:**

   - **Título Preliminar** (artículos 1-9)
   - **Título I**: De los derechos y deberes fundamentales (artículos 10-55)
     - Capítulos y secciones según corresponda
   - **Título II**: De la Corona (artículos 56-65)
   - **Título III**: De las Cortes Generales (artículos 66-96)
   - **Título IV**: Del Gobierno y de la Administración (artículos 97-107)
   - **Título V**: De las relaciones entre el Gobierno y las Cortes Generales (artículos 108-116)
   - **Título VI**: Del Poder Judicial (artículos 117-127)
   - **Título VII**: Economía y Hacienda (artículos 128-136)
   - **Título VIII**: De la Organización Territorial del Estado (artículos 137-158)
   - **Título IX**: Del Tribunal Constitucional (artículos 159-165)
   - **Título X**: De la reforma constitucional (artículos 166-169)

3. **Disposiciones:**
   Para las disposiciones adicionales, transitorias, derogatoria y final, usar numero_articulo a partir de 200:
   - Disposiciones adicionales: 201, 202, 203, 204
   - Disposiciones transitorias: 211-219 (9 en total)
   - Disposición derogatoria: 220
   - Disposición final: 221

4. **Formato del texto:**
   - Respetar numeración interna de apartados (1., 2., 3., etc.)
   - Mantener saltos de línea entre apartados
   - Usar comillas simples para el SQL
   - Escapar comillas simples en el texto con ''

5. **URLs del BOE:**
   - Para artículos: #a1, #a2, #a3, etc.
   - Para disposiciones adicionales: #da, #da-2, #da-3, #da-4
   - Para disposiciones transitorias: #dt, #dt-2, etc.
   - Para disposición derogatoria: #dd
   - Para disposición final: #df

EJEMPLO DE FORMATO CORRECTO:

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(14, 'Título I', 'Capítulo 2', 'Sección 1ª', 
'Los españoles son iguales ante la ley, sin que pueda prevalecer discriminación alguna por razón de nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social.',
'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a14');

Por favor, genera el script SQL COMPLETO con TODOS los 169 artículos más las disposiciones, manteniendo el formato exacto y el texto oficial del BOE.
```

---

## INSTRUCCIONES ADICIONALES:

1. **Copia el prompt anterior** y pégalo en Perplexity
2. **Verifica** que Perplexity genere todos los artículos (169 + disposiciones)
3. **Copia el resultado** en un archivo nuevo llamado `articulos_completos.sql`
4. **Ejecuta el script** en el Editor SQL de Supabase en este orden:
   - Primero: `supabase_import.sql` (estructura de tablas)
   - Segundo: `articulos_completos.sql` (datos completos de Perplexity)

## VERIFICACIÓN:

Después de importar, ejecuta en Supabase:

```sql
-- Debe devolver 169 + disposiciones (aproximadamente 180-190 registros)
SELECT COUNT(*) FROM articulos;

-- Ver distribución por título
SELECT titulo, COUNT(*) as total 
FROM articulos 
GROUP BY titulo 
ORDER BY titulo;

-- Ver primeros 5 artículos
SELECT numero_articulo, titulo, LEFT(texto, 100) 
FROM articulos 
ORDER BY numero_articulo 
LIMIT 5;
```

## NOTAS:

- Si Perplexity no genera todo de una vez, pídele que continúe
- Puedes dividir la petición por títulos si es muy largo
- Verifica que las comillas estén escapadas correctamente
- Revisa que los números de artículo sean secuenciales y correctos
