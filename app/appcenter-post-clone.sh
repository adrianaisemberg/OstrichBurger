#!/bin/bash
ANDROID_PROJECT_PATH=./
echo patching icon with shape: $badge_shape, text: $badge_text, color: $badge_color
dotnet ./ext/PatchIcon.dll -p=$ANDROID_PROJECT_PATH -s=$badge_shape -t=$badge_text -c=$badge_color
