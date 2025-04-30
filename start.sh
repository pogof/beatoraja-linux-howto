#!/bin/bash

# Set system-wide "_JAVA_OPTIONS" environment variable
export _JAVA_OPTIONS='-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dfile.encoding="UTF-8"'

# Path to JavaFX SDK
SCRIPT_DIR="$(dirname "$0")"
JAVAFX_SDK_PATH="$SCRIPT_DIR/javafx-sdk"

# Navigate to the script's directory
pushd "$SCRIPT_DIR" > /dev/null

# Run the Java application
java --module-path "$JAVAFX_SDK_PATH/lib" --add-modules javafx.controls,javafx.fxml -Xms1g -Xmx4g -jar beatoraja.jar

# Return to the previous directory
popd > /dev/null
