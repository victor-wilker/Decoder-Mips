swap: 	
	sll 	$t1, $a1 ,2
	add 	$t1, $a0, $t1
	lw 	$t0, 0($t1)
	lw 	$t2, 4($t1)
	sw	$t2, 0($t1)
	sw	$t0, 4($t1)