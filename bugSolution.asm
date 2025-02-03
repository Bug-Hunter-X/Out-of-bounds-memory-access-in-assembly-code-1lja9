mov ecx, array_size ; Load the size of the array
cmp ecx, 0 ; Check if array is empty
je empty_array ; Jump to handle the empty array case

mov eax, ebx ; Assign the array base address to eax
add eax, ecx ; Add the size to the base address

;Check if the calculated index is out of bounds
cmp ecx, 0
jl out_of_bounds

mov eax, [ebx+ecx*4] ; Access the array element
mov edx, 0
add edx, [eax]
mov [ebx+ecx*4], edx

jmp end

;Handle the case when the array is empty
empty_array:
;Handle empty array, likely return an error
mov eax, -1 ;Return -1 to signal an error
jmp end

out_of_bounds:
mov eax, -1 ;Return -1 to signal an error
jmp end
end: