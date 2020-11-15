md .\buildTmp\libs
javac HyperionXamarinAndroidDummy.java -d buildTmp
REM jar -cvf ./buildTmp/libs/0_hyperion-known-services.jar -C ./buildTmp/ HyperionXamarinAndroidDummy.class ./META-INF
REM jar cvf ../hyperion-known-services-xamarin.aar -C ./buildTmp/ /libs/0_hyperion-known-services.jar
jar -cvf hyperion-known-services.jar -C ./buildTmp/ HyperionXamarinAndroidDummy.class ./META-INF
rmdir /s /q buildTmp