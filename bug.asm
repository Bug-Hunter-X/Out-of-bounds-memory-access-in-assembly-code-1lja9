mov eax, [ebx+ecx*4] ;This line is causing the error. It attempts to access memory outside the valid range of the array.

mov edx, 0
add edx, [eax]
mov [ebx+ecx*4], edx