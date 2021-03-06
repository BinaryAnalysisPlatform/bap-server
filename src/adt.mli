open Core_kernel
open Bap.Std
open Disasm_expert

val strings_of_bil   : stmt list -> string list
val strings_of_ops   : op list -> string list
val strings_of_kinds : kind list -> string list
val strings_of_preds : Basic.pred list -> string list
val string_of_arm    : ARM.Insn.t -> ARM.Op.t list -> string
val string_of_endian : endian -> string

module Parse : sig
  type 'a t = string -> 'a Or_error.t
  val word : word t
  val kind : kind t
  val pred : Basic.pred t
  val endian : endian t
end
