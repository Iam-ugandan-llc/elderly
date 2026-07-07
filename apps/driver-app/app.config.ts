import type { ExpoConfig } from "expo/config";

const config: ExpoConfig = {
  name: "Senior Rides Driver",
  slug: "senior-rides-driver",
  scheme: "senior-rides-driver",
  version: "0.1.0",
  orientation: "portrait",
  userInterfaceStyle: "automatic",
  platforms: ["ios", "android", "web"],
  ios: {
    bundleIdentifier: "com.iamugandan.seniorrides.driver",
    infoPlist: {
      ITSAppUsesNonExemptEncryption: false
    }
  },
  plugins: ["expo-dev-client", "expo-router"],
  extra: {
    supabaseUrl: process.env.EXPO_PUBLIC_SUPABASE_URL ?? "",
    supabaseAnonKey: process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY ?? "",
    eas: {
      projectId:
        process.env.EXPO_PUBLIC_EAS_PROJECT_ID ??
        "bb432a26-0502-478c-965d-4c53c98834f3"
    }
  }
};

export default config;
