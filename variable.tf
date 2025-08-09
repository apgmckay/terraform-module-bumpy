variable "input_major_version" {
  type        = string
  description = "Major version bump"
  default     = ""

  validation {
    condition     = can(regex("^(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)$", var.input_major_version)) || var.input_major_version == ""
    error_message = "Input must be semantic version or empty"
  }
}

variable "input_minor_version" {
  type        = string
  description = "Minor version bump"
  default     = ""

  validation {
    condition     = can(regex("^(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)$", var.input_minor_version)) || var.input_minor_version == ""
    error_message = "Input must be semantic version or empty"
  }
}

variable "input_patch_version" {
  type        = string
  description = "Patch version bump"
  default     = "1.11.0"

  validation {
    condition     = can(regex("^(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)$", var.input_patch_version)) || var.input_patch_version == ""
    error_message = "Input must be semantic version or empty"
  }
}

variable "build_version" {
  type        = string
  description = "Build version to add to version"
  default     = ""
}

variable "pre_release_version" {
  type        = string
  description = "Pre-release version to add to version"
  default     = ""
}
