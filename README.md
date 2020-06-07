# Hyperion for Xamarin.Android

[Hyperion](https://github.com/willowtreeapps/Hyperion-Android) module pack for Xamarin.Android apps

[![PLATFORM](https://img.shields.io/badge/platform-Xamarin.Android-lightgrey)]() [![API](https://img.shields.io/badge/API-15%2B-brightgreen)]() [![NuGet](https://img.shields.io/nuget/v/Hyperion-Xamarin.Android)](https://www.nuget.org/packages/Hyperion-Xamarin.Android)

![Hyperion Logo](art/logo.png)

## Installing

Add [NuGet package](https://www.nuget.org/packages/Hyperion-Xamarin.Android) to your Xamarin.Android project

```
PM> Install-Package Hyperion-Xamarin.Android
```

## Setup and Usage

Once NuGet package is installed, Hyperion is integrated into your app during build. No initialization code needed. It will be started automatically with your app.

Hyperion drawer can be opened from its notification.

By default, Hyperion is included only for Debug configuration.
If you want to enable it for other configurations please set `$(EnableHyperion)` MSBuild property in your `.csproj` file:
```xml
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    ...
    <EnableHyperion>true</EnableHyperion>
  </PropertyGroup>
```

**ATTENTION!** If your app uses a custom Application class, please, add these lines to your `AndroidManifest.xml` file:
```xml
<manifest ... >
	<application ...>
		...
		<service android:name="xamarin.mark.for.MonoRuntimeProvider.generation" android:process=":crash" />
		<service android:name="xamarin.mark.for.MonoRuntimeProvider.generation" android:process=":phoenix" />
...
```
This will help Xamarin.Android build tasks to generate and register MonoRuntimeProviders for processes declared in java libraries. 
Otherwise Hyperion-Crash and Hyperion-Phoenix plugins will crash due to uninitialized mono runtime in their processes.

## Included plugins

- [Hyperion-Attr](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-attr) - Inspect views and adjust their attributes.
	+ including [support.design](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-attr-design), [support.v4](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-attr-support-v4), [support.v7](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-attr-appcompat-v7), [support.v7.widget.RecyclerView](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-attr-recyclerview)
- [Hyperion-Crash](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-crash) - Show alternative activity when app crashes with the crash details. No UI for this module within drawer.
- [Hyperion-Disk](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-disk) - Browse, delete, or share your app\'s files.
- [Hyperion-Geiger-Counter](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-geiger-counter) - Check animation performance by listening for dropped frames.
- [Hyperion-Measurement](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-measurement) - Tap views to measure the distances between them.
- [Hyperion-Phoenix](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-phoenix) - Clear local storage and relaunch the app.
- [Hyperion-Recorder](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-recorder) - Record, save, and share a video of your app.
- [Hyperion-Shared-Preferences](https://github.com/willowtreeapps/Hyperion-Android/tree/develop/hyperion-shared-preferences) - View and edit your app\'s key-value storage.
- [Hyperion-AppInfo](https://github.com/STAR-ZERO/Hyperion-AppInfo) - Plugin which shows screen of details about an application

Xamarin.Android app packaging system cannot merge same-named java service provider configuration files (`META-INF\services\`) from multiple libraries.
That's why special pre-merged configuration files are included via `hyperion-known-services-xamarin.aar`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.