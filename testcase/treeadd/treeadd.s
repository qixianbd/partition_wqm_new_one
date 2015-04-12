	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12582_0.i /home/keyming/Prophet/testcase/treeadd/treeadd.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/treeadd/treeadd.snt /home/keyming/Prophet/testcase/treeadd/treeadd.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/treeadd/treeadd.temp1 /home/keyming/Prophet/testcase/treeadd/treeadd.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/treeadd/treeadd.temp2 /home/keyming/Prophet/testcase/treeadd/treeadd.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/treeadd/treeadd.temp3 /home/keyming/Prophet/testcase/treeadd/treeadd.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/treeadd/treeadd.temp4 /home/keyming/Prophet/testcase/treeadd/treeadd.snp
	# history:  transform_print /home/keyming/Prophet/testcase/treeadd/treeadd.snp /home/keyming/Prophet/testcase/treeadd/treeadd.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/treeadd/treeadd.tp /home/keyming/Prophet/testcase/treeadd/treeadd.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/treeadd/treeadd.iocal /home/keyming/Prophet/testcase/treeadd/treeadd.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/treeadd/treeadd.bore /home/keyming/Prophet/testcase/treeadd/treeadd.porky
	# history:  suifvm /home/keyming/Prophet/testcase/treeadd/treeadd.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/treeadd/treeadd.pf /home/keyming/Prophet/testcase/treeadd/treeadd.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/treeadd/treeadd.swig /home/keyming/Prophet/testcase/treeadd/treeadd.mgen
	# history:  raga /home/keyming/Prophet/testcase/treeadd/treeadd.mgen /home/keyming/Prophet/testcase/treeadd/treeadd.raga
	# history:  partition /home/keyming/Prophet/testcase/treeadd/treeadd.sche /home/keyming/Prophet/testcase/treeadd/treeadd.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/treeadd/treeadd.par /home/keyming/Prophet/testcase/treeadd/treeadd.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/treeadd/treeadd.mfin /home/keyming/Prophet/testcase/treeadd/treeadd.nop
	# history:  transform_main /home/keyming/Prophet/testcase/treeadd/treeadd.nop /home/keyming/Prophet/testcase/treeadd/treeadd.entry
	# history:  printmachine /home/keyming/Prophet/testcase/treeadd/treeadd.entry /home/keyming/Prophet/testcase/treeadd/treeadd.s
	.set	noreorder
	.comm	NumNodes, 4
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"Treeadd with %d levels on %d processors \012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"About to enter TreeAlloc\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"About to enter TreeAdd\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Received result of %d\012\000"
	.file	2 "/home/keyming/Prophet/testcase/treeadd/treeadd.c"
	.text	
	.align	2
	.align	2
	.globl	TreeAlloc
	# .loc	2, 73
	.ent	TreeAlloc 
TreeAlloc:
	spawn	TreeAlloc.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	sw	$s2,16($sp)
 # ["header/trailer":]
	sw	$s3,20($sp)
 # ["header/trailer":]
	sw	$s4,24($sp)
 # ["header/trailer":]
	.mask	0x801f0000, -160
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 160, $31
 # ["header/trailer":]
	cqip	TreeAlloc.headerspawn
 # ["header/trailer":]
TreeAlloc.headerspawn:
 # ["header/trailer":]
	pslice_entry	TreeAlloc.headerspawn
 # ["header/trailer":]
	la	$sp,-160($sp)
 # ["header/trailer":]
	pslice_exit	TreeAlloc.headerspawn
	spawn	TreeAlloc.spawntail0
	spawn	TreeAlloc.spawntail1
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 75
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 511]
	seq	$t1,$s2,$t0
 # ["exec_times": 511]
	beqz	$t1,TreeAlloc.L1
 # ["exec_times": 511]
 # ["instr_profile": 511 255]
	nop	
	# .loc	2, 76
 # ["exec_times": 0]
	la	$v0,0($zero)
 # ["exec_times": 256]
	cqip	TreeAlloc.spawntail0
TreeAlloc.spawntail0:
	pslice_entry	TreeAlloc.spawntail0
	pslice_exit	TreeAlloc.spawntail0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$s3,20($sp)
 # ["header/trailer":]
	lw	$s4,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 256]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
TreeAlloc.L1:
	# .loc	2, 97
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 255]
	li	$a0,12
 # ["exec_times": 255]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 255]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
 # ["exec_times": 255]
	# .loc	2, 98
 # ["exec_times": 0]
	la	$t0,TreeAlloc
 # ["exec_times": 255]
	li	$t2,1
 # ["exec_times": 255]
	subu	$a0,$s2,$t2
 # ["exec_times": 255]
	li	$t3,2
 # ["exec_times": 255]
	div	$t4,$s0,$t3
 # ["exec_times": 255]
	addu	$a1,$s1,$t4
 # ["exec_times": 255]
	li	$t5,2
 # ["exec_times": 255]
	div	$a2,$s0,$t5
 # ["exec_times": 255]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 255]
 # ["proc_name": "TreeAlloc"]
 # ["call_overhead": 23]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$s4,$v0
	# .loc	2, 99
 # ["exec_times": 0]
	la	$t0,TreeAlloc
 # ["exec_times": 255]
	li	$t6,1
 # ["exec_times": 255]
	subu	$a0,$s2,$t6
 # ["exec_times": 255]
	li	$t7,2
 # ["exec_times": 255]
	div	$a2,$s0,$t7
 # ["exec_times": 255]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 255]
 # ["proc_name": "TreeAlloc"]
 # ["call_overhead": 3209]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 100
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 255]
	addu	$t9,$s3,$t8
 # ["fields": "val"]
 # ["exec_times": 255]
	li	$a0,1
 # ["exec_times": 255]
	sw	$a0,0($t9)
 # ["exec_times": 255]
	# .loc	2, 101
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 255]
	addu	$a2,$s3,$a1
 # ["fields": "left"]
 # ["exec_times": 255]
	sw	$s4,0($a2)
 # ["exec_times": 255]
	# .loc	2, 102
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 255]
	addu	$v1,$s3,$a3
 # ["fields": "right"]
 # ["exec_times": 255]
	sw	$v0,0($v1)
 # ["exec_times": 255]
	# .loc	2, 103
 # ["exec_times": 0]
	move	$v0,$s3
	cqip	TreeAlloc.spawntail1
