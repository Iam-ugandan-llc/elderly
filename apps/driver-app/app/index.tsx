import { Link } from "expo-router";
import { SafeAreaView, StyleSheet } from "react-native";
import { AppHome, PrimaryButton } from "@senior-rides/shared-ui";
import { getSupabaseStatus } from "@senior-rides/shared-supabase";
import { formatAppLabel } from "@senior-rides/shared-utils";
import type { AppRole } from "@senior-rides/shared-types";

const role: AppRole = "driver";

export default function DriverHomeScreen() {
  return (
    <SafeAreaView style={styles.screen}>
      <AppHome
        title={formatAppLabel("Senior Rides Driver")}
        subtitle={`Phase 1 foundation ready for the ${role} experience.`}
        status={getSupabaseStatus()}
      >
        <Link href="/login" asChild>
          <PrimaryButton label="Login placeholder" />
        </Link>
      </AppHome>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  screen: {
    flex: 1
  }
});
