using Android.App;
using Android.Runtime;
using System;

namespace Hyperion_Xamarin.Android.TestApp
{
    [Application(
        AllowBackup = false,
        Icon = "@mipmap/ic_launcher",
        Label = "@string/app_name",
        SupportsRtl = false,
        Theme = "@style/AppTheme")]
    internal class App : Application
    {
        protected App(IntPtr javaReference, JniHandleOwnership transfer) : base(javaReference, transfer)
        {
        }

        public override void OnCreate()
        {
            base.OnCreate();
            // Custom Application class for MonoRuntimeProviders registration test
        }
    }
}