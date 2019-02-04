open Core_kernel
open Core_lwt.Std
open Bap.Std
open Rpc

(** runs an instance of BAP server. *)
val run : (request,response) Transport.pipe -> unit Lwt.Or_error.t