TreeAlloc.spawntail1:
	pslice_entry	TreeAlloc.spawntail1
	pslice_exit	TreeAlloc.spawntail1
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$s3,20($sp)
 # ["header/trailer":]
	lw	$s4,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 255]
 # ["instr_ret": t:g42]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	TreeAlloc 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 32
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	# .loc	2, 36
 # ["exec_times": 0]
	li	$v1,2
 # ["exec_times": 1]
	slt	$t0,$v1,$a0
 # ["exec_times": 1]
	bnez	$t0,dealwithargs.__done3
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 39
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 1]
	sw	$t1,NumNodes
dealwithargs.__done3:
	# .loc	2, 49
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 1]
	slt	$t3,$t2,$a0
 # ["exec_times": 1]
	bnez	$t3,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 52
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 1]
dealwithargs.__done4:
	# .loc	2, 55
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dealwithargs 
	.text	
	.align	2
	.align	2
	.globl	TreeAdd
	# .loc	2, 211
	.ent	TreeAdd 
TreeAdd:
	spawn	TreeAdd.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -96
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 96, $31
 # ["header/trailer":]
	cqip	TreeAdd.headerspawn
 # ["header/trailer":]
TreeAdd.headerspawn:
 # ["header/trailer":]
	pslice_entry	TreeAdd.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	TreeAdd.headerspawn
	move	$s0,$a0
	# .loc	2, 212
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 511]
	seq	$t5,$s0,$t4
 # ["exec_times": 511]
	beqz	$t5,TreeAdd.L1
 # ["exec_times": 511]
 # ["instr_profile": 511 255]
	nop	
	# .loc	2, 213
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 256]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 256]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
TreeAdd.L1:
	# .loc	2, 240
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 255]
	addu	$t7,$s0,$t6
 # ["fields": "left"]
 # ["exec_times": 255]
	lw	$a0,0($t7)
 # ["exec_times": 255]
	# .loc	2, 241
 # ["exec_times": 0]
	la	$t0,TreeAdd
 # ["exec_times": 255]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 255]
 # ["proc_name": "TreeAdd"]
 # ["call_overhead": 16]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 242
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 255]
	addu	$t9,$s0,$t8
 # ["fields": "right"]
 # ["exec_times": 255]
	lw	$a0,0($t9)
 # ["exec_times": 255]
	# .loc	2, 243
 # ["exec_times": 0]
	la	$t0,TreeAdd
 # ["exec_times": 255]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 255]
 # ["proc_name": "TreeAdd"]
 # ["call_overhead": 2029]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 245
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 255]
	addu	$a1,$s0,$a0
 # ["fields": "val"]
 # ["exec_times": 255]
	lw	$a2,0($a1)
 # ["exec_times": 255]
	# .loc	2, 248
 # ["exec_times": 0]
	addu	$a3,$s1,$v0
 # ["exec_times": 255]
	addu	$v0,$a3,$a2
 # ["exec_times": 255]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 255]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	TreeAdd 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 142
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -96
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 96, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L1
 # ["cqip_pos": <L:entry.L1,0>]
	# .loc	2, 152
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 9]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
	# .loc	2, 159
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 1]
	la	$a0,__tmp_string_0
 # ["exec_times": 1]
	move	$a1,$s0
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	cqip	entry.L1
 # ["cqip_pos": <L:entry.L1,0>]
entry.L1:
	pslice_entry	entry.L1
 # ["pslice_entry_pos": <L:entry.L1,0>]
	pslice_exit	entry.L1
 # ["pslice_exit_pos": <L:entry.L1,0>]
	spawn	entry.L2
 # ["cqip_pos": <L:entry.L2,0>]
	# .loc	2, 166
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_1
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 172
 # ["exec_times": 0]
	la	$t0,TreeAlloc
 # ["exec_times": 1]
	move	$a1,$zero
 # ["exec_times": 1]
	move	$a0,$s0
	lw	$a2,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "TreeAlloc"]
 # ["call_overhead": 9695]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L2
 # ["cqip_pos": <L:entry.L2,0>]
entry.L2:
	pslice_entry	entry.L2
 # ["pslice_entry_pos": <L:entry.L2,0>]
	pslice_exit	entry.L2
 # ["pslice_exit_pos": <L:entry.L2,0>]
	spawn	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
	move	$s0,$v0
	# .loc	2, 180
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_2
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 188
 # ["exec_times": 0]
	la	$t0,TreeAdd
 # ["exec_times": 1]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "TreeAdd"]
 # ["call_overhead": 6125]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L3
 # ["cqip_pos": <L:entry.L3,0>]
entry.L3:
	pslice_entry	entry.L3
 # ["pslice_entry_pos": <L:entry.L3,0>]
	pslice_exit	entry.L3
 # ["pslice_exit_pos": <L:entry.L3,0>]
	# .loc	2, 192
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_3
 # ["exec_times": 1]
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 202
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 1]
	move	$a0,$zero
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 205
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	entry 
