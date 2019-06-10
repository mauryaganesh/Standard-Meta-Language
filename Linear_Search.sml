open Array;

local 
fun linsearch (a, A, i, l) =  
let val x = ref i; 
in (while (!x < l) andalso (a <> sub (A, !x)) do 
x := !x+1 
); 
!x 
end 
in fun search (a, A) = 
let val l = Array.length A 
val i = linsearch (a, A, 0, l) 
in if i >= l then print ("not found\n") 
else print ("found at index "^Int.toString(i)^"\n") 
end 
end 

