/*
A module containing the language logic for the CV template.
*/

// FIXME: decouple stuff from metadata
/* Import metadata */
#let metadata = toml("../../metadata.toml")

#let autoImport(file, lang) = {
  include {
    "../../modules_" + lang + "/" + file + ".typ"
  }
}

#let languageSwitch(key, lang: metadata.language) = {
  return metadata.lang.at(lang).at(key)
}