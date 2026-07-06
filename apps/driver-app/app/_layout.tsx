import { Stack } from "expo-router";
import { StatusBar } from "expo-status-bar";

export default function RootLayout() {
  return (
    <>
      <Stack>
        <Stack.Screen name="index" options={{ title: "Senior Rides Driver" }} />
        <Stack.Screen name="login" options={{ title: "Login" }} />
      </Stack>
      <StatusBar style="auto" />
    </>
  );
}
