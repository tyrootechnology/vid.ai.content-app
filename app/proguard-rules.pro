# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/sukhpal/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#-ignorewarnings
-keep class * {
    public private *;
}

-dontwarn javax.annotation.**

-dontwarn com.squareup.okhttp.**
-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp.** { *;}
-keep class com.squareup.okhttp3.** {
    *;
}
-keep class okhttp3.* {
  *; }
-keep interface okhttp3.* {
  *; }

-dontwarn okhttp3

-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn okio.
-dontwarn com.fasterxml.**
-dontwarn okio.**
-dontwarn retrofit2.**

# Simple-Xml Proguard Config
-dontwarn com.fasterxml.**
-dontwarn com.bea.xml.**
-dontwarn com.bea.xml.stream.**
-dontwarn javax.xml.**
-dontwarn javax.xml.stream.events.**
-dontwarn org.simpleframework.xml.stream.**
-keep class org.simpleframework.xml.**{ *; }
-keepclasseswithmembers class org.simpleframeork.** { *; }
-keepclassmembers class * {
    @org.simpleframework.xml.* *;
}
-keepclassmembers,allowobfuscation class * {
    @org.simpleframework.xml.* <fields>;
    @org.simpleframework.xml.* <init>(...);
}

-keep class com.tyroo.vidai.vast.* {
        *;
}

-dontwarn javax.naming.**
-dontwarn javax.servlet.**
-dontwarn org.slf4j.**

-keepclassmembers class android.support.design.internal.BottomNavigationMenuView {
    boolean mShiftingMode;
}

#---Otto---
-keepattributes *Annotation*
-keepclassmembers class ** {
    @com.squareup.otto.Subscribe public *;
    @com.squareup.otto.Produce public *;
}

-keepattributes Signature
# For using GSON @Expose annotation
-keepattributes *Annotation*
# Gson specific classes
-dontwarn sun.misc.**
-dontwarn com.google.gson.**
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }
-keep class com.google.gson.** { *; }
-keepclassmembers class com.google.gson** {*;}
-keep class com.tyroo.vidai.entities.** { *; }
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer