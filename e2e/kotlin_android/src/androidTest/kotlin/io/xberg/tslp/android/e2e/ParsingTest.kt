package io.xberg.tslp.android.e2e

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.BeforeClass
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ParsingTest {

    companion object {
        @BeforeClass
        @JvmStatic
        fun loadNativeLibrary() {
            System.loadLibrary("tree_sitter_language_pack_jni")
        }
    }

    @Test
    fun test_parsing_go_function() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_go_function */)
    }

    @Test
    fun test_parsing_html_element() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_html_element */)
    }

    @Test
    fun test_parsing_javascript_class() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_javascript_class */)
    }

    @Test
    fun test_parsing_javascript_variable() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_javascript_variable */)
    }

    @Test
    fun test_parsing_python_function() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_python_function */)
    }

    @Test
    fun test_parsing_rust_function() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_rust_function */)
    }

    @Test
    fun test_parsing_rust_struct() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_rust_struct */)
    }

    @Test
    fun test_parsing_typescript_function() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: parsing_typescript_function */)
    }

}
