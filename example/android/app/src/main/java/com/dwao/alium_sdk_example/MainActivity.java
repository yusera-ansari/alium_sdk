package com.dwao.alium_sdk_example;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.android.FlutterActivityLaunchConfigs;

public class MainActivity extends FlutterActivity {
  @NonNull
  @Override
  protected FlutterActivityLaunchConfigs.BackgroundMode getBackgroundMode() {
    return FlutterActivityLaunchConfigs.BackgroundMode.transparent;
  }
}
