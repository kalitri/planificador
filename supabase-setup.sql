-- ============================================================
-- EJECUTA ESTE SQL EN SUPABASE → SQL Editor → New query
-- Si ya tienes la tabla creada, ejecuta solo el ALTER TABLE
-- ============================================================

-- 1. Crear tabla principal (si no existe)
create table if not exists planificador (
  id          text primary key default 'main',
  events      jsonb not null default '{}',
  routines    jsonb not null default '[]',
  completions jsonb not null default '{}',
  meals       jsonb not null default '{}',
  bloodbowl   jsonb not null default '[]',
  updated_at  timestamptz default now()
);

-- 2. Si ya tenías la tabla, añade la columna bloodbowl
alter table planificador
  add column if not exists bloodbowl jsonb not null default '[]';

-- 3. Activar Row Level Security
alter table planificador enable row level security;

-- 4. Política: acceso anónimo total (app personal)
do $$
begin
  if not exists (
    select 1 from pg_policies where tablename = 'planificador' and policyname = 'anon_all'
  ) then
    execute $p$
      create policy "anon_all" on planificador
        for all to anon using (true) with check (true)
    $p$;
  end if;
end $$;

-- 5. Fila inicial
insert into planificador (id)
  values ('main')
  on conflict (id) do nothing;
