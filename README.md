# 📅 Planificador Personal

Calendario + Agenda + Rutinas + Menú de comidas con sincronización en la nube.

## 🚀 Instalación (15 minutos)

### 1. Supabase (base de datos)
1. Ve a https://supabase.com y crea una cuenta gratis
2. Crea un nuevo proyecto (elige región "West EU" para menos latencia)
3. Espera ~2 min a que se active el proyecto
4. Ve a **SQL Editor → New query**, pega el contenido de `supabase-setup.sql` y pulsa Run
5. Ve a **Project Settings → API** y copia:
   - **Project URL** → algo como `https://xxxx.supabase.co`
   - **anon / public key** → empieza por `eyJhbGci...`

### 2. Vercel (hosting)
1. Ve a https://vercel.com y crea una cuenta gratis (con GitHub recomendado)
2. Opción A — Sin GitHub: arrastra esta carpeta a https://vercel.com/new
3. Opción B — Con GitHub: sube esta carpeta a un repo y conéctalo en Vercel
4. Vercel desplegará automáticamente y te dará una URL como `https://tu-app.vercel.app`

### 3. Configurar la app
1. Abre tu URL de Vercel
2. La app te pedirá la URL y la anon key de Supabase
3. Pégalos y pulsa Conectar
4. ¡Listo! Tus datos se sincronizan en todos tus dispositivos

### 4. Instalar en el móvil
- **iPhone**: Safari → botón compartir → "Añadir a pantalla de inicio"
- **Android**: Chrome → menú → "Añadir a pantalla de inicio"

## 📁 Archivos
- `index.html` — la aplicación completa
- `supabase-setup.sql` — SQL para crear la tabla en Supabase
- `vercel.json` — configuración de Vercel
- `README.md` — este archivo
