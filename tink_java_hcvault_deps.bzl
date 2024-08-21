"""Dependencies of Tink Java AWS KMS."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

TINK_JAVA_HCVAULT_MAVEN_TEST_ARTIFACTS = [
    "com.google.truth:truth:0.44",
    "junit:junit:4.13.2",
]

TINK_JAVA_HCVAULT_MAVEN_TOOLS_ARTIFACTS = [
    "org.ow2.asm:asm-commons:7.0",
    "org.ow2.asm:asm:7.0",
    "org.pantsbuild:jarjar:1.7.2",
]

TINK_JAVA_HCVAULT_MAVEN_ARTIFACTS = [
    "io.github.jopenlibs:vault-java-driver:5.4.0",
    "com.google.guava:guava:33.1.0-jre",
]

def tink_java_hcvault_deps():
    """Bazel dependencies for tink-java-hcvault."""
    if not native.existing_rule("tink_java"):
        # Release from 2024-08-06.
        http_archive(
            name = "tink_java",
            urls = ["https://github.com/tink-crypto/tink-java/releases/download/v1.14.1/tink-java-1.14.1.zip"],
            strip_prefix = "tink-java-1.14.1",
            sha256 = "1f8a2df8fcbfc9b19fba0d5f58cdcc12021cb33cdc307d22d840b437fd17347c",
        )
