locals {
  version_result = coalesce(
    data.bumpy_minor_version.bump.result,
    data.bumpy_major_version.bump.result,
    data.bumpy_patch_version.bump.result,
  )
}

data "bumpy_major_version" "bump" {
  version     = var.input_major_version
  build       = var.build_version
  pre_release = var.pre_release_version
}

data "bumpy_minor_version" "bump" {
  version     = var.input_minor_version
  build       = var.build_version
  pre_release = var.pre_release_version
}

data "bumpy_patch_version" "bump" {
  version     = var.input_patch_version
  build       = var.build_version
  pre_release = var.pre_release_version
}
