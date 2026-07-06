import { Link } from "expo-router";
import { SafeAreaView, StyleSheet, Text, View } from "react-native";
import { PrimaryButton, colors } from "@senior-rides/shared-ui";

export default function AdminLoginScreen() {
  return (
    <SafeAreaView style={styles.screen}>
      <View style={styles.content}>
        <Text style={styles.title}>Login placeholder</Text>
        <Text style={styles.body}>Admin authentication will be added in a later phase.</Text>
        <Link href="/" asChild>
          <PrimaryButton label="Back home" />
        </Link>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  screen: {
    flex: 1,
    backgroundColor: colors.background
  },
  content: {
    flex: 1,
    gap: 16,
    justifyContent: "center",
    padding: 24
  },
  title: {
    color: colors.text,
    fontSize: 28,
    fontWeight: "700"
  },
  body: {
    color: colors.mutedText,
    fontSize: 16,
    lineHeight: 24
  }
});
