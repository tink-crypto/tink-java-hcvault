workspace(name = "tink_java_hcvault")

load("@tink_java_hcvault//:tink_java_hcvault_deps.bzl", "TINK_JAVA_HCVAULT_MAVEN_ARTIFACTS", "TINK_JAVA_HCVAULT_MAVEN_TOOLS_ARTIFACTS", "TINK_JAVA_HCVAULT_MAVEN_TEST_ARTIFACTS", "tink_java_hcvault_deps")

tink_java_hcvault_deps()

load("@tink_java//:tink_java_deps.bzl", "TINK_MAVEN_ARTIFACTS", "tink_java_deps")

tink_java_deps()

load("@tink_java//:tink_java_deps_init.bzl", "tink_java_deps_init")

tink_java_deps_init()

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

maven_install(
    artifacts = TINK_MAVEN_ARTIFACTS +
                TINK_JAVA_HCVAULT_MAVEN_ARTIFACTS +
                TINK_JAVA_HCVAULT_MAVEN_TEST_ARTIFACTS +
                TINK_JAVA_HCVAULT_MAVEN_TOOLS_ARTIFACTS,
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)
