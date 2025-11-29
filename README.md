# Constitución Española 1978 - Web App

Herramienta de consulta rápida y ligera de la Constitución Española de 1978.

## 🚀 Características

- **Navegación jerárquica**: Títulos > Secciones > Capítulos > Artículos
- **Buscador inteligente**: Busca por número de artículo o palabra clave
- **Enlaces oficiales**: Cada artículo enlaza con el BOE
- **Responsive**: Diseño adaptado a móvil, tablet y escritorio
- **SEO optimizado**: Metadatos dinámicos para cada página

## 🛠️ Tecnologías

- **Frontend**: Next.js 15 (React) + TypeScript
- **Estilos**: TailwindCSS
- **Base de datos**: Supabase (PostgreSQL)
- **Iconos**: Lucide React
- **Hosting**: Vercel

## 📦 Instalación

1. Clona el repositorio:
```bash
git clone https://github.com/elikito/constitucionespanola.git
cd constitucionespanola
```

2. Instala las dependencias:
```bash
npm install
```

3. Configura las variables de entorno:
   - Copia `.env.example` a `.env.local`
   - Añade tus credenciales de Supabase

```bash
cp .env.example .env.local
```

4. Ejecuta el servidor de desarrollo:
```bash
npm run dev
```

5. Abre [http://localhost:3000](http://localhost:3000) en tu navegador

## 🗄️ Estructura de Base de Datos

Ver el archivo `SUPABASE_SETUP.md` para instrucciones detalladas de configuración.

### Tabla: `articulos`
```sql
CREATE TABLE articulos (
  id SERIAL PRIMARY KEY,
  numero_articulo INTEGER NOT NULL,
  titulo TEXT,
  seccion TEXT,
  capitulo TEXT,
  texto TEXT NOT NULL,
  url_boe TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
```

### Tabla: `titulos`
```sql
CREATE TABLE titulos (
  id SERIAL PRIMARY KEY,
  numero INTEGER NOT NULL,
  nombre TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
```

### Tabla: `capitulos`
```sql
CREATE TABLE capitulos (
  id SERIAL PRIMARY KEY,
  titulo_id INTEGER REFERENCES titulos(id),
  numero INTEGER NOT NULL,
  nombre TEXT NOT NULL,
  seccion TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);
```

## 📁 Estructura del Proyecto

```
constitucionespanola/
├── app/
│   ├── api/
│   │   ├── articulos/[numero]/route.ts
│   │   ├── search/route.ts
│   │   └── titulos/route.ts
│   ├── articulo/[numero]/page.tsx
│   ├── titulo/[tituloNum]/capitulo/[capituloNum]/page.tsx
│   ├── preambulo/page.tsx
│   ├── buscar/page.tsx
│   ├── layout.tsx
│   ├── page.tsx
│   └── globals.css
├── components/
│   ├── Navbar.tsx
│   ├── Sidebar.tsx
│   ├── SearchBar.tsx
│   ├── ArticleCard.tsx
│   └── Layout.tsx
├── lib/
│   ├── supabaseClient.ts
│   └── utils.ts
├── public/
├── .env.local (no incluido en git)
├── .env.example
├── SUPABASE_SETUP.md
├── package.json
└── README.md
```

## 🌐 Deployment en Vercel

1. Conecta tu repositorio de GitHub a Vercel
2. Configura las variables de entorno en Vercel:
   - `NEXT_PUBLIC_SUPABASE_URL`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
3. Deploy automático con cada push a `main`

## 📝 Uso

### Navegación
- Utiliza el menú lateral para navegar por títulos y capítulos
- Haz clic en cualquier artículo para ver su contenido completo
- Usa el botón "Ver en BOE" para acceder al texto oficial

### Búsqueda
- Busca por número: "14", "art 23"
- Busca por palabras clave: "libertad", "derechos fundamentales"
- Los resultados aparecen en tiempo real

## 🔗 Enlaces

- [BOE - Constitución Española](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)
- [Congreso de los Diputados](https://www.congreso.es/)

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o pull request para sugerencias o mejoras.

---

Desarrollado con ❤️ para facilitar el acceso a la Constitución Española

