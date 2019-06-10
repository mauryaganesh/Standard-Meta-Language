fun quicksort nil = nil
|	quicksort (pivot :: rest) =
		let
			fun split(nil) = (nil,nil)
			|	split(x :: xs) =
			let
				val (below, above) = split(xs)
			in
				if x < pivot then
					(x :: below, above) 
                else
					(below, x :: above)
			end;
			val (below, above) = split(rest)
		in
			quicksort below @ [pivot] @ quicksort above
		end