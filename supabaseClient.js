// supabaseClient.js (o cualquier otro archivo de configuración)
import { createClient } from '@supabase/supabase-js';

// Accede a las variables de entorno
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

// Crea el cliente de Supabase
const supabase = createClient(supabaseUrl, supabaseKey);

// Ahora puedes usar `supabase` para interactuar con tu base de datos.
export default supabase;
