#!/bin/bash
if [[ -z "${badge_shape}" ]] then
  echo not patching any icon this time
else
  brew install mono-libgdiplus
  ANDROID_PROJECT_PATH=./
  echo patching icon with shape: $badge_shape, text: $badge_text, color: $badge_color
  dotnet ./ext/PatchIcon.dll -p=$ANDROID_PROJECT_PATH -s=$badge_shape -t=$badge_text -c=$badge_color
fi

