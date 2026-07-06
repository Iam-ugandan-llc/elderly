import type { PropsWithChildren } from "react";
import { Pressable, StyleSheet, Text, View } from "react-native";

export const colors = {
  background: "#f7f8f2",
  surface: "#ffffff",
  primary: "#2563eb",
  primaryPressed: "#1d4ed8",
  text: "#172033",
  mutedText: "#526070",
  border: "#d7dde8"
};

type AppHomeProps = PropsWithChildren<{
  title: string;
  subtitle: string;
  status?: string;
}>;

export function AppHome({ title, subtitle, status, children }: AppHomeProps) {
  return (
    <View style={styles.home}>
      <View style={styles.header}>
        <Text style={styles.title}>{title}</Text>
        <Text style={styles.subtitle}>{subtitle}</Text>
        {status ? <Text style={styles.status}>{status}</Text> : null}
      </View>
      <View style={styles.actions}>{children}</View>
    </View>
  );
}

type PrimaryButtonProps = {
  label: string;
  onPress?: () => void;
};

export function PrimaryButton({ label, onPress }: PrimaryButtonProps) {
  return (
    <Pressable
      accessibilityRole="button"
      onPress={onPress}
      style={({ pressed }) => [
        styles.button,
        pressed ? styles.buttonPressed : undefined
      ]}
    >
      <Text style={styles.buttonText}>{label}</Text>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  home: {
    flex: 1,
    backgroundColor: colors.background,
    justifyContent: "center",
    padding: 24
  },
  header: {
    gap: 12
  },
  title: {
    color: colors.text,
    fontSize: 34,
    fontWeight: "800",
    lineHeight: 42
  },
  subtitle: {
    color: colors.mutedText,
    fontSize: 17,
    lineHeight: 26
  },
  status: {
    color: colors.mutedText,
    fontSize: 14,
    lineHeight: 20
  },
  actions: {
    marginTop: 28,
    alignItems: "flex-start"
  },
  button: {
    minHeight: 48,
    justifyContent: "center",
    borderRadius: 8,
    backgroundColor: colors.primary,
    paddingHorizontal: 18,
    paddingVertical: 12
  },
  buttonPressed: {
    backgroundColor: colors.primaryPressed
  },
  buttonText: {
    color: "#ffffff",
    fontSize: 16,
    fontWeight: "700"
  }
});
