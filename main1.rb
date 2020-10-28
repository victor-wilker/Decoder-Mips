
def funcJType(array)
	# Jump Instructions
 	
	if array == '000010'
		y = 'j'
	end
	if array == '000011'
		y = 'jal'
	end
	y
end
def funcIType(array)
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

		if array == '001111'
			y = 'lui'
		end
		# Store Instructions
		if array == '101000'
			y = 'sb'
		end
		if array == '101001'
			y = 'sh'
		end
		if array == '101011'
			y = 'sw'
		end
		if array == '001000'
			y = 'addi'
		end
		if array == '001001'
			y = 'addui'
		end
		if array == '001100'
			y = 'andi'
		end
		# ComparisonInstructions
		if array == '001010'
			y = 'slti'
		end
		if array == '001001'
			y = 'sltiu'
		end
		if array == '001101'
			y = 'ori'
		end
		if array == '001110'
			y = 'xori'
		end
		y
end

def funcRType(array)
 	
 	if array == '100000'
 		y = 'add'
 	end
 
 	if array == '100100'
 		y = 'and'
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
 		y = 'nor'
 	end
 	if array == '100101'
 		y = 'or'
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
 		y = 'xor'
 	end
 	if array == '100001'
 		y = 'move'
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
	 # Jump Instructions
	
	if array == '001001'
		y = 'jalr'
	end
	if array == '001000'
		y = 'jr'
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



def funcITypeFormat(array , rs ,rt , imm)
		if array == 'beq' || array == 'bne'
			return  array+ '   ' + rs +' , ' + rt+' , '+imm +"\n"
		end
		if array == 'bgtz' ||  array == 'blez'
			return  array+ '   '  + rs +' , ' + imm +"\n"
		end	
	  	if array == 'lb' || array == 'lbu' || array == 'lh' || array == 'lhu' || array == 'lw' ||  array == 'sb' ||  array == 'sh' ||  array == 'sw'
			return array+ '   '  + rt +' , ' +imm+"(#{rs})" +"\n"
		end

		if array == 'addi' || array == 'addui' ||  array =='andi' || array == 'slti' || array == 'sltiu' ||  array == 'ori' || array == 'xori'
			return  array+ '   ' + rt +' , ' + rs+' , '+imm +"\n"
		end
		if array =='lui'
			return array+ '   '  + rt +' , ' +imm +"\n"
		end

end





def funcRTypeFormat(array,rs,rt,rd,shamt)

		if  array == 'sltu' || array == 'slt'|| array == 'subu' || array == 'sub'|| array == 'xor' || array == 'add'  || array == 'and' ||  array == 'nor' || array == 'or'
			return  array + '   '+ rd +' , ' + rs+' , '+ rt +"\n"
		end

		if array == 'div' || array == 'divu' || array == 'mul' || array == 'multu'
			return  array+ '   '  + rs +' , ' + rt +"\n"
		end
		
		if array == 'sll' || array == 'srl' || array ==  'sra'
			return  array+ '   '  + rd +' , ' + rt+' , '+ shamt +"\n"
		end
		if array == 'sllv' ||  array == 'srlv' || array == 'srav'
			return array+ '   ' + rd +' , ' + rt+' , '+ rs +"\n"
		end
		if array == 'jr' || array == 'mthi' || array == 'mtlo'
			return array+ '   ' + rs +"\n"
		end

		if  array == 'jalr'
			return array + '   ' + rd + ' , ' + rs +"\n"
		end
		if array == 'mfhi' || array == 'mflo'
			return  array+ '   '  + rd +"\n"
		end

		if array ==  'lhi' || array == 'move'
			return  array + '   '+ rd +' , ' + rs+  "\n"
		end
end	


def funcJTypeFormat(array,address)
	return  array + '   '+ address +"\n"
end

def typesCommand(type)
	
	if type == '000000'
		x = 'R-Type'
	elsif type == '000010' || type == '000011'
		x = 'J-Type'
	else 
		x = 'I-Type'
	end	

	x
end

