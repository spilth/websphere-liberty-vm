class { "wlp::install_java":} ->
class { "wlp":
  appNames => ['jsp-examples-war-3.0-M1.war',],
  puppetFileRoot => "/vagrant",
  serverBinaryName => "wlp-runtime-8.5.5.7.jar",
  standalone => true,
  acceptLicense => true,
  java_home => "/usr/lib/jvm/java-7-openjdk-i386",
  appsDirName => "."
}
