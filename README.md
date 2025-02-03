# Out-of-bounds memory access in assembly code

This repository contains an example of an out-of-bounds memory access bug in assembly code, along with a solution to fix it.

## Bug Description

The bug is caused by an attempt to access memory outside the valid range of an array. This can lead to unexpected behavior, crashes, or security vulnerabilities.

## Bug Solution

The solution involves adding bounds checking to ensure that the array index is within the valid range before accessing the array element.