# the_inventory

A new Flutter project.

## Building release

```bash
keytool -genkey -v -keystore %userprofile%\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

```bash
[project]/android/key.properties

storePassword=prmpsmart
keyPassword=prmpsmart
keyAlias=upload
storeFile=C:\\Users\\USER\\upload-keystore.jks

```

```bash
[project]/android/app/build.gradle


   def keystoreProperties = new Properties()
   def keystorePropertiesFile = rootProject.file('key.properties')
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
   }

   android {
         ...
   }

    // replace this 
   buildTypes {
       release {
           // TODO: Add your own signing config for the release build.
           // Signing with the debug keys for now,
           // so `flutter run --release` works.
           signingConfig signingConfigs.debug
       }
   }

   // with

```
