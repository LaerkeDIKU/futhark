-- Sumtypes as function arguments.
-- ==
-- input { } 
-- output { 2 }

type foobar = #foo i32 | #bar i16

let f (x : foobar) : i32 = 
  match x
    case (#foo _)  -> 1
    case (#bar _)  -> 2

let main : i32 = f (#bar 12)