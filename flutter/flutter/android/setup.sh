#!/bin/bash

set -e

echo "📦 Setting up local Maven repo for FFmpegKit and SmartException..."

# Paths
MAVEN_REPO=~/.m2/repository
LIB_DIR="$(pwd)/libs"

# === FFmpegKit AAR ===
mkdir -p $MAVEN_REPO/com/arthenica/ffmpeg-kit-https/6.0-2
cp "$LIB_DIR/ffmpeg-kit-https-6.0-2.aar" "$MAVEN_REPO/com/arthenica/ffmpeg-kit-https/6.0-2/ffmpeg-kit-https-6.0-2.aar"

cat > "$MAVEN_REPO/com/arthenica/ffmpeg-kit-https/6.0-2/ffmpeg-kit-https-6.0-2.pom" <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.arthenica</groupId>
  <artifactId>ffmpeg-kit-https</artifactId>
  <version>6.0-2</version>
  <packaging>aar</packaging>
</project>
EOF

# === Smart Exception Common JAR ===
mkdir -p $MAVEN_REPO/com/smart/exception-common/0.2.1
cp "$LIB_DIR/smart-exception-common-0.2.1.jar" "$MAVEN_REPO/com/smart/exception-common/0.2.1/exception-common-0.2.1.jar"

cat > "$MAVEN_REPO/com/smart/exception-common/0.2.1/exception-common-0.2.1.pom" <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.smart</groupId>
  <artifactId>exception-common</artifactId>
  <version>0.2.1</version>
  <packaging>jar</packaging>
</project>
EOF

# === Smart Exception Java JAR ===
mkdir -p $MAVEN_REPO/com/smart/exception-java/0.2.1
cp "$LIB_DIR/smart-exception-java-0.2.1.jar" "$MAVEN_REPO/com/smart/exception-java/0.2.1/exception-java-0.2.1.jar"

cat > "$MAVEN_REPO/com/smart/exception-java/0.2.1/exception-java-0.2.1.pom" <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.smart</groupId>
  <artifactId>exception-java</artifactId>
  <version>0.2.1</version>
  <packaging>jar</packaging>
</project>
EOF

echo "✅ Local Maven dependencies installed successfully!"
