
open Array;

fun insert x[] = [x]
  | insert x[y::ys]=
    if x<y
    then x :: y :: ys
    else y :: (insert x ys)
fun isort [] = []
  | isort(x::xs)=
    insert x (isort xs)