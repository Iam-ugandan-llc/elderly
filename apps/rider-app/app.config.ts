import type { ExpoConfig } from "expo/config";

const config: ExpoConfig = {
  name: "Senior Rides",
  slug: "senior-rides-rider",
  scheme: "senior-rides-rider",
  version: "0.1.0",
  orientation: "portrait",
  userInterfaceStyle: "automatic",
  platforms: ["ios", "android", "web"],
  plugins: ["expo-router"],
  extra: {
    supabaseUrl: process.env.EXPO_PUBLIC_SUPABASE_URL ?? "",
    supabaseAnonKey: process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY ?? "",
    eas: {
      projectId: process.env.EXPO_PUBLIC_EAS_PROJECT_ID ?? undefined
    }
  }
};

export default config;
