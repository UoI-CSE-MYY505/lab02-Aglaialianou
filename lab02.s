
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
done:
findLast_forward_withPointers:
    add s0, zero, zero #initialize s0 = 0
loop:
    beq a1, zero, done1
    lw t1, 0(a0)
    bne t1, a2, next
    add s0, a0, zero
next:
    addi a0, a0, 4 #go to next element
    addi a1, a1, -1 #sub 1 from register a1(counter)
done1:   
    addi a7, zero, 10 
    ecall
