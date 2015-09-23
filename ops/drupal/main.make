core = 7.x
api = 2



; Core
projects[drupal][version] = "7.39"
projects[drupal][patch][2400287] = "https://raw.github.com/netbek/drupal-patches/7.x/core/drupal-remove_js_source_maps.patch"



; Modules
projects[admin_menu][type] = "module"
projects[admin_menu][version] = "3.0-rc5"

projects[adminimal_admin_menu][type] = "module"
projects[adminimal_admin_menu][version] = "1.6"
projects[adminimal_admin_menu][patch][2407007] = "https://www.drupal.org/files/issues/adminimal_admin_menu-js-error-2407007-3-no-whitespace-changes.patch"

projects[better_formats][type] = "module"
projects[better_formats][version] = "1.x"

projects[boost][type] = "module"
projects[boost][version] = "1.x"
projects[boost][patch][1176534] = "https://www.drupal.org/files/no_white_page_if_redirect-1176534-3.patch"
projects[boost][patch][1957532] = "https://www.drupal.org/files/issues/boost_redirect-1957532-11.patch"

projects[ckeditor][type] = "module"
projects[ckeditor][version] = "1.x"
projects[ckeditor][patch][] = "https://raw.github.com/netbek/drupal-patches/7.x/contrib/ckeditor/ckeditor-instance-config.patch"

projects[ctools][type] = "module"
projects[ctools][version] = "1.9"

; projects[dandelion][type] = "module"
; projects[dandelion][download][type] = "git"
; projects[dandelion][download][branch] = "7.x-1.x"
; projects[dandelion][download][url] = "git@github.com:liquidfridge/dandelion.git"

projects[devel][type] = "module"
projects[devel][version] = "1.5"

projects[devel_themer][type] = "module"
projects[devel_themer][version] = "1.x"

projects[diff][type] = "module"
projects[diff][version] = "3.2"

projects[elements][type] = "module"
projects[elements][version] = "1.4"

projects[expire][type] = "module"
projects[expire][version] = "2.0-rc4"

projects[features][type] = "module"
projects[features][version] = "2.6"

projects[footer_message][type] = "module"
projects[footer_message][version] = "1.1"

projects[footnotes][type] = "module"
projects[footnotes][version] = "2.x"
projects[footnotes][patch][1589130] = "https://www.drupal.org/files/footnotes-wysiwyg_fix_js_error_ckeditor-1589130-6.patch"

projects[honeypot][type] = "module"
projects[honeypot][version] = "1.21"

projects[httprl][type] = "module"
projects[httprl][version] = "1.14"

projects[ife][type] = "module"
projects[ife][version] = "2.x"

projects[jquery_update][type] = "module"
projects[jquery_update][version] = "3.0-alpha2"

projects[libraries][type] = "module"
projects[libraries][version] = "2.2"

projects[login_redirect][type] = "module"
projects[login_redirect][version] = "1.2"
projects[login_redirect][patch][2401613] = "https://www.drupal.org/files/issues/change_module_setting_link-2401613-1.patch"

projects[menu_block][type] = "module"
projects[menu_block][version] = "2.7"

projects[metatag][type] = "module"
projects[metatag][version] = "1.7"

; projects[outline_designer][type] = "module"
; projects[outline_designer][version] = "2.2"

; projects[page_title][type] = "module"
; projects[page_title][version] = "2.x"

projects[panels][type] = "module"
projects[panels][version] = "3.5"

projects[pathauto][type] = "module"
projects[pathauto][version] = "1.x"

projects[pathologic][type] = "module"
projects[pathologic][version] = "3.x"

projects[redirect][type] = "module"
projects[redirect][version] = "1.0-rc3"

projects[responsive_menus][type] = "module"
projects[responsive_menus][version] = "1.x"

projects[security_review][type] = "module"
projects[security_review][version] = "1.2"

projects[simplehtmldom][type] = "module"
projects[simplehtmldom][version] = "1.12"

projects[strongarm][type] = "module"
projects[strongarm][version] = "2.x"

; projects[talk][type] = "module"
; projects[talk][version] = "1.0"

projects[token][type] = "module"
projects[token][version] = "1.6"

projects[transliteration][type] = "module"
projects[transliteration][version] = "3.2"

projects[wysiwyg_filter][type] = "module"
projects[wysiwyg_filter][version] = "1.x"



; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.6/ckeditor_4.4.6_full.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"



; Themes
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][version] = "1.22"

projects[omega][type] = "theme"
projects[omega][version] = "4.4"
projects[omega][patch][] = "https://raw.github.com/netbek/drupal-patches/7.x/contrib/omega/omega-remove_js_source_maps.patch"

; projects[phoebe][type] = "theme"
; projects[phoebe][download][type] = "git"
; projects[phoebe][download][branch] = "7.x-1.x"
; projects[phoebe][download][url] = "git@github.com:liquidfridge/phoebe.git"
