# Minecraft Launcher 1.6.93
The old launcher we all know and love with the quality-of-life features of the new launcher. This aims to support java 8 through modern java. A fork of OLauncher to restore the former glory of the jar launcher, like a snapsht from the past.

## How to use
1. Go to the [latest release](https://github.com/waterdragon78/MinecraftLauncher-1.6.93/releases/latest)
2. Download the `MinecraftLauncher-xxx-redist.jar` file
3. Run it

## Features
- Microsoft authentication
- Bundled JVMs
  - Automatically downloads the appropriate JVM for all minecraft versions
  - You just need a runtime to open the actual launcher
  - You can still provide your own JVMs
- Update checking

## Planned Features
- Add skin/cape management

### Minor TODOs
- Support demo users (if they have a Microsoft account but no Minecraft profile)

## How to build from source
NOTE: You need jdk (I used openjdk17), git, and maven.
1. Run `git clone https://github.com/waterdragon78/MinecraftLauncher-1.6.93 && cd MinecraftLauncher-1.6.93`
2. Run `./compile.sh` (easiest and recommended) OR the steps below:
The commands must be run in the following order to build from source:
- `./decompile.sh`
  - Downloads original jar and decompiles it
- `./init.sh`
  - Turns decompiled sources into a git repository
- `./applyPatches.sh`
  - Applies OLauncher patches to the decompiled sources
- `mvn clean package`
  - Compiles the patched launcher
- `./genredist.sh` (optional)
  - Make sure you've run `git submodule update --init` as this script uses the `AutoOL` submodule.
  - Generates the redistributable JAR - Do not distribute the JARs in `olauncher/target`!
3. You can either run the MinecraftLauncher-1.6.93-redist.jar with `java -jar MinecraftLauncher-1.6.93-redist.jar` or the MinecraftLauncher-1.6.93.jar inside olauncher/target/ with `java -jar olauncher/target/MinecraftLauncher-1.6.93.jar`
