
def func(array)
 	# ArithmeticandLogicalInstructions
 	if array == '100000'
 		y = 'add'
 	end
 	if array == '100001'
 		y = 'addu'
 	end
	if array == '001000'
 		y = 'addi'
 	end
 	if array == '001000'
 		y = 'addi'
 	end
 	if array == '001001'
 		y = 'addui'
 	end
 	if array == '100100'
 		y = 'and'
 	end
 	if array == '001100'
 		y = 'andi'
 	end
 	if array == '011010	'
 		y = 'div'
 	end
 	if array == '011011'
 		y = 'divu'
 	end
 	if array == '011000'
 		y = 'mul'
 	end
 	if array == '011001'
 		y = 'multu'
 	end
 	if array == '100111'
 		y = 'n||'
 	end
 	if array == '100101'
 		y = '||'
 	end
 	if array == '001101'
 		y = '||i'
 	end
 	if array == '000000'
 		y = 'sll'
 	end
 	if array == '000100'
 		y = 'sllv'
 	end
 	if array == '000011'
 		y = 'sra'
 	end
 	if array == '000111'
 		y = 'srav'
 	end
 	if array == '000010'
 		y = 'srl'
 	end
 	if array == '000110'
 		y = 'srlv'
 	end
 	if array == '100010'
 		y = 'sub'
 	end
 	if array == '100011'
 		y = 'subu'
 	end
 	if array == '100110'
 		y = 'x||'
 	end
 	if array == '001110'
 		y = 'x||i'
 	end

 	 # ConstantManipulatingInstructions
 	 if array == '011001'
 		y = 'lhi'
 	end
 	if array == '011000'
 		y = 'llo'
 	end
 	# ComparisonInstructions
 	if array == '101010'
 		y = 'slt'
 	end
 	if array == '101001'
 		y = 'sltu'
 	end
 	if array == '001010'
 		y = 'slti'
 	end
 	if array == '001001'
 		y = 'sltiu'
 	end
 	#Branch Instructions
 	if array == '000100'
 		y = 'beq'
 	end
 	if array == '000111'
 		y = 'bgtz'
 	end
 	if array == '000110'
 		y = 'blez'
 	end
 	if array == '000101'
 		y = 'bne'
 	end
 	# Jump Instructions
 	
 	if array == '000010'
 		y = 'j'
 	end
 	if array == '000011'
 		y = 'jal'
 	end
 	if array == '001001'
 		y = 'jalr'
 	end
 	if array == '001000'
 		y = 'jr'
 	end
 	# Load Instructions
	if array == '100000'
 		y = 'lb'
 	end
 	if array == '100100'
 		y = 'lbu'
 	end
 	if array == '100001'
 		y = 'lh'
 	end
 	if array == '100101'
 		y = 'lhu'
 	end
 	if array == '100011'
 		y = 'lw'
 	end
 	# St||e Instructions
 	if array == '101000'
 		y = 'sb'
 	end
 	if array == '101001'
 		y = 'sh'
 	end
 	if array == '101011'
 		y = 'sw'
 	end
 	# Data Movement Instructions
 	 if array == '010000'
 		y = 'mfhi'
 	end
 	if array == '010010'
 		y = 'mflo'
 	end
 	if array == '010001'
 		y = 'mthi'
 	end
 	if array == '010011'
 		y = 'mtlo'
 	end
 	# Exception and Interrupt Instructions
 	if array == '011010'
 		y = 'trap'
 	end

 	y
end	


def typesCommand(type)
	if type == "beq" || type =='bne' || type =='blez' || type =='bgtz' ||type =='addi' ||type =='addiu' || type =='slti ' || type =='sltiu'|| type =='andi'|| type =='||i'|| type =='x||i'|| type =='lui'|| type =='lb'|| type =='lh'|| type =="lw"|| type =='lbu'|| type =='lhu'|| type =='sb'|| type =='sh'|| type =='sw'
		x = 'I-Type'
	elsif type == 'j' || type == 'jal'
		x = 'J-Type'
	else 
		x = 'R-Type'
	end		
	x
end


