package io.xberg.tslp.android.e2e

import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.BeforeClass
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class SmokeTest {

    companion object {
        @BeforeClass
        @JvmStatic
        fun loadNativeLibrary() {
            System.loadLibrary("tree_sitter_language_pack_jni")
        }
    }

    @Test
    fun test_smoke_abl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_abl */)
    }

    @Test
    fun test_smoke_actionscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_actionscript */)
    }

    @Test
    fun test_smoke_ada() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ada */)
    }

    @Test
    fun test_smoke_agda() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_agda */)
    }

    @Test
    fun test_smoke_al() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_al */)
    }

    @Test
    fun test_smoke_angular() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_angular */)
    }

    @Test
    fun test_smoke_apex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_apex */)
    }

    @Test
    fun test_smoke_arduino() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_arduino */)
    }

    @Test
    fun test_smoke_asciidoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_asciidoc */)
    }

    @Test
    fun test_smoke_asm() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_asm */)
    }

    @Test
    fun test_smoke_astro() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_astro */)
    }

    @Test
    fun test_smoke_awk() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_awk */)
    }

    @Test
    fun test_smoke_bash() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bash */)
    }

    @Test
    fun test_smoke_bass() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bass */)
    }

    @Test
    fun test_smoke_batch() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_batch */)
    }

    @Test
    fun test_smoke_beancount() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_beancount */)
    }

    @Test
    fun test_smoke_bibtex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bibtex */)
    }

    @Test
    fun test_smoke_bicep() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bicep */)
    }

    @Test
    fun test_smoke_bitbake() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bitbake */)
    }

    @Test
    fun test_smoke_blade() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_blade */)
    }

    @Test
    fun test_smoke_brightscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_brightscript */)
    }

    @Test
    fun test_smoke_bsl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_bsl */)
    }

    @Test
    fun test_smoke_c() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_c */)
    }

    @Test
    fun test_smoke_c3() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_c3 */)
    }

    @Test
    fun test_smoke_caddy() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_caddy */)
    }

    @Test
    fun test_smoke_cairo() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cairo */)
    }

    @Test
    fun test_smoke_capnp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_capnp */)
    }

    @Test
    fun test_smoke_cedar() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cedar */)
    }

    @Test
    fun test_smoke_cedarschema() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cedarschema */)
    }

    @Test
    fun test_smoke_cel() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cel */)
    }

    @Test
    fun test_smoke_cfml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cfml */)
    }

    @Test
    fun test_smoke_chatito() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_chatito */)
    }

    @Test
    fun test_smoke_chuck() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_chuck */)
    }

    @Test
    fun test_smoke_circom() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_circom */)
    }

    @Test
    fun test_smoke_clarity() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_clarity */)
    }

    @Test
    fun test_smoke_clojure() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_clojure */)
    }

    @Test
    fun test_smoke_cmake() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cmake */)
    }

    @Test
    fun test_smoke_cobol() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cobol */)
    }

    @Test
    fun test_smoke_comment() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_comment */)
    }

    @Test
    fun test_smoke_commonlisp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_commonlisp */)
    }

    @Test
    fun test_smoke_cooklang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cooklang */)
    }

    @Test
    fun test_smoke_corn() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_corn */)
    }

    @Test
    fun test_smoke_cpon() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cpon */)
    }

    @Test
    fun test_smoke_cpp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cpp */)
    }

    @Test
    fun test_smoke_crystal() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_crystal */)
    }

    @Test
    fun test_smoke_csharp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_csharp */)
    }

    @Test
    fun test_smoke_css() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_css */)
    }

    @Test
    fun test_smoke_cst() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cst */)
    }

    @Test
    fun test_smoke_csv() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_csv */)
    }

    @Test
    fun test_smoke_cuda() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cuda */)
    }

    @Test
    fun test_smoke_cue() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cue */)
    }

    @Test
    fun test_smoke_cylc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_cylc */)
    }

    @Test
    fun test_smoke_d() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_d */)
    }

    @Test
    fun test_smoke_dart() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_dart */)
    }

    @Test
    fun test_smoke_desktop() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_desktop */)
    }

    @Test
    fun test_smoke_devicetree() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_devicetree */)
    }

    @Test
    fun test_smoke_dhall() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_dhall */)
    }

    @Test
    fun test_smoke_diff() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_diff */)
    }

    @Test
    fun test_smoke_djot() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_djot */)
    }

    @Test
    fun test_smoke_dockerfile() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_dockerfile */)
    }

    @Test
    fun test_smoke_dot() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_dot */)
    }

    @Test
    fun test_smoke_doxygen() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_doxygen */)
    }

    @Test
    fun test_smoke_dtd() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_dtd */)
    }

    @Test
    fun test_smoke_earthfile() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_earthfile */)
    }

    @Test
    fun test_smoke_ebnf() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ebnf */)
    }

    @Test
    fun test_smoke_editorconfig() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_editorconfig */)
    }

    @Test
    fun test_smoke_eds() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_eds */)
    }

    @Test
    fun test_smoke_eex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_eex */)
    }

    @Test
    fun test_smoke_elisp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_elisp */)
    }

    @Test
    fun test_smoke_elixir() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_elixir */)
    }

    @Test
    fun test_smoke_elm() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_elm */)
    }

    @Test
    fun test_smoke_elsa() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_elsa */)
    }

    @Test
    fun test_smoke_elvish() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_elvish */)
    }

    @Test
    fun test_smoke_embeddedtemplate() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_embeddedtemplate */)
    }

    @Test
    fun test_smoke_enforce() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_enforce */)
    }

    @Test
    fun test_smoke_erlang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_erlang */)
    }

    @Test
    fun test_smoke_facility() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_facility */)
    }

    @Test
    fun test_smoke_faust() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_faust */)
    }

    @Test
    fun test_smoke_fennel() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fennel */)
    }

    @Test
    fun test_smoke_fidl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fidl */)
    }

    @Test
    fun test_smoke_firrtl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_firrtl */)
    }

    @Test
    fun test_smoke_fish() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fish */)
    }

    @Test
    fun test_smoke_foam() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_foam */)
    }

    @Test
    fun test_smoke_forth() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_forth */)
    }

    @Test
    fun test_smoke_fortran() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fortran */)
    }

    @Test
    fun test_smoke_fsharp() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fsharp */)
    }

    @Test
    fun test_smoke_fsharp_signature() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_fsharp_signature */)
    }

    @Test
    fun test_smoke_func() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_func */)
    }

    @Test
    fun test_smoke_gap() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gap */)
    }

    @Test
    fun test_smoke_gdscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gdscript */)
    }

    @Test
    fun test_smoke_gdshader() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gdshader */)
    }

    @Test
    fun test_smoke_git_config() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_git_config */)
    }

    @Test
    fun test_smoke_git_rebase() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_git_rebase */)
    }

    @Test
    fun test_smoke_gitattributes() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gitattributes */)
    }

    @Test
    fun test_smoke_gitcommit() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gitcommit */)
    }

    @Test
    fun test_smoke_gitignore() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gitignore */)
    }

    @Test
    fun test_smoke_gleam() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gleam */)
    }

    @Test
    fun test_smoke_glimmer() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_glimmer */)
    }

    @Test
    fun test_smoke_glsl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_glsl */)
    }

    @Test
    fun test_smoke_gn() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gn */)
    }

    @Test
    fun test_smoke_gnuplot() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gnuplot */)
    }

    @Test
    fun test_smoke_go() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_go */)
    }

    @Test
    fun test_smoke_godot_resource() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_godot_resource */)
    }

    @Test
    fun test_smoke_gomod() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gomod */)
    }

    @Test
    fun test_smoke_gosum() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gosum */)
    }

    @Test
    fun test_smoke_gotmpl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gotmpl */)
    }

    @Test
    fun test_smoke_gowork() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gowork */)
    }

    @Test
    fun test_smoke_gpg() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gpg */)
    }

    @Test
    fun test_smoke_graphql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_graphql */)
    }

    @Test
    fun test_smoke_gren() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gren */)
    }

    @Test
    fun test_smoke_groovy() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_groovy */)
    }

    @Test
    fun test_smoke_gstlaunch() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_gstlaunch */)
    }

    @Test
    fun test_smoke_hack() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hack */)
    }

    @Test
    fun test_smoke_hare() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hare */)
    }

    @Test
    fun test_smoke_haskell() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_haskell */)
    }

    @Test
    fun test_smoke_haxe() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_haxe */)
    }

    @Test
    fun test_smoke_hcl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hcl */)
    }

    @Test
    fun test_smoke_heex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_heex */)
    }

    @Test
    fun test_smoke_hjson() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hjson */)
    }

    @Test
    fun test_smoke_hlsl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hlsl */)
    }

    @Test
    fun test_smoke_hocon() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hocon */)
    }

    @Test
    fun test_smoke_hoon() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hoon */)
    }

    @Test
    fun test_smoke_html() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_html */)
    }

    @Test
    fun test_smoke_htmldjango() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_htmldjango */)
    }

    @Test
    fun test_smoke_http() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_http */)
    }

    @Test
    fun test_smoke_hurl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hurl */)
    }

    @Test
    fun test_smoke_hyprlang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_hyprlang */)
    }

    @Test
    fun test_smoke_idris() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_idris */)
    }

    @Test
    fun test_smoke_ini() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ini */)
    }

    @Test
    fun test_smoke_ispc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ispc */)
    }

    @Test
    fun test_smoke_jai() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_jai */)
    }

    @Test
    fun test_smoke_janet() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_janet */)
    }

    @Test
    fun test_smoke_java() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_java */)
    }

    @Test
    fun test_smoke_javadoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_javadoc */)
    }

    @Test
    fun test_smoke_javascript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_javascript */)
    }

    @Test
    fun test_smoke_jinja2() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_jinja2 */)
    }

    @Test
    fun test_smoke_jq() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_jq */)
    }

    @Test
    fun test_smoke_jsdoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_jsdoc */)
    }

    @Test
    fun test_smoke_json() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_json */)
    }

    @Test
    fun test_smoke_json5() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_json5 */)
    }

    @Test
    fun test_smoke_jsonnet() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_jsonnet */)
    }

    @Test
    fun test_smoke_julia() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_julia */)
    }

    @Test
    fun test_smoke_just() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_just */)
    }

    @Test
    fun test_smoke_kcl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_kcl */)
    }

    @Test
    fun test_smoke_kconfig() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_kconfig */)
    }

    @Test
    fun test_smoke_kdl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_kdl */)
    }

    @Test
    fun test_smoke_kotlin() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_kotlin */)
    }

    @Test
    fun test_smoke_latex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_latex */)
    }

    @Test
    fun test_smoke_lean() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_lean */)
    }

    @Test
    fun test_smoke_ledger() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ledger */)
    }

    @Test
    fun test_smoke_less() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_less */)
    }

    @Test
    fun test_smoke_linkerscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_linkerscript */)
    }

    @Test
    fun test_smoke_liquid() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_liquid */)
    }

    @Test
    fun test_smoke_llvm() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_llvm */)
    }

    @Test
    fun test_smoke_lua() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_lua */)
    }

    @Test
    fun test_smoke_luadoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_luadoc */)
    }

    @Test
    fun test_smoke_luap() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_luap */)
    }

    @Test
    fun test_smoke_luau() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_luau */)
    }

    @Test
    fun test_smoke_magik() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_magik */)
    }

    @Test
    fun test_smoke_make() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_make */)
    }

    @Test
    fun test_smoke_markdown() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_markdown */)
    }

    @Test
    fun test_smoke_markdown_inline() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_markdown_inline */)
    }

    @Test
    fun test_smoke_matlab() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_matlab */)
    }

    @Test
    fun test_smoke_mermaid() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_mermaid */)
    }

    @Test
    fun test_smoke_meson() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_meson */)
    }

    @Test
    fun test_smoke_mlir() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_mlir */)
    }

    @Test
    fun test_smoke_mojo() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_mojo */)
    }

    @Test
    fun test_smoke_move() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_move */)
    }

    @Test
    fun test_smoke_nasm() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nasm */)
    }

    @Test
    fun test_smoke_netlinx() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_netlinx */)
    }

    @Test
    fun test_smoke_nginx() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nginx */)
    }

    @Test
    fun test_smoke_nickel() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nickel */)
    }

    @Test
    fun test_smoke_nim() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nim */)
    }

    @Test
    fun test_smoke_ninja() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ninja */)
    }

    @Test
    fun test_smoke_nix() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nix */)
    }

    @Test
    fun test_smoke_norg() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_norg */)
    }

    @Test
    fun test_smoke_norg_meta() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_norg_meta */)
    }

    @Test
    fun test_smoke_nqc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nqc */)
    }

    @Test
    fun test_smoke_nushell() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_nushell */)
    }

    @Test
    fun test_smoke_objc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_objc */)
    }

    @Test
    fun test_smoke_ocaml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ocaml */)
    }

    @Test
    fun test_smoke_ocaml_interface() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ocaml_interface */)
    }

    @Test
    fun test_smoke_ocamllex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ocamllex */)
    }

    @Test
    fun test_smoke_odin() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_odin */)
    }

    @Test
    fun test_smoke_openscad() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_openscad */)
    }

    @Test
    fun test_smoke_org() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_org */)
    }

    @Test
    fun test_smoke_pascal() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pascal */)
    }

    @Test
    fun test_smoke_pem() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pem */)
    }

    @Test
    fun test_smoke_perl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_perl */)
    }

    @Test
    fun test_smoke_pgn() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pgn */)
    }

    @Test
    fun test_smoke_php() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_php */)
    }

    @Test
    fun test_smoke_phpdoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_phpdoc */)
    }

    @Test
    fun test_smoke_pkl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pkl */)
    }

    @Test
    fun test_smoke_po() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_po */)
    }

    @Test
    fun test_smoke_poe_filter() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_poe_filter */)
    }

    @Test
    fun test_smoke_pony() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pony */)
    }

    @Test
    fun test_smoke_postscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_postscript */)
    }

    @Test
    fun test_smoke_powershell() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_powershell */)
    }

    @Test
    fun test_smoke_printf() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_printf */)
    }

    @Test
    fun test_smoke_prisma() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_prisma */)
    }

    @Test
    fun test_smoke_prolog() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_prolog */)
    }

    @Test
    fun test_smoke_promql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_promql */)
    }

    @Test
    fun test_smoke_properties() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_properties */)
    }

    @Test
    fun test_smoke_proto() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_proto */)
    }

    @Test
    fun test_smoke_prql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_prql */)
    }

    @Test
    fun test_smoke_psv() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_psv */)
    }

    @Test
    fun test_smoke_pug() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pug */)
    }

    @Test
    fun test_smoke_puppet() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_puppet */)
    }

    @Test
    fun test_smoke_purescript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_purescript */)
    }

    @Test
    fun test_smoke_pymanifest() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_pymanifest */)
    }

    @Test
    fun test_smoke_python() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_python */)
    }

    @Test
    fun test_smoke_ql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ql */)
    }

    @Test
    fun test_smoke_qmldir() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_qmldir */)
    }

    @Test
    fun test_smoke_qmljs() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_qmljs */)
    }

    @Test
    fun test_smoke_query() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_query */)
    }

    @Test
    fun test_smoke_r() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_r */)
    }

    @Test
    fun test_smoke_racket() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_racket */)
    }

    @Test
    fun test_smoke_rasi() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rasi */)
    }

    @Test
    fun test_smoke_razor() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_razor */)
    }

    @Test
    fun test_smoke_rbs() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rbs */)
    }

    @Test
    fun test_smoke_re2c() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_re2c */)
    }

    @Test
    fun test_smoke_readline() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_readline */)
    }

    @Test
    fun test_smoke_regex() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_regex */)
    }

    @Test
    fun test_smoke_rego() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rego */)
    }

    @Test
    fun test_smoke_requirements() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_requirements */)
    }

    @Test
    fun test_smoke_rescript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rescript */)
    }

    @Test
    fun test_smoke_robot() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_robot */)
    }

    @Test
    fun test_smoke_roc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_roc */)
    }

    @Test
    fun test_smoke_ron() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ron */)
    }

    @Test
    fun test_smoke_rst() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rst */)
    }

    @Test
    fun test_smoke_rtf() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rtf */)
    }

    @Test
    fun test_smoke_ruby() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ruby */)
    }

    @Test
    fun test_smoke_rust() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_rust */)
    }

    @Test
    fun test_smoke_scala() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_scala */)
    }

    @Test
    fun test_smoke_scheme() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_scheme */)
    }

    @Test
    fun test_smoke_scss() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_scss */)
    }

    @Test
    fun test_smoke_slang() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_slang */)
    }

    @Test
    fun test_smoke_smali() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_smali */)
    }

    @Test
    fun test_smoke_smalltalk() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_smalltalk */)
    }

    @Test
    fun test_smoke_smithy() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_smithy */)
    }

    @Test
    fun test_smoke_sml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sml */)
    }

    @Test
    fun test_smoke_snakemake() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_snakemake */)
    }

    @Test
    fun test_smoke_solidity() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_solidity */)
    }

    @Test
    fun test_smoke_souffle() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_souffle */)
    }

    @Test
    fun test_smoke_sourcepawn() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sourcepawn */)
    }

    @Test
    fun test_smoke_sparql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sparql */)
    }

    @Test
    fun test_smoke_sql() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sql */)
    }

    @Test
    fun test_smoke_sql_bigquery() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sql_bigquery */)
    }

    @Test
    fun test_smoke_squirrel() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_squirrel */)
    }

    @Test
    fun test_smoke_ssh_config() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ssh_config */)
    }

    @Test
    fun test_smoke_stan() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_stan */)
    }

    @Test
    fun test_smoke_starlark() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_starlark */)
    }

    @Test
    fun test_smoke_superhtml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_superhtml */)
    }

    @Test
    fun test_smoke_svelte() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_svelte */)
    }

    @Test
    fun test_smoke_sway() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_sway */)
    }

    @Test
    fun test_smoke_swift() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_swift */)
    }

    @Test
    fun test_smoke_systemverilog() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_systemverilog */)
    }

    @Test
    fun test_smoke_tablegen() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tablegen */)
    }

    @Test
    fun test_smoke_tact() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tact */)
    }

    @Test
    fun test_smoke_tcl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tcl */)
    }

    @Test
    fun test_smoke_teal() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_teal */)
    }

    @Test
    fun test_smoke_templ() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_templ */)
    }

    @Test
    fun test_smoke_tera() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tera */)
    }

    @Test
    fun test_smoke_terraform() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_terraform */)
    }

    @Test
    fun test_smoke_test() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_test */)
    }

    @Test
    fun test_smoke_textproto() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_textproto */)
    }

    @Test
    fun test_smoke_thrift() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_thrift */)
    }

    @Test
    fun test_smoke_tlaplus() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tlaplus */)
    }

    @Test
    fun test_smoke_tmux() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tmux */)
    }

    @Test
    fun test_smoke_todotxt() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_todotxt */)
    }

    @Test
    fun test_smoke_toml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_toml */)
    }

    @Test
    fun test_smoke_tsv() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tsv */)
    }

    @Test
    fun test_smoke_tsx() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_tsx */)
    }

    @Test
    fun test_smoke_turtle() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_turtle */)
    }

    @Test
    fun test_smoke_twig() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_twig */)
    }

    @Test
    fun test_smoke_typescript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_typescript */)
    }

    @Test
    fun test_smoke_typespec() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_typespec */)
    }

    @Test
    fun test_smoke_typoscript() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_typoscript */)
    }

    @Test
    fun test_smoke_typst() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_typst */)
    }

    @Test
    fun test_smoke_udev() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_udev */)
    }

    @Test
    fun test_smoke_ungrammar() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ungrammar */)
    }

    @Test
    fun test_smoke_uxntal() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_uxntal */)
    }

    @Test
    fun test_smoke_v() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_v */)
    }

    @Test
    fun test_smoke_vb() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vb */)
    }

    @Test
    fun test_smoke_verilog() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_verilog */)
    }

    @Test
    fun test_smoke_vhdl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vhdl */)
    }

    @Test
    fun test_smoke_vhs() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vhs */)
    }

    @Test
    fun test_smoke_vim() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vim */)
    }

    @Test
    fun test_smoke_vimdoc() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vimdoc */)
    }

    @Test
    fun test_smoke_vrl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vrl */)
    }

    @Test
    fun test_smoke_vue() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_vue */)
    }

    @Test
    fun test_smoke_wast() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_wast */)
    }

    @Test
    fun test_smoke_wat() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_wat */)
    }

    @Test
    fun test_smoke_wgsl() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_wgsl */)
    }

    @Test
    fun test_smoke_wgsl_bevy() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_wgsl_bevy */)
    }

    @Test
    fun test_smoke_wit() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_wit */)
    }

    @Test
    fun test_smoke_x86asm() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_x86asm */)
    }

    @Test
    fun test_smoke_xcompose() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_xcompose */)
    }

    @Test
    fun test_smoke_xml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_xml */)
    }

    @Test
    fun test_smoke_yaml() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_yaml */)
    }

    @Test
    fun test_smoke_yuck() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_yuck */)
    }

    @Test
    fun test_smoke_zig() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_zig */)
    }

    @Test
    fun test_smoke_ziggy() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ziggy */)
    }

    @Test
    fun test_smoke_ziggy_schema() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_ziggy_schema */)
    }

    @Test
    fun test_smoke_zsh() {
        val client = TreeSitterLanguagePack()
        val result = client.process(/* fixture: smoke_zsh */)
    }

}
