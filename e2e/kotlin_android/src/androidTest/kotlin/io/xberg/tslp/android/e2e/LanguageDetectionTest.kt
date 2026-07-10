package io.xberg.tslp.android.e2e

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.BeforeClass
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class LanguageDetectionTest {

    companion object {
        @BeforeClass
        @JvmStatic
        fun loadNativeLibrary() {
            System.loadLibrary("tree_sitter_language_pack_jni")
        }
    }

    @Test
    fun test_detect_content_bash_shebang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_content_bash_shebang */)
    }

    @Test
    fun test_detect_content_no_shebang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_content_no_shebang */)
    }

    @Test
    fun test_detect_content_python_shebang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_content_python_shebang */)
    }

    @Test
    fun test_detect_ext_cpp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_cpp */)
    }

    @Test
    fun test_detect_ext_go() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_go */)
    }

    @Test
    fun test_detect_ext_java() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_java */)
    }

    @Test
    fun test_detect_ext_javascript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_javascript */)
    }

    @Test
    fun test_detect_ext_php() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_php */)
    }

    @Test
    fun test_detect_ext_python() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_python */)
    }

    @Test
    fun test_detect_ext_ruby() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_ruby */)
    }

    @Test
    fun test_detect_ext_rust() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_rust */)
    }

    @Test
    fun test_detect_ext_typescript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_typescript */)
    }

    @Test
    fun test_detect_ext_unknown() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_ext_unknown */)
    }

    @Test
    fun test_detect_path_dotfile() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_dotfile */)
    }

    @Test
    fun test_detect_path_go_nested() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_go_nested */)
    }

    @Test
    fun test_detect_path_java_root() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_java_root */)
    }

    @Test
    fun test_detect_path_js_root() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_js_root */)
    }

    @Test
    fun test_detect_path_nested() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_nested */)
    }

    @Test
    fun test_detect_path_no_extension() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_no_extension */)
    }

    @Test
    fun test_detect_path_rust_src() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: detect_path_rust_src */)
    }

}
