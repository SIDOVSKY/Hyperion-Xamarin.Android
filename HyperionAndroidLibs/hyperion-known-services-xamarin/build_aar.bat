md buildTmp
javac HyperionXamarinAndroidDummy.java -d buildTmp
jar -cvf ./buildTmp/classes.jar -C ./buildTmp/ HyperionXamarinAndroidDummy.class ./META-INF
jar cvf ../hyperion-known-services-xamarin.aar -C ./buildTmp/ classes.jar
rmdir /s /q buildTmp