-- Sumtypes with function payloads.
-- ==
-- input { }
-- output { 7 }

type mooboo = #moo (i32 -> i32) | #boo i32
type foobar = #foo (mooboo -> i32 -> i32) | #bar 

let main : i32 =
  let f mb x = match mb
               case (#moo g) -> g x
               case (#boo _) -> 0
  in match (#foo f, #moo (+5)) : (foobar, mooboo)
     case (#foo h, mb) -> h mb 
     case _ -> 1