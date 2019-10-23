	move 	$t0,$a0
 	sll 	$t1,$a1,2
	add 	$t2,$a0,$t1
loop2: 	
	sw	$zero,0($t0)
	addi 	$t0,$t0,4
	slt $t3,$t0,$t2
	bne $t3,$zero,loop2