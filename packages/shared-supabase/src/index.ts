import { createClient } from "@supabase/supabase-js";

type SupabaseConfig = {
  url?: string;
  anonKey?: string;
};

export function hasSupabaseConfig(config: SupabaseConfig = {}) {
  return Boolean(config.url && config.anonKey);
}

export function getSupabaseStatus(config: SupabaseConfig = {}) {
  return hasSupabaseConfig(config)
    ? "Supabase environment configured."
    : "Supabase environment pending.";
}

export function createSupabaseBrowserClient(config: Required<SupabaseConfig>) {
  return createClient(config.url, config.anonKey);
}