def registers(reg)

	case reg.to_i(2)
		when 0
		  	return "$zero"		
		when 1
			return "$at"
		when 2
			return "$v0"
		when 3
			return "$v1"
		when 4
			return "$a0"
		when 5
			return "$a1"
		when 6
			return "$a2"
		when 7
			return "$a3"
		when 8
			 return "$t0"
		when 9
			return "$t1"
		when 10
			return "$t2"
		when 11
			return "$t3"
		when 12
			return "$t4"
		when 13
			return "$t5"
		when 14
			return "$t6"
		when 15
			return "$t7"
		when 16
			return "$s0"
		when 17
			return "$s1"
		when 18
			return "$s2"
		when 19
			return "$s3"
		when 20
			return "$s4"
		when 21
			return "$s5"
		when 22
			return "$s6"
		when 23
			return "$s7"
		when 24
			 return "$t8"
		when 25
			 return "$t9"
		when 26
			return "$k0"
		when 27
			return "$k1"
		when 28
			return "$gp"
		when 29
			return "$sp"
		when 30
			return "$fp"
		when 31
			 return "$ra"
		else
  			return "ERROR in Register"
	end

end	




def Jtype(var)
      puts '**** function Jtype *****'
	aux = var.take(6) 
	opcode = aux.join

	address = var.drop(6).join
	address = address.to_i(2)

	return funcJTypeFormat(funcJType(opcode),address.to_s)
end

def Itype(var)
      puts '**** function Itype *****'
		#opcode
		aux = var.take(6) 
		opcode = aux.join
		#remove bits 
		aux = var.drop(6)
		# rs 
		aux1 = aux.take(5) 
		rs = aux1.join
		#remove bits 
		aux1 = aux.drop(5)
		# rt 
		aux2 = aux1.take(5) 
		rt = aux2.join
		#remove bits and bit transform imm
		 imm = aux1.drop(5)
		#number is negative or positive 
		auxArray=[]
		if  imm.take(1).join == '1'
			imm.each do |n|
				if n == '1'
					
					n = 0
				else
					n = 1
				end
				auxArray << n				
			end
				
			 puts  auxArray.to_s.class
			  imm=auxArray.join
			  imm = imm.to_i(2)
			  imm = ~imm	
		else 
			imm = imm.join
			imm = imm.to_i(2)
		end


		return funcITypeFormat(funcIType(opcode) , registers(rs) ,registers(rt) , imm.to_s) 	
end

def Rtype(var)
    puts '**** function Rtype *****'
    #opcode
	aux = var.take(6) 
	opcode = aux.join

	#remove bits 
	aux = var.drop(6)
	# rs 
	aux1 = aux.take(5) 
	rs = aux1.join

	#remove bits 
	aux1 = aux.drop(5)
	# rt 
	aux2 = aux1.take(5) 
	rt = aux2.join

	#remove bits 
	aux2 = aux1.drop(5)
	# rd 
	aux3 = aux2.take(5) 
	rd = aux3.join

	#remove bits 
	aux3 = aux2.drop(5)
	# shamt 
	aux4 = aux3.take(5) 
	shamt = aux4.join
	# shamt = shamt.to_i(2)


	#remove bits 
	aux4 = aux3.drop(5)
	# funct 
	aux5 = aux4.take(6) 
	funct = aux5.join
	
 	return funcRTypeFormat( funcRType(funct),registers(rs),registers(rt),registers(rd),shamt.to_s) 
	
end

#leitura do txt 
puts ' searching file : teste.txt'

    if File.exists?("teste.txt") == true
        puts 'file not exist'
    else
        puts '-- file exist --'
         _file = File.open('teste')

	binary = []

	while ! _file.eof?
  		first = _file.gets.chomp
  		binary << first
	end

	File.open("mips.txt", "w+") do |log| # Open for appending
		binary.each do |n|
		


			var =  n.chars.take(6)
			x = var.join
	 			#return p typesCommand(func(x))
			if  typesCommand(x) == 'I-Type'
				
				# var =  n.chars.drop(6)
				var =  n.chars		

				log.puts Itype(n.chars)
			elsif typesCommand(x) == 'J-Type' 
				#  var =  n.chars.drop(6)	
				# var =  n.chars		
				# binaryNum = var.join
					
				log.puts  Jtype(n.chars)
			else
				# var =  n.chars		
				# binaryNum = var.join
			log.puts Rtype(n.chars)
			end

		end
	end

    puts ' closing file : teste.txt'
_file.close

    end 

   
