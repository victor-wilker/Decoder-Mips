	move 	$t0,$zero
loop1: 	sll 	$t1,$t0,2
	add 	$t2,$a0,$t1
	sw 	$zero, 0($t2) #
	addi 	$t0,$t0,1
	slt 	$t3,$t0,$a1
	bne 	$t3,$zero,loop1