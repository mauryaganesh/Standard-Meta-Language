
open Array;

fun binsearch (A, x) = 
    let val n = length A;
	  val lo = ref 0 and hi = ref n;
	  val mid = ref ((!lo + !hi) div 2);
	      
    in
	  while ((!hi - !lo > 1) andalso (x <> sub (A, !mid))) do
	  (
	    if x < sub (A, !mid) then hi := !mid - 1
	    else lo := !mid + 1;
	    mid := (!lo + !hi) div 2
	   );
          if x = sub (A, !mid) then SOME (!mid)
	  else NONE
    end;
