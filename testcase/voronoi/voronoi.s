	# target_arch: mips 1 dec-ultrix 2170
	# history:  /home/keyming/Prophet/x86_64-linux-gnu/bin/snoot -Tmips-dec-ultrix /tmp/scc12684_0.i /home/keyming/Prophet/testcase/voronoi/voronoi.snt
	# history:  porky -defaults /home/keyming/Prophet/testcase/voronoi/voronoi.snt /home/keyming/Prophet/testcase/voronoi/voronoi.temp1
	# history:  porky -kill-redundant-line-marks /home/keyming/Prophet/testcase/voronoi/voronoi.temp1 /home/keyming/Prophet/testcase/voronoi/voronoi.temp2
	# history:  porky -Darrays -Difs -Dmbrs -Dblocks -Dfors -Dloops -Dfcmmas -Dmemcpys /home/keyming/Prophet/testcase/voronoi/voronoi.temp2 /home/keyming/Prophet/testcase/voronoi/voronoi.temp3
	# history:  porky -no-sub-vars -fold -ucf-opt -no-ldc-sym-offsets -only-simple-var-ops /home/keyming/Prophet/testcase/voronoi/voronoi.temp3 /home/keyming/Prophet/testcase/voronoi/voronoi.temp4
	# history:  porky -defaults /home/keyming/Prophet/testcase/voronoi/voronoi.temp4 /home/keyming/Prophet/testcase/voronoi/voronoi.snp
	# history:  transform_print /home/keyming/Prophet/testcase/voronoi/voronoi.snp /home/keyming/Prophet/testcase/voronoi/voronoi.tp
	# history:  add_proc_name_to_io_call /home/keyming/Prophet/testcase/voronoi/voronoi.tp /home/keyming/Prophet/testcase/voronoi/voronoi.iocal
	# history:  bore -spill-instr-ops -spill-prefix _t /home/keyming/Prophet/testcase/voronoi/voronoi.iocal /home/keyming/Prophet/testcase/voronoi/voronoi.bore
	# history:  porky -unused-syms -unused-types -kill-redundant-line-marks /home/keyming/Prophet/testcase/voronoi/voronoi.bore /home/keyming/Prophet/testcase/voronoi/voronoi.porky
	# history:  suifvm /home/keyming/Prophet/testcase/voronoi/voronoi.porky
	# history:  swighnflew -no-struct-return -mark-struct-alignment -mark-varargs __builtin_va_start /home/keyming/Prophet/testcase/voronoi/voronoi.pf /home/keyming/Prophet/testcase/voronoi/voronoi.swig
	# history:  mgen-gongxiangzhan -ver 1 -impl 2170 -os dec-ultrix /home/keyming/Prophet/testcase/voronoi/voronoi.swig /home/keyming/Prophet/testcase/voronoi/voronoi.mgen
	# history:  raga /home/keyming/Prophet/testcase/voronoi/voronoi.mgen /home/keyming/Prophet/testcase/voronoi/voronoi.raga
	# history:  partition /home/keyming/Prophet/testcase/voronoi/voronoi.sche /home/keyming/Prophet/testcase/voronoi/voronoi.par
	# history:  mfin-gongxiangzhan /home/keyming/Prophet/testcase/voronoi/voronoi.par /home/keyming/Prophet/testcase/voronoi/voronoi.mfin
	# history:  add-mips-nop /home/keyming/Prophet/testcase/voronoi/voronoi.mfin /home/keyming/Prophet/testcase/voronoi/voronoi.nop
	# history:  transform_main /home/keyming/Prophet/testcase/voronoi/voronoi.nop /home/keyming/Prophet/testcase/voronoi/voronoi.entry
	# history:  printmachine /home/keyming/Prophet/testcase/voronoi/voronoi.entry /home/keyming/Prophet/testcase/voronoi/voronoi.s
	.set	noreorder
	.sdata	
	.globl	get_points_called_times
	.align	2
	.align	0	# disable automatic alignment
get_points_called_times:
	.word	0
	.comm	vp, 4
	.comm	va, 4
	.comm	next, 4
	.comm	org, 4
	.comm	num_vertices, 4
	.comm	num_edgeparts, 4
	.comm	stack_size, 4
	.comm	to_lincoln, 4
	.comm	to_off, 4
	.comm	to_3d_out, 4
	.comm	to_color, 4
	.comm	voronoi, 4
	.comm	delaunay, 4
	.comm	interactive, 4
	.comm	ahost, 4
	.comm	see, 4
	.comm	NumNodes, 4
	.comm	NDim, 4
	.comm	flag, 4
	.comm	earray, 4
	.comm	next_edge, 4
	.comm	avail_edge, 4
	.sdata	
	.globl	loop
	.align	2
	.align	0	# disable automatic alignment
loop:
	.word	0
	.sdata	
	.globl	randum
	.align	2
	.align	0	# disable automatic alignment
randum:
	.word	1
	.sdata	
	.globl	filein
	.align	2
	.align	0	# disable automatic alignment
filein:
	.word	0
	.sdata	
	.globl	fileout
	.align	2
	.align	0	# disable automatic alignment
fileout:
	.word	1
	.sdata	
	.globl	statistics
	.align	2
	.align	0	# disable automatic alignment
statistics:
	.word	0
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_0:
	.ascii	"Voronoi with %d size on %d procs of dim %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_1:
	.ascii	"Dedge %f %f \000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_2:
	.ascii	"%f %f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_3:
	.ascii	"Vedge %f %f \000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_4:
	.ascii	"mystack_ptr = %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_5:
	.ascii	"ERROR: Only 1 point!\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_6:
	.ascii	"myalign() failed\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_7:
	.ascii	"Aborting in alloc_edge, ans = 0x%x\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_8:
	.ascii	"Entered DUMP_QUAD: ptr=0x%x\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_9:
	.ascii	"DUMP_QUAD: ptr=0x%x onext=0x%x,\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_10:
	.ascii	"v=0x%x\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_11:
	.ascii	"NULL\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_12:
	.ascii	"X=%f, Y=%f\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_13:
	.ascii	"argc = %d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_14:
	.ascii	"getting %d points\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_15:
	.ascii	"Done in_order\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_16:
	.ascii	"Doing voronoi on %d nodes\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_17:
	.ascii	"Done built delaunay triangulation\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_18:
	.ascii	"n:%d\012\000"
	.sdata	
	.align	0
	.align	0	# disable automatic alignment
__tmp_string_19:
	.ascii	"cannot push onto stack: stack is too large\012\000"
	.file	2 "voronoi.c"
	.text	
	.align	2
	.align	2
	.globl	alloc_edge
	# .loc	2, 552
	.ent	alloc_edge 
alloc_edge:
	spawn	alloc_edge.headerspawn
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
	cqip	alloc_edge.headerspawn
 # ["header/trailer":]
alloc_edge.headerspawn:
 # ["header/trailer":]
	pslice_entry	alloc_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	alloc_edge.headerspawn
	# .loc	2, 555
 # ["exec_times": 0]
	la	$t1,0($zero)
 # ["exec_times": 127]
	lw	$t2,avail_edge
	seq	$t3,$t2,$t1
 # ["exec_times": 127]
	beqz	$t3,alloc_edge.L1
 # ["exec_times": 127]
 # ["instr_profile": 127 0]
	nop	
	# .loc	2, 558
 # ["exec_times": 0]
	la	$t0,myalign
 # ["exec_times": 127]
	li	$a0,64
 # ["exec_times": 127]
	li	$a1,64
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "myalign"]
 # ["call_overhead": 14]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
 # ["exec_times": 127]
	# .loc	2, 564
 # ["exec_times": 0]
	move	$t0,$s0
 # ["exec_times": 127]
	li	$t4,63
 # ["exec_times": 127]
	and	$t5,$t0,$t4
 # ["exec_times": 127]
	move	$t6,$zero
 # ["exec_times": 127]
	sne	$t7,$t5,$t6
 # ["exec_times": 127]
	beqz	$t7,alloc_edge.__done3
 # ["exec_times": 127]
 # ["instr_profile": 127 127]
	nop	
	# .loc	2, 565
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_7
 # ["exec_times": 0]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 566
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	li	$a0,-1
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
alloc_edge.L4:
	j	alloc_edge.__done3
 # ["exec_times": 0]
	nop	
alloc_edge.L1:
	# .loc	2, 569
 # ["exec_times": 0]
	lw	$s0,avail_edge
	li	$t8,4
 # ["exec_times": 0]
	lw	$t9,avail_edge
	addu	$a0,$t9,$t8
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a1,0($a0)
 # ["exec_times": 0]
	sw	$a1,avail_edge
alloc_edge.__done3:
	# .loc	2, 570
 # ["exec_times": 0]
	move	$v0,$s0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	alloc_edge 
	.text	
	.align	2
	.align	2
	.globl	makeedge
	# .loc	2, 654
	.ent	makeedge 
makeedge:
	spawn	makeedge.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	sw	$s1,12($sp)
 # ["header/trailer":]
	.mask	0x80030000, -200
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 200, $31
 # ["header/trailer":]
	cqip	makeedge.headerspawn
 # ["header/trailer":]
makeedge.headerspawn:
 # ["header/trailer":]
	pslice_entry	makeedge.headerspawn
 # ["header/trailer":]
	la	$sp,-200($sp)
 # ["header/trailer":]
	pslice_exit	makeedge.headerspawn
	spawn	makeedge.L1
 # ["cqip_pos": <L:makeedge.L1,0>]
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 656
 # ["exec_times": 0]
	la	$t0,alloc_edge
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "alloc_edge"]
 # ["call_overhead": 30]
 # ["regs_used":]
 # ["regs_defd": 9]
	nop	
	cqip	makeedge.L1
 # ["cqip_pos": <L:makeedge.L1,0>]
makeedge.L1:
	pslice_entry	makeedge.L1
 # ["pslice_entry_pos": <L:makeedge.L1,0>]
	pslice_exit	makeedge.L1
 # ["pslice_exit_pos": <L:makeedge.L1,0>]
	# .loc	2, 657
 # ["exec_times": 0]
	move	$a2,$v0
 # ["exec_times": 127]
	# .loc	2, 660
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 127]
	addu	$t4,$v0,$t3
 # ["fields": "next"]
 # ["exec_times": 127]
	sw	$a2,0($t4)
 # ["exec_times": 127]
	# .loc	2, 661
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 127]
	addu	$t6,$v0,$t5
 # ["fields": "v"]
 # ["exec_times": 127]
	sw	$s1,0($t6)
 # ["exec_times": 127]
	# .loc	2, 662
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 127]
	addu	$v0,$v0,$t7
 # ["exec_times": 127]
	# .loc	2, 663
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 127]
	addu	$t9,$v0,$t8
 # ["fields": "next"]
 # ["exec_times": 127]
	move	$t2,$a2
 # ["exec_times": 127]
	li	$a0,48
 # ["exec_times": 127]
	addu	$t1,$t2,$a0
 # ["exec_times": 127]
	sw	$t1,0($t9)
 # ["exec_times": 127]
	# .loc	2, 664
 # ["exec_times": 0]
	li	$a1,16
 # ["exec_times": 127]
	addu	$v0,$v0,$a1
 # ["exec_times": 127]
	# .loc	2, 665
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 127]
	addu	$a3,$v0,$a3
 # ["fields": "next"]
 # ["exec_times": 127]
	move	$t0,$a2
 # ["exec_times": 127]
	li	$v1,32
 # ["exec_times": 127]
	addu	$v1,$t0,$v1
 # ["exec_times": 127]
	sw	$v1,0($a3)
 # ["exec_times": 127]
	# .loc	2, 666
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 127]
	addu	$t0,$v0,$v1
 # ["fields": "v"]
 # ["exec_times": 127]
	sw	$s0,0($t0)
 # ["exec_times": 127]
	# .loc	2, 667
 # ["exec_times": 0]
	li	$t1,16
 # ["exec_times": 127]
	addu	$v0,$v0,$t1
 # ["exec_times": 127]
	# .loc	2, 668
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 127]
	addu	$t3,$v0,$t2
 # ["fields": "next"]
 # ["exec_times": 127]
	move	$v0,$a2
 # ["exec_times": 127]
	li	$t4,16
 # ["exec_times": 127]
	addu	$a3,$v0,$t4
 # ["exec_times": 127]
	sw	$a3,0($t3)
 # ["exec_times": 127]
	# .loc	2, 672
 # ["exec_times": 0]
	move	$v0,$a2
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	makeedge 
	.text	
	.align	2
	.align	2
	.globl	splice
	# .loc	2, 677
	.ent	splice 
splice:
	spawn	splice.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 224, $31
 # ["header/trailer":]
	cqip	splice.headerspawn
 # ["header/trailer":]
splice.headerspawn:
 # ["header/trailer":]
	pslice_entry	splice.headerspawn
 # ["header/trailer":]
	la	$sp,-224($sp)
 # ["header/trailer":]
	pslice_exit	splice.headerspawn
	# .loc	2, 683
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 126]
	addu	$a2,$a0,$a2
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$a2,0($a2)
 # ["exec_times": 126]
	li	$a3,16
 # ["exec_times": 126]
	addu	$v0,$a2,$a3
 # ["exec_times": 126]
	li	$v1,63
 # ["exec_times": 126]
	and	$t0,$v0,$v1
 # ["exec_times": 126]
	li	$t1,4
 # ["exec_times": 126]
	addu	$t2,$a0,$t1
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t9,0($t2)
 # ["exec_times": 126]
	li	$t3,4294967232
 # ["exec_times": 126]
	and	$t4,$t9,$t3
 # ["exec_times": 126]
	or	$t8,$t0,$t4
 # ["exec_times": 126]
	# .loc	2, 693
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 126]
	addu	$t6,$a1,$t5
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t7,0($t6)
 # ["exec_times": 126]
	li	$t9,16
 # ["exec_times": 126]
	addu	$t9,$t7,$t9
 # ["exec_times": 126]
	li	$a2,63
 # ["exec_times": 126]
	and	$a2,$t9,$a2
 # ["exec_times": 126]
	li	$a3,4
 # ["exec_times": 126]
	addu	$a3,$a1,$a3
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t6,0($a3)
 # ["exec_times": 126]
	li	$a3,4294967232
 # ["exec_times": 126]
	and	$v0,$t6,$a3
 # ["exec_times": 126]
	or	$t5,$a2,$v0
 # ["exec_times": 126]
	# .loc	2, 704
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 126]
	addu	$t0,$t5,$v1
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t1,0($t0)
 # ["exec_times": 126]
	# .loc	2, 705
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 126]
	addu	$t3,$t8,$t2
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t4,0($t3)
 # ["exec_times": 126]
	# .loc	2, 707
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 126]
	addu	$t6,$t8,$t6
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$t1,0($t6)
 # ["exec_times": 126]
	# .loc	2, 710
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 126]
	addu	$t8,$t5,$t7
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$t4,0($t8)
 # ["exec_times": 126]
	# .loc	2, 712
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 126]
	addu	$a2,$a0,$t9
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t4,0($a2)
 # ["exec_times": 126]
	# .loc	2, 713
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 126]
	addu	$a2,$a1,$a2
 # ["fields": "next"]
 # ["exec_times": 126]
	lw	$t1,0($a2)
 # ["exec_times": 126]
	# .loc	2, 715
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 126]
	addu	$v0,$a1,$a3
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$t4,0($v0)
 # ["exec_times": 126]
	# .loc	2, 717
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 126]
	addu	$t0,$a0,$v1
 # ["fields": "next"]
 # ["exec_times": 126]
	sw	$t1,0($t0)
 # ["exec_times": 126]
	# .loc	2, 721
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 126]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 126]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	splice 
	.text	
	.align	2
	.align	2
	.globl	swapedge
	# .loc	2, 725
	.ent	swapedge 
swapedge:
	spawn	swapedge.headerspawn
 # ["header/trailer":]
	la	$sp,-728($sp)
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
	.mask	0x800f0000, -728
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 728, $31
 # ["header/trailer":]
	cqip	swapedge.headerspawn
 # ["header/trailer":]
swapedge.headerspawn:
 # ["header/trailer":]
	pslice_entry	swapedge.headerspawn
 # ["header/trailer":]
	la	$sp,-728($sp)
 # ["header/trailer":]
	pslice_exit	swapedge.headerspawn
	move	$s0,$a0
	# .loc	2, 730
 # ["exec_times": 0]
	spawn	swapedge.L1
 # ["cqip_pos": <L:swapedge.L1,0>]
	li	$t4,16
 # ["exec_times": 0]
	addu	$t5,$s0,$t4
 # ["exec_times": 0]
	li	$t6,63
 # ["exec_times": 0]
	and	$t7,$t5,$t6
 # ["exec_times": 0]
	li	$t8,4294967232
 # ["exec_times": 0]
	and	$t9,$s0,$t8
 # ["exec_times": 0]
	or	$t3,$t7,$t9
 # ["exec_times": 0]
	li	$a0,4
 # ["exec_times": 0]
	addu	$a1,$t3,$a0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t2,0($a1)
 # ["exec_times": 0]
	li	$a2,16
 # ["exec_times": 0]
	addu	$a3,$t2,$a2
 # ["exec_times": 0]
	li	$v0,63
 # ["exec_times": 0]
	and	$v1,$a3,$v0
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 0]
	addu	$t1,$s0,$t0
 # ["exec_times": 0]
	li	$t2,63
 # ["exec_times": 0]
	and	$t3,$t1,$t2
 # ["exec_times": 0]
	li	$t4,4294967232
 # ["exec_times": 0]
	and	$t5,$s0,$t4
 # ["exec_times": 0]
	or	$t1,$t3,$t5
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t7,$t1,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t0,0($t7)
 # ["exec_times": 0]
	li	$t8,4294967232
 # ["exec_times": 0]
	and	$t9,$t0,$t8
 # ["exec_times": 0]
	or	$s2,$v1,$t9
 # ["exec_times": 0]
	# .loc	2, 772
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	xor	$s3,$s0,$a0
 # ["exec_times": 0]
	# .loc	2, 774
 # ["exec_times": 0]
	li	$a1,16
 # ["exec_times": 0]
	addu	$a2,$s3,$a1
 # ["exec_times": 0]
	li	$a3,63
 # ["exec_times": 0]
	and	$v0,$a2,$a3
 # ["exec_times": 0]
	li	$v1,4294967232
 # ["exec_times": 0]
	and	$t0,$s3,$v1
 # ["exec_times": 0]
	or	$v1,$v0,$t0
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	addu	$t2,$v1,$t1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$v0,0($t2)
 # ["exec_times": 0]
	li	$t3,16
 # ["exec_times": 0]
	addu	$t4,$v0,$t3
 # ["exec_times": 0]
	li	$t5,63
 # ["exec_times": 0]
	and	$t6,$t4,$t5
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 0]
	addu	$t8,$s3,$t7
 # ["exec_times": 0]
	li	$t9,63
 # ["exec_times": 0]
	and	$a0,$t8,$t9
 # ["exec_times": 0]
	li	$a1,4294967232
 # ["exec_times": 0]
	and	$a2,$s3,$a1
 # ["exec_times": 0]
	or	$a3,$a0,$a2
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 0]
	addu	$v0,$a3,$v0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a2,0($v0)
 # ["exec_times": 0]
	li	$v1,4294967232
 # ["exec_times": 0]
	and	$t0,$a2,$v1
 # ["exec_times": 0]
	or	$s1,$t6,$t0
 # ["exec_times": 0]
	# .loc	2, 816
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	move	$a0,$s0
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	cqip	swapedge.L1
 # ["cqip_pos": <L:swapedge.L1,0>]
swapedge.L1:
	pslice_entry	swapedge.L1
 # ["pslice_entry_pos": <L:swapedge.L1,0>]
	pslice_exit	swapedge.L1
 # ["pslice_exit_pos": <L:swapedge.L1,0>]
	spawn	swapedge.L2
 # ["cqip_pos": <L:swapedge.L2,0>]
	# .loc	2, 817
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 818
 # ["exec_times": 0]
	li	$t1,48
 # ["exec_times": 0]
	addu	$t2,$s2,$t1
 # ["exec_times": 0]
	li	$t3,63
 # ["exec_times": 0]
	and	$t4,$t2,$t3
 # ["exec_times": 0]
	li	$t5,4294967232
 # ["exec_times": 0]
	and	$t6,$s2,$t5
 # ["exec_times": 0]
	or	$a1,$t4,$t6
 # ["exec_times": 0]
	li	$t7,4
 # ["exec_times": 0]
	addu	$t8,$a1,$t7
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a0,0($t8)
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$a0,$a0,$t9
 # ["exec_times": 0]
	li	$a1,63
 # ["exec_times": 0]
	and	$a2,$a0,$a1
 # ["exec_times": 0]
	li	$a3,48
 # ["exec_times": 0]
	addu	$v0,$s2,$a3
 # ["exec_times": 0]
	li	$v1,63
 # ["exec_times": 0]
	and	$t0,$v0,$v1
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$s2,$t1
 # ["exec_times": 0]
	or	$t9,$t0,$t2
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	addu	$t4,$t9,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t8,0($t4)
 # ["exec_times": 0]
	li	$t5,4294967232
 # ["exec_times": 0]
	and	$t6,$t8,$t5
 # ["exec_times": 0]
	or	$a1,$a2,$t6
 # ["exec_times": 0]
	# .loc	2, 861
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	cqip	swapedge.L2
 # ["cqip_pos": <L:swapedge.L2,0>]
swapedge.L2:
	pslice_entry	swapedge.L2
 # ["pslice_entry_pos": <L:swapedge.L2,0>]
	pslice_exit	swapedge.L2
 # ["pslice_exit_pos": <L:swapedge.L2,0>]
	# .loc	2, 862
 # ["exec_times": 0]
	li	$t7,48
 # ["exec_times": 0]
	addu	$t8,$s1,$t7
 # ["exec_times": 0]
	li	$t9,63
 # ["exec_times": 0]
	and	$a0,$t8,$t9
 # ["exec_times": 0]
	li	$a1,4294967232
 # ["exec_times": 0]
	and	$a2,$s1,$a1
 # ["exec_times": 0]
	or	$t7,$a0,$a2
 # ["exec_times": 0]
	li	$a3,4
 # ["exec_times": 0]
	addu	$v0,$t7,$a3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t6,0($v0)
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 0]
	addu	$t0,$t6,$v1
 # ["exec_times": 0]
	li	$t1,63
 # ["exec_times": 0]
	and	$t2,$t0,$t1
 # ["exec_times": 0]
	li	$t3,48
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["exec_times": 0]
	li	$t5,63
 # ["exec_times": 0]
	and	$t6,$t4,$t5
 # ["exec_times": 0]
	li	$t7,4294967232
 # ["exec_times": 0]
	and	$t8,$s1,$t7
 # ["exec_times": 0]
	or	$t5,$t6,$t8
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 0]
	addu	$a0,$t5,$t9
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t4,0($a0)
 # ["exec_times": 0]
	li	$a1,4294967232
 # ["exec_times": 0]
	and	$a2,$t4,$a1
 # ["exec_times": 0]
	or	$a1,$t2,$a2
 # ["exec_times": 0]
	# .loc	2, 905
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	move	$a0,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 906
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 0]
	xor	$t3,$s2,$a3
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$t3,$v0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 908
 # ["exec_times": 0]
	li	$t1,32
 # ["exec_times": 0]
	xor	$t2,$s1,$t1
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t3,$t2,$t3
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t4,0($t3)
 # ["exec_times": 0]
	# .loc	2, 910
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$s0,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	sw	$t0,0($t6)
 # ["exec_times": 0]
	# .loc	2, 912
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$t1,$s0,$t7
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$t1,$t8
 # ["fields": "v"]
 # ["exec_times": 0]
	sw	$t4,0($t9)
 # ["exec_times": 0]
	# .loc	2, 916
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
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
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	swapedge 
	.text	
	.align	2
	.align	2
	.globl	deleteedge
	# .loc	2, 466
	.ent	deleteedge 
deleteedge:
	spawn	deleteedge.headerspawn
 # ["header/trailer":]
	la	$sp,-400($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -400
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 400, $31
 # ["header/trailer":]
	cqip	deleteedge.headerspawn
 # ["header/trailer":]
deleteedge.headerspawn:
 # ["header/trailer":]
	pslice_entry	deleteedge.headerspawn
 # ["header/trailer":]
	la	$sp,-400($sp)
 # ["header/trailer":]
	pslice_exit	deleteedge.headerspawn
	spawn	deleteedge.L1
 # ["cqip_pos": <L:deleteedge.L1,0>]
	move	$s0,$a0
	# .loc	2, 469
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["exec_times": 0]
	li	$t8,63
 # ["exec_times": 0]
	and	$t9,$t7,$t8
 # ["exec_times": 0]
	li	$a0,4294967232
 # ["exec_times": 0]
	and	$a1,$s0,$a0
 # ["exec_times": 0]
	or	$t5,$t9,$a1
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 0]
	addu	$a3,$t5,$a2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t4,0($a3)
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 0]
	addu	$v1,$t4,$v0
 # ["exec_times": 0]
	li	$t0,63
 # ["exec_times": 0]
	and	$t1,$v1,$t0
 # ["exec_times": 0]
	li	$t2,16
 # ["exec_times": 0]
	addu	$t3,$s0,$t2
 # ["exec_times": 0]
	li	$t4,63
 # ["exec_times": 0]
	and	$t5,$t3,$t4
 # ["exec_times": 0]
	li	$t6,4294967232
 # ["exec_times": 0]
	and	$t7,$s0,$t6
 # ["exec_times": 0]
	or	$t3,$t5,$t7
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 0]
	addu	$t9,$t3,$t8
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t2,0($t9)
 # ["exec_times": 0]
	li	$a0,4294967232
 # ["exec_times": 0]
	and	$a1,$t2,$a0
 # ["exec_times": 0]
	or	$a1,$t1,$a1
 # ["exec_times": 0]
	# .loc	2, 510
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	cqip	deleteedge.L1
 # ["cqip_pos": <L:deleteedge.L1,0>]
deleteedge.L1:
	pslice_entry	deleteedge.L1
 # ["pslice_entry_pos": <L:deleteedge.L1,0>]
	pslice_exit	deleteedge.L1
 # ["pslice_exit_pos": <L:deleteedge.L1,0>]
	spawn	deleteedge.L2
 # ["cqip_pos": <L:deleteedge.L2,0>]
	# .loc	2, 512
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 0]
	xor	$t1,$s0,$a2
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 0]
	addu	$v0,$t1,$a3
 # ["exec_times": 0]
	li	$v1,63
 # ["exec_times": 0]
	and	$t1,$v0,$v1
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	xor	$t0,$s0,$t2
 # ["exec_times": 0]
	li	$t2,4294967232
 # ["exec_times": 0]
	and	$t3,$t0,$t2
 # ["exec_times": 0]
	or	$v1,$t1,$t3
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 0]
	addu	$t5,$v1,$t4
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$v0,0($t5)
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 0]
	addu	$t7,$v0,$t6
 # ["exec_times": 0]
	li	$t8,63
 # ["exec_times": 0]
	and	$t3,$t7,$t8
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$a3,$s0,$t9
 # ["exec_times": 0]
	li	$a0,16
 # ["exec_times": 0]
	addu	$a1,$a3,$a0
 # ["exec_times": 0]
	li	$a2,63
 # ["exec_times": 0]
	and	$a3,$a1,$a2
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	xor	$a2,$s0,$v0
 # ["exec_times": 0]
	li	$v1,4294967232
 # ["exec_times": 0]
	and	$t0,$a2,$v1
 # ["exec_times": 0]
	or	$a1,$a3,$t0
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	addu	$t2,$a1,$t1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a0,0($t2)
 # ["exec_times": 0]
	li	$t4,4294967232
 # ["exec_times": 0]
	and	$t5,$a0,$t4
 # ["exec_times": 0]
	or	$a1,$t3,$t5
 # ["exec_times": 0]
	# .loc	2, 540
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	xor	$a0,$s0,$t6
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	cqip	deleteedge.L2
 # ["cqip_pos": <L:deleteedge.L2,0>]
deleteedge.L2:
	pslice_entry	deleteedge.L2
 # ["pslice_entry_pos": <L:deleteedge.L2,0>]
	pslice_exit	deleteedge.L2
 # ["pslice_exit_pos": <L:deleteedge.L2,0>]
	# .loc	2, 543
 # ["exec_times": 0]
	la	$t0,free_edge
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "free_edge"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 545
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
	.end	deleteedge 
	.text	
	.align	2
	.align	2
	.globl	build_delaunay_triangulation
	# .loc	2, 410
	.ent	build_delaunay_triangulation 
build_delaunay_triangulation:
	spawn	build_delaunay_triangulation.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -40
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	build_delaunay_triangulation.headerspawn
 # ["header/trailer":]
build_delaunay_triangulation.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_delaunay_triangulation.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	build_delaunay_triangulation.headerspawn
	move	$t7,$a0
	move	$a2,$a1
	# .loc	2, 413
 # ["exec_times": 0]
	la	$t0,build_delaunay
 # ["exec_times": 1]
	la	$a0,24($sp)
	move	$a1,$t7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "build_delaunay"]
 # ["call_overhead": 56081]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 414
 # ["exec_times": 0]
	la	$t8,24($sp)
 # ["fields": "left"]
 # ["exec_times": 1]
	lw	$v0,0($t8)
 # ["exec_times": 1]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_delaunay_triangulation 
	.text	
	.align	2
	.align	2
	.globl	build_delaunay
	# .loc	2, 433
	.ent	build_delaunay 
build_delaunay:
	spawn	build_delaunay.headerspawn
 # ["header/trailer":]
	la	$sp,-560($sp)
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
	sw	$s5,28($sp)
 # ["header/trailer":]
	sw	$s6,32($sp)
 # ["header/trailer":]
	.mask	0x807f0000, -560
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 560, $31
 # ["header/trailer":]
	cqip	build_delaunay.headerspawn
 # ["header/trailer":]
build_delaunay.headerspawn:
 # ["header/trailer":]
	pslice_entry	build_delaunay.headerspawn
 # ["header/trailer":]
	la	$sp,-560($sp)
 # ["header/trailer":]
	pslice_exit	build_delaunay.headerspawn
	spawn	build_delaunay.spawntail0
	move	$s2,$a0
	move	$s1,$a1
	move	$s0,$a2
	# .loc	2, 446
 # ["exec_times": 0]
	la	$t0,0($zero)
 # ["exec_times": 127]
	sne	$t9,$s1,$t0
 # ["exec_times": 127]
	bnez	$t9,build_delaunay.L1
 # ["exec_times": 127]
 # ["instr_profile": 127 127]
	nop	
build_delaunay.L20:
	j	build_delaunay.__done15
 # ["exec_times": 0]
	nop	
build_delaunay.L1:
	li	$t1,28
 # ["exec_times": 127]
	addu	$t2,$s1,$t1
 # ["fields": "right"]
 # ["exec_times": 127]
	lw	$t3,0($t2)
 # ["exec_times": 127]
	la	$t4,0($zero)
 # ["exec_times": 127]
	sne	$t9,$t3,$t4
 # ["exec_times": 127]
build_delaunay.__done15:
	beqz	$t9,build_delaunay.L2
 # ["exec_times": 127]
 # ["instr_profile": 127 64]
	nop	
	# .loc	2, 448
 # ["exec_times": 0]
	la	$t0,get_low
 # ["exec_times": 63]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "get_low"]
 # ["call_overhead": 15]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	2, 449
 # ["exec_times": 0]
	# .loc	2, 464
 # ["exec_times": 0]
	la	$t0,build_delaunay
 # ["exec_times": 63]
	li	$t5,28
 # ["exec_times": 63]
	addu	$t6,$s1,$t5
 # ["fields": "right"]
 # ["exec_times": 63]
	lw	$a1,0($t6)
 # ["exec_times": 63]
	la	$a0,472($sp)
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "build_delaunay"]
 # ["call_overhead": 542]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 465
 # ["exec_times": 0]
	la	$t0,build_delaunay
 # ["exec_times": 63]
	li	$t7,24
 # ["exec_times": 63]
	addu	$t8,$s1,$t7
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a1,0($t8)
 # ["exec_times": 63]
	la	$a0,480($sp)
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "build_delaunay"]
 # ["call_overhead": 18178]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 466
 # ["exec_times": 0]
	la	$t9,480($sp)
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a1,0($t9)
 # ["exec_times": 63]
	# .loc	2, 467
 # ["exec_times": 0]
	la	$a0,484($sp)
 # ["exec_times": 63]
	lw	$a2,0($a0)
 # ["exec_times": 63]
	# .loc	2, 468
 # ["exec_times": 0]
	la	$a3,472($sp)
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a3,0($a3)
 # ["exec_times": 63]
	# .loc	2, 469
 # ["exec_times": 0]
	la	$v0,476($sp)
 # ["exec_times": 63]
	lw	$v0,0($v0)
 # ["exec_times": 63]
	# .loc	2, 471
 # ["exec_times": 0]
	la	$t0,do_merge
 # ["exec_times": 63]
	la	$a0,512($sp)
	move	$fp,$sp
	fst	$sp
	sw	$v0,-20($sp)
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "do_merge"]
 # ["call_overhead": 700]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 472
 # ["exec_times": 0]
	la	$a3,512($sp)
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a1,0($a3)
 # ["exec_times": 63]
	# .loc	2, 473
 # ["exec_times": 0]
	la	$v0,516($sp)
 # ["exec_times": 63]
	lw	$v0,0($v0)
 # ["exec_times": 63]
	# .loc	2, 474
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 63]
	addu	$t0,$a1,$v1
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$t1,0($t0)
 # ["exec_times": 63]
	sne	$t2,$t1,$s3
 # ["exec_times": 63]
	beqz	$t2,build_delaunay.L3
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
build_delaunay.L6:
	# .loc	2, 475
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	xor	$a0,$a1,$t3
 # ["exec_times": 0]
	li	$t4,4
 # ["exec_times": 0]
	addu	$t5,$a0,$t4
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a1,0($t5)
 # ["exec_times": 0]
	# .loc	2, 477
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
	addu	$t7,$a1,$t6
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t8,0($t7)
 # ["exec_times": 0]
	sne	$t9,$t8,$s3
 # ["exec_times": 0]
	bnez	$t9,build_delaunay.L6
 # ["exec_times": 0]
	nop	
build_delaunay.L3:
	# .loc	2, 479
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 63]
	addu	$a2,$v0,$a0
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$a2,0($a2)
 # ["exec_times": 63]
	sne	$a3,$a2,$s0
 # ["exec_times": 63]
	beqz	$a3,build_delaunay.L7
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
build_delaunay.L10:
	# .loc	2, 480
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 0]
	addu	$v1,$v0,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a2,0($v1)
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	xor	$v0,$a2,$t0
 # ["exec_times": 0]
	# .loc	2, 482
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$v0,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t3,0($t2)
 # ["exec_times": 0]
	sne	$t4,$t3,$s0
 # ["exec_times": 0]
	bnez	$t4,build_delaunay.L10
 # ["exec_times": 0]
	nop	
build_delaunay.L7:
	# .loc	2, 484
 # ["exec_times": 0]
	la	$t5,512($sp)
 # ["fields": "left"]
 # ["exec_times": 63]
	sw	$a1,0($t5)
 # ["exec_times": 63]
	# .loc	2, 485
 # ["exec_times": 0]
	la	$t6,516($sp)
 # ["exec_times": 63]
	sw	$v0,0($t6)
 # ["exec_times": 63]
	j	build_delaunay.__done19
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
build_delaunay.L2:
	# .loc	2, 486
 # ["exec_times": 0]
	la	$t7,0($zero)
 # ["exec_times": 64]
	sne	$t8,$s1,$t7
 # ["exec_times": 64]
	move	$t9,$zero
 # ["exec_times": 64]
	seq	$a0,$t8,$t9
 # ["exec_times": 64]
	beqz	$a0,build_delaunay.L11
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
	# .loc	2, 487
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_5
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 488
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	li	$a0,-1
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
build_delaunay.L21:
	j	build_delaunay.__done19
 # ["exec_times": 0]
	nop	
build_delaunay.L11:
	# .loc	2, 489
 # ["exec_times": 0]
	li	$a1,24
 # ["exec_times": 64]
	addu	$a2,$s1,$a1
 # ["fields": "left"]
 # ["exec_times": 64]
	lw	$a3,0($a2)
 # ["exec_times": 64]
	la	$v0,0($zero)
 # ["exec_times": 64]
	sne	$v1,$a3,$v0
 # ["exec_times": 64]
	move	$t0,$zero
 # ["exec_times": 64]
	seq	$t1,$v1,$t0
 # ["exec_times": 64]
	beqz	$t1,build_delaunay.L12
 # ["exec_times": 64]
 # ["instr_profile": 64 0]
	nop	
	# .loc	2, 490
 # ["exec_times": 0]
	la	$t0,makeedge
 # ["exec_times": 64]
	move	$a0,$s1
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 64]
 # ["proc_name": "makeedge"]
 # ["call_overhead": 82]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	2, 491
 # ["exec_times": 0]
	la	$t2,512($sp)
 # ["fields": "left"]
 # ["exec_times": 64]
	sw	$s3,0($t2)
 # ["exec_times": 64]
	# .loc	2, 492
 # ["exec_times": 0]
	la	$t3,516($sp)
 # ["exec_times": 64]
	li	$t4,32
 # ["exec_times": 64]
	xor	$a3,$s3,$t4
 # ["exec_times": 64]
	sw	$a3,0($t3)
 # ["exec_times": 64]
	j	build_delaunay.__done19
 # ["exec_times": 64]
 # ["instr_profile": 64 64]
	nop	
build_delaunay.L12:
	# .loc	2, 497
 # ["exec_times": 0]
	li	$t5,24
 # ["exec_times": 0]
	addu	$t6,$s1,$t5
 # ["fields": "left"]
 # ["exec_times": 0]
	lw	$s4,0($t6)
 # ["exec_times": 0]
	# .loc	2, 498
 # ["exec_times": 0]
	# .loc	2, 499
 # ["exec_times": 0]
	# .loc	2, 500
 # ["exec_times": 0]
	la	$t0,makeedge
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "makeedge"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	2, 501
 # ["exec_times": 0]
	la	$t0,makeedge
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "makeedge"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s6,$v0
	# .loc	2, 502
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$a0,$s3,$t7
 # ["exec_times": 0]
	move	$a1,$s6
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 504
 # ["exec_times": 0]
	la	$t0,connect_left
 # ["exec_times": 0]
	move	$a0,$s6
	move	$a1,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "connect_left"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s5,$v0
	# .loc	2, 505
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s0
	move	$a2,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ccw"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$t8,$zero
 # ["exec_times": 0]
	sne	$t9,$v0,$t8
 # ["exec_times": 0]
	beqz	$t9,build_delaunay.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 506
 # ["exec_times": 0]
	la	$a0,512($sp)
 # ["fields": "left"]
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	xor	$v0,$s5,$a1
 # ["exec_times": 0]
	sw	$v0,0($a0)
 # ["exec_times": 0]
	# .loc	2, 509
 # ["exec_times": 0]
	la	$a2,516($sp)
 # ["exec_times": 0]
	sw	$s5,0($a2)
 # ["exec_times": 0]
	j	build_delaunay.__done19
 # ["exec_times": 0]
	nop	
build_delaunay.L13:
	# .loc	2, 511
 # ["exec_times": 0]
	la	$a3,512($sp)
 # ["fields": "left"]
 # ["exec_times": 0]
	sw	$s3,0($a3)
 # ["exec_times": 0]
	# .loc	2, 512
 # ["exec_times": 0]
	la	$v0,516($sp)
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	xor	$v1,$s6,$v1
 # ["exec_times": 0]
	sw	$v1,0($v0)
 # ["exec_times": 0]
	# .loc	2, 515
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s1
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ccw"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$t0,$zero
 # ["exec_times": 0]
	sne	$t1,$v0,$t0
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	seq	$t3,$t1,$t2
 # ["exec_times": 0]
	beqz	$t3,build_delaunay.__done19
 # ["exec_times": 0]
	nop	
	# .loc	2, 516
 # ["exec_times": 0]
	la	$t0,deleteedge
 # ["exec_times": 0]
	move	$a0,$s5
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "deleteedge"]
 # ["regs_used": 5]
	nop	
build_delaunay.__done19:
	# .loc	2, 519
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t4,512($sp)
 # ["struct alignment": 32]
	la	$t5,0($s2)
	lw	$t6,0($t4)
	lw	$t7,4($t4)
	sw	$t6,0($t5)
	sw	$t7,4($t5)
	# END structure move
	cqip	build_delaunay.spawntail0
build_delaunay.spawntail0:
	pslice_entry	build_delaunay.spawntail0
	pslice_exit	build_delaunay.spawntail0
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
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	build_delaunay 
	.text	
	.align	2
	.align	2
	.globl	do_merge
	# .loc	2, 962
	.ent	do_merge 
do_merge:
	spawn	do_merge.headerspawn
 # ["header/trailer":]
	la	$sp,-1776($sp)
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
	sw	$s5,28($sp)
 # ["header/trailer":]
	sw	$s6,32($sp)
 # ["header/trailer":]
	sw	$s7,36($sp)
 # ["header/trailer":]
	.mask	0x80ff0000, -1776
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1776, $31
 # ["header/trailer":]
	cqip	do_merge.headerspawn
 # ["header/trailer":]
do_merge.headerspawn:
 # ["header/trailer":]
	pslice_entry	do_merge.headerspawn
 # ["header/trailer":]
	la	$sp,-1776($sp)
 # ["header/trailer":]
	pslice_exit	do_merge.headerspawn
	spawn	do_merge.L34
 # ["cqip_pos": <L:do_merge.L34,0>]
	lw	$s5,1756($sp)
	move	$s7,$a0
	move	$s6,$a1
	move	$s1,$a2
	move	$s0,$a3
	# .loc	2, 970
 # ["exec_times": 0]
do_merge.L4:
	# .loc	2, 971
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 63]
	addu	$t7,$s0,$t6
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$s2,0($t7)
 # ["exec_times": 63]
	# .loc	2, 975
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 63]
	addu	$t9,$s1,$t8
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$s3,0($t9)
 # ["exec_times": 63]
	# .loc	2, 976
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 63]
	xor	$a0,$s1,$a0
 # ["exec_times": 63]
	move	$a1,$zero
 # ["exec_times": 63]
	addu	$a2,$a0,$a1
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$a1,0($a2)
 # ["exec_times": 63]
	# .loc	2, 982
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 63]
	move	$a0,$s3
	move	$a2,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "ccw"]
 # ["call_overhead": 33]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$a3,$zero
 # ["exec_times": 63]
	sne	$v0,$v0,$a3
 # ["exec_times": 63]
	beqz	$v0,do_merge.L5
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
do_merge.L8:
	# .loc	2, 983
 # ["exec_times": 0]
	li	$v1,48
 # ["exec_times": 0]
	addu	$t0,$s1,$v1
 # ["exec_times": 0]
	li	$t1,63
 # ["exec_times": 0]
	and	$t2,$t0,$t1
 # ["exec_times": 0]
	li	$t3,4294967232
 # ["exec_times": 0]
	and	$t4,$s1,$t3
 # ["exec_times": 0]
	or	$v1,$t2,$t4
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 0]
	addu	$t6,$v1,$t5
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$v0,0($t6)
 # ["exec_times": 0]
	li	$t7,16
 # ["exec_times": 0]
	addu	$t8,$v0,$t7
 # ["exec_times": 0]
	li	$t9,63
 # ["exec_times": 0]
	and	$a0,$t8,$t9
 # ["exec_times": 0]
	li	$a1,48
 # ["exec_times": 0]
	addu	$a2,$s1,$a1
 # ["exec_times": 0]
	li	$a3,63
 # ["exec_times": 0]
	and	$v0,$a2,$a3
 # ["exec_times": 0]
	li	$v1,4294967232
 # ["exec_times": 0]
	and	$t0,$s1,$v1
 # ["exec_times": 0]
	or	$a3,$v0,$t0
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	addu	$t2,$a3,$t1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a2,0($t2)
 # ["exec_times": 0]
	li	$t3,4294967232
 # ["exec_times": 0]
	and	$t4,$a2,$t3
 # ["exec_times": 0]
	or	$s1,$a0,$t4
 # ["exec_times": 0]
	# .loc	2, 1031
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$s1,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s3,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1032
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$a1,$s1,$t7
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$a1,$t8
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($t9)
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 0]
	move	$a0,$s3
	move	$a2,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ccw"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$a0,$zero
 # ["exec_times": 0]
	sne	$a1,$v0,$a0
 # ["exec_times": 0]
	bnez	$a1,do_merge.L8
 # ["exec_times": 0]
	nop	
do_merge.L5:
	# .loc	2, 1040
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 63]
	xor	$t0,$s0,$a2
 # ["exec_times": 63]
	move	$a3,$zero
 # ["exec_times": 63]
	addu	$v0,$t0,$a3
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$a1,0($v0)
 # ["exec_times": 63]
	# .loc	2, 1044
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 63]
	move	$a0,$a1
	move	$a1,$s2
	move	$a2,$s3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "ccw"]
 # ["call_overhead": 33]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	move	$v1,$zero
 # ["exec_times": 63]
	sne	$t0,$v0,$v1
 # ["exec_times": 63]
	beqz	$t0,do_merge.L3
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
	# .loc	2, 1045
 # ["exec_times": 0]
	li	$t1,32
 # ["exec_times": 0]
	xor	$t1,$s0,$t1
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 0]
	addu	$t3,$t1,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s0,0($t3)
 # ["exec_times": 0]
	j	do_merge.L4
 # ["exec_times": 0]
	nop	
do_merge.L3:
	cqip	do_merge.L34
 # ["cqip_pos": <L:do_merge.L34,0>]
do_merge.L34:
	pslice_entry	do_merge.L34
 # ["pslice_entry_pos": <L:do_merge.L34,0>]
	pslice_exit	do_merge.L34
 # ["pslice_exit_pos": <L:do_merge.L34,0>]
	spawn	do_merge.L35
 # ["cqip_pos": <L:do_merge.L35,0>]
	# .loc	2, 1055
 # ["exec_times": 0]
	la	$t0,connect_left
 # ["exec_times": 63]
	li	$t4,32
 # ["exec_times": 63]
	xor	$a0,$s0,$t4
 # ["exec_times": 63]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "connect_left"]
 # ["call_overhead": 255]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	do_merge.L35
 # ["cqip_pos": <L:do_merge.L35,0>]
do_merge.L35:
	pslice_entry	do_merge.L35
 # ["pslice_entry_pos": <L:do_merge.L35,0>]
	pslice_exit	do_merge.L35
 # ["pslice_exit_pos": <L:do_merge.L35,0>]
	spawn	do_merge.L36
 # ["cqip_pos": <L:do_merge.L36,0>]
	move	$s2,$v0
	# .loc	2, 1061
 # ["exec_times": 0]
	li	$t5,32
 # ["exec_times": 63]
	xor	$t7,$s2,$t5
 # ["exec_times": 63]
	li	$t6,4
 # ["exec_times": 63]
	addu	$t7,$t7,$t6
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$s1,0($t7)
 # ["exec_times": 63]
	# .loc	2, 1064
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 63]
	addu	$t9,$s2,$t8
 # ["exec_times": 63]
	li	$a0,63
 # ["exec_times": 63]
	and	$a1,$t9,$a0
 # ["exec_times": 63]
	li	$a2,4294967232
 # ["exec_times": 63]
	and	$a3,$s2,$a2
 # ["exec_times": 63]
	or	$t6,$a1,$a3
 # ["exec_times": 63]
	li	$v0,4
 # ["exec_times": 63]
	addu	$v1,$t6,$v0
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$t5,0($v1)
 # ["exec_times": 63]
	li	$t0,16
 # ["exec_times": 63]
	addu	$t1,$t5,$t0
 # ["exec_times": 63]
	li	$t2,63
 # ["exec_times": 63]
	and	$t5,$t1,$t2
 # ["exec_times": 63]
	li	$t4,16
 # ["exec_times": 63]
	addu	$t6,$s2,$t4
 # ["exec_times": 63]
	li	$t7,63
 # ["exec_times": 63]
	and	$t7,$t6,$t7
 # ["exec_times": 63]
	li	$t8,4294967232
 # ["exec_times": 63]
	and	$t9,$s2,$t8
 # ["exec_times": 63]
	or	$t4,$t7,$t9
 # ["exec_times": 63]
	li	$a0,4
 # ["exec_times": 63]
	addu	$a1,$t4,$a0
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$t3,0($a1)
 # ["exec_times": 63]
	li	$a2,4294967232
 # ["exec_times": 63]
	and	$a3,$t3,$a2
 # ["exec_times": 63]
	or	$s0,$t5,$a3
 # ["exec_times": 63]
	# .loc	2, 1100
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 63]
	addu	$v1,$s2,$v0
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$s3,0($v1)
 # ["exec_times": 63]
	# .loc	2, 1101
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 63]
	xor	$t2,$s2,$t0
 # ["exec_times": 63]
	move	$t1,$zero
 # ["exec_times": 63]
	addu	$t2,$t2,$t1
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$a1,0($t2)
 # ["exec_times": 63]
	# .loc	2, 1109
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 63]
	addu	$t4,$s5,$t3
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$t5,0($t4)
 # ["exec_times": 63]
	seq	$t6,$s3,$t5
 # ["exec_times": 63]
	beqz	$t6,do_merge.L10
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
	# .loc	2, 1110
 # ["exec_times": 0]
	move	$s5,$s2
 # ["exec_times": 0]
do_merge.L10:
	cqip	do_merge.L36
 # ["cqip_pos": <L:do_merge.L36,0>]
do_merge.L36:
	pslice_entry	do_merge.L36
 # ["pslice_entry_pos": <L:do_merge.L36,0>]
	pslice_exit	do_merge.L36
 # ["pslice_exit_pos": <L:do_merge.L36,0>]
	spawn	do_merge.L37
 # ["cqip_pos": <L:do_merge.L37,0>]
	# .loc	2, 1111
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 63]
	addu	$t8,$s6,$t7
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$t9,0($t8)
 # ["exec_times": 63]
	seq	$a0,$a1,$t9
 # ["exec_times": 63]
	beqz	$a0,do_merge.L15
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
	# .loc	2, 1112
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	xor	$s6,$s2,$a1
 # ["exec_times": 0]
	# .loc	2, 1116
 # ["exec_times": 0]
do_merge.L15:
	# .loc	2, 1121
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 63]
	addu	$a3,$s1,$a2
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$s3,0($a3)
 # ["exec_times": 63]
	# .loc	2, 1122
 # ["exec_times": 0]
	la	$t0,valid
 # ["exec_times": 63]
	move	$a0,$s3
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "valid"]
 # ["call_overhead": 53]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$v1,$zero
 # ["exec_times": 63]
	sne	$v1,$v0,$v1
 # ["exec_times": 63]
	beqz	$v1,do_merge.L16
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
	# .loc	2, 1123
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	addu	$t1,$s2,$t0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s4,0($t1)
 # ["exec_times": 0]
	# .loc	2, 1126
 # ["exec_times": 0]
	li	$t2,32
 # ["exec_times": 0]
	xor	$t9,$s1,$t2
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t4,$t9,$t3
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t4)
 # ["exec_times": 0]
	# .loc	2, 1129
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$s1,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($t6)
 # ["exec_times": 0]
	# .loc	2, 1135
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$t8,$s3,$t7
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$t9,$t8,$t9
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($t9)
 # ["exec_times": 0]
	# .loc	2, 1138
 # ["exec_times": 0]
	la	$t8,incircle
 # ["exec_times": 0]
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	move	$t0,$t8
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "incircle"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$a0,$zero
 # ["exec_times": 0]
	sne	$a1,$v0,$a0
 # ["exec_times": 0]
	beqz	$a1,do_merge.L16
 # ["exec_times": 0]
	nop	
do_merge.L20:
	# .loc	2, 1139
 # ["exec_times": 0]
	la	$t0,deleteedge
 # ["exec_times": 0]
	move	$a0,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "deleteedge"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 1140
 # ["exec_times": 0]
	move	$s1,$s3
 # ["exec_times": 0]
	# .loc	2, 1143
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s3,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1144
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	xor	$a1,$s1,$v0
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$a1,$v1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t0)
 # ["exec_times": 0]
	# .loc	2, 1147
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$s1,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($t2)
 # ["exec_times": 0]
	# .loc	2, 1154
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	xor	$a1,$s3,$t3
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	addu	$t5,$a1,$t4
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($t5)
 # ["exec_times": 0]
	la	$t9,incircle
 # ["exec_times": 0]
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	move	$t0,$t9
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "incircle"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$t6,$zero
 # ["exec_times": 0]
	sne	$t7,$v0,$t6
 # ["exec_times": 0]
	bnez	$t7,do_merge.L20
 # ["exec_times": 0]
	nop	
do_merge.L16:
	# .loc	2, 1160
 # ["exec_times": 0]
	li	$t8,16
 # ["exec_times": 63]
	addu	$t9,$s0,$t8
 # ["exec_times": 63]
	li	$a0,63
 # ["exec_times": 63]
	and	$a1,$t9,$a0
 # ["exec_times": 63]
	li	$a2,4294967232
 # ["exec_times": 63]
	and	$a3,$s0,$a2
 # ["exec_times": 63]
	or	$v1,$a1,$a3
 # ["exec_times": 63]
	li	$v0,4
 # ["exec_times": 63]
	addu	$v1,$v1,$v0
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$v0,0($v1)
 # ["exec_times": 63]
	li	$t0,16
 # ["exec_times": 63]
	addu	$t1,$v0,$t0
 # ["exec_times": 63]
	li	$t2,63
 # ["exec_times": 63]
	and	$t3,$t1,$t2
 # ["exec_times": 63]
	li	$t4,16
 # ["exec_times": 63]
	addu	$t5,$s0,$t4
 # ["exec_times": 63]
	li	$t6,63
 # ["exec_times": 63]
	and	$t7,$t5,$t6
 # ["exec_times": 63]
	li	$t8,4294967232
 # ["exec_times": 63]
	and	$t9,$s0,$t8
 # ["exec_times": 63]
	or	$a3,$t7,$t9
 # ["exec_times": 63]
	li	$a0,4
 # ["exec_times": 63]
	addu	$a1,$a3,$a0
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$a2,0($a1)
 # ["exec_times": 63]
	li	$a3,4294967232
 # ["exec_times": 63]
	and	$a3,$a2,$a3
 # ["exec_times": 63]
	or	$s3,$t3,$a3
 # ["exec_times": 63]
	# .loc	2, 1202
 # ["exec_times": 0]
	la	$t0,valid
 # ["exec_times": 63]
	move	$a0,$s3
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "valid"]
 # ["call_overhead": 53]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$v1,$zero
 # ["exec_times": 63]
	sne	$v1,$v0,$v1
 # ["exec_times": 63]
	beqz	$v1,do_merge.L21
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
	# .loc	2, 1203
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	xor	$t2,$s2,$t0
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t2,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s4,0($t2)
 # ["exec_times": 0]
	# .loc	2, 1206
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	xor	$t1,$s3,$t3
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	addu	$t5,$t1,$t4
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t5)
 # ["exec_times": 0]
	# .loc	2, 1209
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	xor	$t0,$s0,$t6
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	addu	$t8,$t0,$t7
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($t8)
 # ["exec_times": 0]
	# .loc	2, 1212
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$a2,$s0,$t9
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1213
 # ["exec_times": 0]
	la	$v0,incircle
 # ["exec_times": 0]
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	move	$t0,$v0
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "incircle"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$a1,$zero
 # ["exec_times": 0]
	sne	$a2,$v0,$a1
 # ["exec_times": 0]
	beqz	$a2,do_merge.L21
 # ["exec_times": 0]
	nop	
do_merge.L25:
	# .loc	2, 1214
 # ["exec_times": 0]
	la	$t0,deleteedge
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "deleteedge"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 1215
 # ["exec_times": 0]
	move	$s0,$s3
 # ["exec_times": 0]
	# .loc	2, 1216
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 0]
	addu	$v0,$s0,$a3
 # ["exec_times": 0]
	li	$v1,63
 # ["exec_times": 0]
	and	$t0,$v0,$v1
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$s0,$t1
 # ["exec_times": 0]
	or	$t8,$t0,$t2
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	addu	$t4,$t8,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t7,0($t4)
 # ["exec_times": 0]
	li	$t5,16
 # ["exec_times": 0]
	addu	$t6,$t7,$t5
 # ["exec_times": 0]
	li	$t7,63
 # ["exec_times": 0]
	and	$t8,$t6,$t7
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$a0,$s0,$t9
 # ["exec_times": 0]
	li	$a1,63
 # ["exec_times": 0]
	and	$a2,$a0,$a1
 # ["exec_times": 0]
	li	$a3,4294967232
 # ["exec_times": 0]
	and	$v0,$s0,$a3
 # ["exec_times": 0]
	or	$t6,$a2,$v0
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 0]
	addu	$t0,$t6,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t5,0($t0)
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$t5,$t1
 # ["exec_times": 0]
	or	$s3,$t8,$t2
 # ["exec_times": 0]
	# .loc	2, 1237
 # ["exec_times": 0]
	li	$t3,32
 # ["exec_times": 0]
	xor	$t4,$s0,$t3
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t5,$t4,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($t5)
 # ["exec_times": 0]
	# .loc	2, 1240
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($t7)
 # ["exec_times": 0]
	# .loc	2, 1241
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 0]
	xor	$t3,$s3,$t8
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$a0,$t3,$t9
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($a0)
 # ["exec_times": 0]
	la	$v0,incircle
 # ["exec_times": 0]
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	move	$t0,$v0
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "incircle"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$a1,$zero
 # ["exec_times": 0]
	sne	$a2,$v0,$a1
 # ["exec_times": 0]
	bnez	$a2,do_merge.L25
 # ["exec_times": 0]
	nop	
do_merge.L21:
	# .loc	2, 1247
 # ["exec_times": 0]
	la	$t0,valid
 # ["exec_times": 63]
	move	$a0,$s1
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "valid"]
 # ["call_overhead": 53]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
	# .loc	2, 1249
 # ["exec_times": 0]
	la	$t0,valid
 # ["exec_times": 63]
	move	$a0,$s0
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "valid"]
 # ["call_overhead": 53]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$t7,$v0
	# .loc	2, 1250
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 63]
	sne	$v0,$s3,$a3
 # ["exec_times": 63]
	move	$v1,$zero
 # ["exec_times": 63]
	seq	$t9,$v0,$v1
 # ["exec_times": 63]
	bnez	$t9,do_merge.L26
 # ["exec_times": 63]
 # ["instr_profile": 63 63]
	nop	
do_merge.L31:
	j	do_merge.__done2
 # ["exec_times": 0]
	nop	
do_merge.L26:
	move	$t0,$zero
 # ["exec_times": 63]
	sne	$t1,$t7,$t0
 # ["exec_times": 63]
	move	$t2,$zero
 # ["exec_times": 63]
	seq	$t9,$t1,$t2
 # ["exec_times": 63]
do_merge.__done2:
	beqz	$t9,do_merge.L27
 # ["exec_times": 63]
 # ["instr_profile": 63 0]
	nop	
	cqip	do_merge.L37
 # ["cqip_pos": <L:do_merge.L37,0>]
do_merge.L37:
	pslice_entry	do_merge.L37
 # ["pslice_entry_pos": <L:do_merge.L37,0>]
	pslice_exit	do_merge.L37
 # ["pslice_exit_pos": <L:do_merge.L37,0>]
	# .loc	2, 1252
 # ["exec_times": 0]
	la	$t3,1672($sp)
 # ["fields": "left"]
 # ["exec_times": 63]
	sw	$s6,0($t3)
 # ["exec_times": 63]
	# .loc	2, 1253
 # ["exec_times": 0]
	la	$t4,1676($sp)
 # ["exec_times": 63]
	sw	$s5,0($t4)
 # ["exec_times": 63]
	# .loc	2, 1254
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 32]
	la	$t5,1672($sp)
 # ["struct alignment": 32]
	la	$t6,0($s7)
	lw	$t7,0($t5)
	lw	$t8,4($t5)
	sw	$t7,0($t6)
	sw	$t8,4($t6)
	# END structure move
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
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$s7,36($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 63]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
do_merge.L27:
	# .loc	2, 1256
 # ["exec_times": 0]
	move	$a2,$s1
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$a1,$a2,$t9
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$a1,$a0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($a1)
 # ["exec_times": 0]
	# .loc	2, 1259
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	addu	$a3,$s1,$a2
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a1,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1260
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$s0,$v0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1261
 # ["exec_times": 0]
	move	$a3,$s0
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	xor	$a3,$a3,$t0
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$a3,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s4,0($t2)
 # ["exec_times": 0]
	# .loc	2, 1264
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	sne	$t4,$s3,$t3
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	seq	$a3,$t4,$t5
 # ["exec_times": 0]
	beqz	$a3,do_merge.L29
 # ["exec_times": 0]
	nop	
do_merge.L32:
	j	do_merge.__done4
 # ["exec_times": 0]
	nop	
do_merge.L29:
	move	$t6,$zero
 # ["exec_times": 0]
	sne	$a3,$t7,$t6
 # ["exec_times": 0]
	bnez	$a3,do_merge.L28
 # ["exec_times": 0]
	nop	
do_merge.L33:
	j	do_merge.__done3
 # ["exec_times": 0]
	nop	
do_merge.L28:
	la	$v0,incircle
 # ["exec_times": 0]
	move	$a3,$s4
	move	$fp,$sp
	fst	$sp
	move	$t0,$v0
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "incircle"]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 9]
	nop	
	move	$t7,$zero
 # ["exec_times": 0]
	sne	$a3,$v0,$t7
 # ["exec_times": 0]
do_merge.__done3:
do_merge.__done4:
	beqz	$a3,do_merge.L30
 # ["exec_times": 0]
	nop	
	# .loc	2, 1265
 # ["exec_times": 0]
	la	$t0,connect_left
 # ["exec_times": 0]
	move	$v1,$s2
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 0]
	xor	$a1,$v1,$t8
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "connect_left"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	move	$s2,$v0
	# .loc	2, 1268
 # ["exec_times": 0]
	move	$t0,$s2
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$t4,$t0,$t9
 # ["exec_times": 0]
	li	$a0,48
 # ["exec_times": 0]
	addu	$a1,$t4,$a0
 # ["exec_times": 0]
	li	$a2,63
 # ["exec_times": 0]
	and	$a3,$a1,$a2
 # ["exec_times": 0]
	move	$t1,$s2
 # ["exec_times": 0]
	li	$v0,32
 # ["exec_times": 0]
	xor	$t3,$t1,$v0
 # ["exec_times": 0]
	li	$v1,4294967232
 # ["exec_times": 0]
	and	$t0,$t3,$v1
 # ["exec_times": 0]
	or	$t2,$a3,$t0
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	addu	$t2,$t2,$t1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t1,0($t2)
 # ["exec_times": 0]
	li	$t3,16
 # ["exec_times": 0]
	addu	$t4,$t1,$t3
 # ["exec_times": 0]
	li	$t5,63
 # ["exec_times": 0]
	and	$a2,$t4,$t5
 # ["exec_times": 0]
	move	$t2,$s2
 # ["exec_times": 0]
	li	$t6,32
 # ["exec_times": 0]
	xor	$t0,$t2,$t6
 # ["exec_times": 0]
	li	$t7,48
 # ["exec_times": 0]
	addu	$t8,$t0,$t7
 # ["exec_times": 0]
	li	$t9,63
 # ["exec_times": 0]
	and	$a0,$t8,$t9
 # ["exec_times": 0]
	move	$t3,$s2
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	xor	$v1,$t3,$a1
 # ["exec_times": 0]
	li	$a3,4294967232
 # ["exec_times": 0]
	and	$v0,$v1,$a3
 # ["exec_times": 0]
	or	$v0,$a0,$v0
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 0]
	addu	$t0,$v0,$v1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a3,0($t0)
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$a3,$t1
 # ["exec_times": 0]
	or	$t4,$a2,$t2
 # ["exec_times": 0]
	move	$s0,$t4
 # ["exec_times": 0]
	j	do_merge.L15
 # ["exec_times": 0]
	nop	
do_merge.L30:
	# .loc	2, 1302
 # ["exec_times": 0]
	la	$t0,connect_right
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "connect_right"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	li	$t3,32
 # ["exec_times": 0]
	xor	$t5,$v0,$t3
 # ["exec_times": 0]
	move	$s2,$t5
 # ["exec_times": 0]
	# .loc	2, 1305
 # ["exec_times": 0]
	move	$t6,$s2
 # ["exec_times": 0]
	li	$t4,32
 # ["exec_times": 0]
	xor	$t5,$t6,$t4
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t6,$t5,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s1,0($t6)
 # ["exec_times": 0]
	j	do_merge.L15
	nop	
	.end	do_merge 
	.text	
	.align	2
	.align	2
	.globl	connect_left
	# .loc	2, 343
	.ent	connect_left 
connect_left:
	spawn	connect_left.headerspawn
 # ["header/trailer":]
	la	$sp,-248($sp)
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
	.mask	0x80070000, -248
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 248, $31
 # ["header/trailer":]
	cqip	connect_left.headerspawn
 # ["header/trailer":]
connect_left.headerspawn:
 # ["header/trailer":]
	pslice_entry	connect_left.headerspawn
 # ["header/trailer":]
	la	$sp,-248($sp)
 # ["header/trailer":]
	pslice_exit	connect_left.headerspawn
	spawn	connect_left.L1
 # ["cqip_pos": <L:connect_left.L1,0>]
	move	$s1,$a1
	# .loc	2, 348
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 63]
	xor	$a2,$a0,$a3
 # ["exec_times": 63]
	move	$v0,$zero
 # ["exec_times": 63]
	addu	$v1,$a2,$v0
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$t7,0($v1)
 # ["exec_times": 63]
	# .loc	2, 351
 # ["exec_times": 0]
	li	$t0,48
 # ["exec_times": 63]
	addu	$t1,$a0,$t0
 # ["exec_times": 63]
	li	$t2,63
 # ["exec_times": 63]
	and	$t3,$t1,$t2
 # ["exec_times": 63]
	li	$t4,4294967232
 # ["exec_times": 63]
	and	$t5,$a0,$t4
 # ["exec_times": 63]
	or	$a1,$t3,$t5
 # ["exec_times": 63]
	li	$t6,4
 # ["exec_times": 63]
	addu	$t8,$a1,$t6
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$a1,0($t8)
 # ["exec_times": 63]
	li	$t8,16
 # ["exec_times": 63]
	addu	$t9,$a1,$t8
 # ["exec_times": 63]
	li	$a1,63
 # ["exec_times": 63]
	and	$a1,$t9,$a1
 # ["exec_times": 63]
	li	$a2,48
 # ["exec_times": 63]
	addu	$a3,$a0,$a2
 # ["exec_times": 63]
	li	$v0,63
 # ["exec_times": 63]
	and	$v1,$a3,$v0
 # ["exec_times": 63]
	li	$t0,4294967232
 # ["exec_times": 63]
	and	$t1,$a0,$t0
 # ["exec_times": 63]
	or	$t9,$v1,$t1
 # ["exec_times": 63]
	li	$t2,4
 # ["exec_times": 63]
	addu	$t3,$t9,$t2
 # ["fields": "next"]
 # ["exec_times": 63]
	lw	$t8,0($t3)
 # ["exec_times": 63]
	li	$t4,4294967232
 # ["exec_times": 63]
	and	$t5,$t8,$t4
 # ["exec_times": 63]
	or	$s2,$a1,$t5
 # ["exec_times": 63]
	# .loc	2, 392
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 63]
	addu	$t8,$s1,$t6
 # ["fields": "v"]
 # ["exec_times": 63]
	lw	$a1,0($t8)
 # ["exec_times": 63]
	# .loc	2, 393
 # ["exec_times": 0]
	la	$t0,makeedge
 # ["exec_times": 63]
	move	$a0,$t7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "makeedge"]
 # ["call_overhead": 82]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	connect_left.L1
 # ["cqip_pos": <L:connect_left.L1,0>]
connect_left.L1:
	pslice_entry	connect_left.L1
 # ["pslice_entry_pos": <L:connect_left.L1,0>]
	pslice_exit	connect_left.L1
 # ["pslice_exit_pos": <L:connect_left.L1,0>]
	move	$s0,$v0
	# .loc	2, 394
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 63]
	move	$a0,$s0
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "splice"]
 # ["call_overhead": 58]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 395
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 63]
	li	$t8,32
 # ["exec_times": 63]
	xor	$a0,$s0,$t8
 # ["exec_times": 63]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 63]
 # ["proc_name": "splice"]
 # ["call_overhead": 58]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 398
 # ["exec_times": 0]
	move	$v0,$s0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 63]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	connect_left 
	.text	
	.align	2
	.align	2
	.globl	connect_right
	# .loc	2, 403
	.ent	connect_right 
connect_right:
	spawn	connect_right.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
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
	.mask	0x80070000, -264
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 264, $31
 # ["header/trailer":]
	cqip	connect_right.headerspawn
 # ["header/trailer":]
connect_right.headerspawn:
 # ["header/trailer":]
	pslice_entry	connect_right.headerspawn
 # ["header/trailer":]
	la	$sp,-264($sp)
 # ["header/trailer":]
	pslice_exit	connect_right.headerspawn
	spawn	connect_right.L1
 # ["cqip_pos": <L:connect_right.L1,0>]
	move	$s2,$a0
	# .loc	2, 409
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	xor	$v0,$s2,$v1
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	addu	$t1,$v0,$t0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t1)
 # ["exec_times": 0]
	# .loc	2, 411
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	addu	$t3,$a1,$t2
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t9,0($t3)
 # ["exec_times": 0]
	# .loc	2, 413
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 0]
	addu	$t5,$a1,$t4
 # ["exec_times": 0]
	li	$t6,63
 # ["exec_times": 0]
	and	$t7,$t5,$t6
 # ["exec_times": 0]
	li	$t8,4294967232
 # ["exec_times": 0]
	and	$a2,$a1,$t8
 # ["exec_times": 0]
	or	$a3,$t7,$a2
 # ["exec_times": 0]
	li	$a2,4
 # ["exec_times": 0]
	addu	$a2,$a3,$a2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a2,0($a2)
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 0]
	addu	$a3,$a2,$a3
 # ["exec_times": 0]
	li	$v0,63
 # ["exec_times": 0]
	and	$v1,$a3,$v0
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 0]
	addu	$t1,$a1,$t0
 # ["exec_times": 0]
	li	$t2,63
 # ["exec_times": 0]
	and	$t3,$t1,$t2
 # ["exec_times": 0]
	li	$t4,4294967232
 # ["exec_times": 0]
	and	$t5,$a1,$t4
 # ["exec_times": 0]
	or	$a1,$t3,$t5
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t7,$a1,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a1,0($t7)
 # ["exec_times": 0]
	li	$t8,4294967232
 # ["exec_times": 0]
	and	$a1,$a1,$t8
 # ["exec_times": 0]
	or	$s1,$v1,$a1
 # ["exec_times": 0]
	# .loc	2, 454
 # ["exec_times": 0]
	la	$t0,makeedge
 # ["exec_times": 0]
	move	$a1,$t9
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "makeedge"]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	connect_right.L1
 # ["cqip_pos": <L:connect_right.L1,0>]
connect_right.L1:
	pslice_entry	connect_right.L1
 # ["pslice_entry_pos": <L:connect_right.L1,0>]
	pslice_exit	connect_right.L1
 # ["pslice_exit_pos": <L:connect_right.L1,0>]
	move	$s0,$v0
	# .loc	2, 455
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	xor	$a1,$s2,$a0
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 457
 # ["exec_times": 0]
	la	$t0,splice
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	xor	$a0,$s0,$a1
 # ["exec_times": 0]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "splice"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 461
 # ["exec_times": 0]
	move	$v0,$s0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	connect_right 
	.text	
	.align	2
	.align	2
	.globl	zero_seen
	# .loc	2, 1158
	.ent	zero_seen 
zero_seen:
	spawn	zero_seen.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -112
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	zero_seen.headerspawn
 # ["header/trailer":]
zero_seen.headerspawn:
 # ["header/trailer":]
	pslice_entry	zero_seen.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	zero_seen.headerspawn
	move	$s0,$a0
	move	$v0,$a1
	# .loc	2, 1159
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "ptr"]
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	sw	$v1,0($a3)
 # ["exec_times": 0]
	# .loc	2, 1160
 # ["exec_times": 0]
	la	$t0,push_nonzero_ring
 # ["exec_times": 0]
	move	$a0,$s0
	move	$a1,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_nonzero_ring"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1161
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$s0,$v1
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$t1,0($t0)
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	sne	$t3,$t1,$t2
 # ["exec_times": 0]
	beqz	$t3,zero_seen.L1
 # ["exec_times": 0]
	nop	
zero_seen.L4:
	# .loc	2, 1162
 # ["exec_times": 0]
	la	$t0,pop_edge
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "pop_edge"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 1163
 # ["exec_times": 0]
	la	$t0,push_nonzero_ring
 # ["exec_times": 0]
	li	$t4,32
 # ["exec_times": 0]
	xor	$a1,$v0,$t4
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_nonzero_ring"]
 # ["regs_used": 5 6]
	nop	
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$s0,$t5
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$t7,0($t6)
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	sne	$t9,$t7,$t8
 # ["exec_times": 0]
	bnez	$t9,zero_seen.L4
 # ["exec_times": 0]
	nop	
zero_seen.L1:
	# .loc	2, 1167
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
	.end	zero_seen 
	.text	
	.align	2
	.align	2
	.globl	pop_edge
	# .loc	2, 1104
	.ent	pop_edge 
pop_edge:
	spawn	pop_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	pop_edge.headerspawn
 # ["header/trailer":]
pop_edge.headerspawn:
 # ["header/trailer":]
	pslice_entry	pop_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	pop_edge.headerspawn
	# .loc	2, 1105
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	addu	$a2,$a0,$a1
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$a1,0($a2)
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 0]
	subu	$v0,$a1,$a3
 # ["exec_times": 0]
	sw	$v0,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1106
 # ["exec_times": 0]
	li	$v1,4
 # ["exec_times": 0]
	addu	$t0,$a0,$v1
 # ["fields": "elts"]
 # ["exec_times": 0]
	lw	$t1,0($t0)
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 0]
	mult	$a1,$t2
	mflo	$t3
 # ["exec_times": 0]
	addu	$t4,$t1,$t3
 # ["exec_times": 0]
	lw	$v0,0($t4)
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g45]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	pop_edge 
	.text	
	.align	2
	.align	2
	.globl	mylog
	# .loc	2, 34
	.ent	mylog 
mylog:
	spawn	mylog.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 40, $31
 # ["header/trailer":]
	cqip	mylog.headerspawn
 # ["header/trailer":]
mylog.headerspawn:
 # ["header/trailer":]
	pslice_entry	mylog.headerspawn
 # ["header/trailer":]
	la	$sp,-40($sp)
 # ["header/trailer":]
	pslice_exit	mylog.headerspawn
	# .loc	2, 35
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 1]
	# .loc	2, 35
 # ["exec_times": 0]
	li	$t5,1
 # ["exec_times": 1]
	# .loc	2, 37
 # ["exec_times": 0]
	slt	$t6,$t5,$a0
 # ["exec_times": 1]
	beqz	$t6,mylog.L1
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
mylog.L4:
	# .loc	2, 38
 # ["exec_times": 0]
	li	$t7,2
 # ["exec_times": 0]
	mult	$t5,$t7
	mflo	$t5
 # ["exec_times": 0]
	# .loc	2, 39
 # ["exec_times": 0]
	li	$t8,1
 # ["exec_times": 0]
	addu	$v0,$v0,$t8
 # ["exec_times": 0]
	slt	$t9,$t5,$a0
 # ["exec_times": 0]
	bnez	$t9,mylog.L4
 # ["exec_times": 0]
	nop	
mylog.L1:
	# .loc	2, 41
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mylog 
	.text	
	.align	2
	.align	2
	.globl	dealwithargs
	# .loc	2, 45
	.ent	dealwithargs 
dealwithargs:
	spawn	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -64
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	dealwithargs.headerspawn
 # ["header/trailer":]
dealwithargs.headerspawn:
 # ["header/trailer":]
	pslice_entry	dealwithargs.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	dealwithargs.headerspawn
	# .loc	2, 48
 # ["exec_times": 0]
	li	$a1,3
 # ["exec_times": 1]
	slt	$a1,$a1,$a0
 # ["exec_times": 1]
	bnez	$a1,dealwithargs.__done4
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 51
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 1]
	sw	$a2,flag
dealwithargs.__done4:
	# .loc	2, 54
 # ["exec_times": 0]
	li	$a3,2
 # ["exec_times": 1]
	slt	$v0,$a3,$a0
 # ["exec_times": 1]
	bnez	$v0,dealwithargs.__done5
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 57
 # ["exec_times": 0]
	li	$v1,1
 # ["exec_times": 1]
	sw	$v1,NumNodes
dealwithargs.__done5:
	# .loc	2, 65
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 1]
	slt	$t1,$t0,$a0
 # ["exec_times": 1]
	bnez	$t1,dealwithargs.__done6
 # ["exec_times": 1]
 # ["instr_profile": 1 0]
	nop	
	# .loc	2, 68
 # ["exec_times": 0]
	li	$s0,128
 # ["exec_times": 1]
dealwithargs.__done6:
	# .loc	2, 71
 # ["exec_times": 0]
	la	$t0,mylog
 # ["exec_times": 1]
	lw	$a0,NumNodes
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "mylog"]
 # ["call_overhead": 5]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,NDim
	# .loc	2, 72
 # ["exec_times": 0]
	la	$t0,myprintf3
 # ["exec_times": 1]
	la	$a0,__tmp_string_0
 # ["exec_times": 1]
	move	$a1,$s0
	lw	$a2,NumNodes
	lw	$a3,NDim
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf3"]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 80
 # ["exec_times": 0]
	move	$v0,$s0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
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
	.globl	V2_cprod
	# .loc	2, 93
	.ent	V2_cprod 
V2_cprod:
	spawn	V2_cprod.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	V2_cprod.headerspawn
 # ["header/trailer":]
V2_cprod.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_cprod.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	V2_cprod.headerspawn
	sw	$a0,104($sp)
	sw	$a1,108($sp)
	sw	$a2,112($sp)
	sw	$a3,116($sp)
	# .loc	2, 94
 # ["exec_times": 0]
	la	$t2,104($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f12,0($t2)
 # ["exec_times": 0]
	la	$t3,88($sp)
 # ["exec_times": 0]
	l.d	$f14,0($t3)
 # ["exec_times": 0]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 0]
	la	$t4,112($sp)
 # ["exec_times": 0]
	l.d	$f2,0($t4)
 # ["exec_times": 0]
	la	$t5,80($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f4,0($t5)
 # ["exec_times": 0]
	mul.d	$f6,$f2,$f4
 # ["exec_times": 0]
	sub.d	$f0,$f0,$f6
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_cprod 
	.text	
	.align	2
	.align	2
	.globl	V2_dot
	# .loc	2, 102
	.ent	V2_dot 
V2_dot:
	spawn	V2_dot.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	V2_dot.headerspawn
 # ["header/trailer":]
V2_dot.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_dot.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	V2_dot.headerspawn
	sw	$a0,104($sp)
	sw	$a1,108($sp)
	sw	$a2,112($sp)
	sw	$a3,116($sp)
	# .loc	2, 103
 # ["exec_times": 0]
	la	$t2,104($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f12,0($t2)
 # ["exec_times": 0]
	la	$t3,80($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t3)
 # ["exec_times": 0]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 0]
	la	$t4,112($sp)
 # ["exec_times": 0]
	l.d	$f2,0($t4)
 # ["exec_times": 0]
	la	$t5,88($sp)
 # ["exec_times": 0]
	l.d	$f4,0($t5)
 # ["exec_times": 0]
	mul.d	$f6,$f2,$f4
 # ["exec_times": 0]
	add.d	$f0,$f0,$f6
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_dot 
	.text	
	.align	2
	.align	2
	.globl	V2_times
	# .loc	2, 111
	.ent	V2_times 
V2_times:
	spawn	V2_times.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 136, $31
 # ["header/trailer":]
	cqip	V2_times.headerspawn
 # ["header/trailer":]
V2_times.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_times.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	pslice_exit	V2_times.headerspawn
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	2, 113
 # ["exec_times": 0]
	la	$t2,72($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	la	$t3,96($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f4,0($t3)
 # ["exec_times": 0]
	mul.d	$f6,$f14,$f4
 # ["exec_times": 0]
	s.d	$f6,0($t2)
 # ["exec_times": 0]
	# .loc	2, 114
 # ["exec_times": 0]
	la	$t4,80($sp)
 # ["exec_times": 0]
	la	$t5,104($sp)
 # ["exec_times": 0]
	l.d	$f8,0($t5)
 # ["exec_times": 0]
	mul.d	$f10,$f14,$f8
 # ["exec_times": 0]
	s.d	$f10,0($t4)
 # ["exec_times": 0]
	# .loc	2, 115
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t6,72($sp)
 # ["struct alignment": 64]
	la	$t7,0($a0)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	lw	$a0,8($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	sw	$a0,8($t7)
	lw	$a1,12($t6)
	lw	$a2,16($t6)
	lw	$a3,20($t6)
	sw	$a1,12($t7)
	sw	$a2,16($t7)
	sw	$a3,20($t7)
	# END structure move
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_times 
	.text	
	.align	2
	.align	2
	.globl	V2_sum
	# .loc	2, 122
	.ent	V2_sum 
V2_sum:
	spawn	V2_sum.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 168, $31
 # ["header/trailer":]
	cqip	V2_sum.headerspawn
 # ["header/trailer":]
V2_sum.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_sum.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	V2_sum.headerspawn
	sw	$a1,140($sp)
	sw	$a2,144($sp)
	sw	$a3,148($sp)
	# .loc	2, 125
 # ["exec_times": 0]
	la	$t4,88($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	la	$t5,140($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f8,0($t5)
 # ["exec_times": 0]
	la	$t6,116($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f10,0($t6)
 # ["exec_times": 0]
	add.d	$f16,$f8,$f10
 # ["exec_times": 0]
	s.d	$f16,0($t4)
 # ["exec_times": 0]
	# .loc	2, 126
 # ["exec_times": 0]
	la	$t7,96($sp)
 # ["exec_times": 0]
	la	$t8,148($sp)
 # ["exec_times": 0]
	l.d	$f18,0($t8)
 # ["exec_times": 0]
	la	$t9,124($sp)
 # ["exec_times": 0]
	l.d	$f12,0($t9)
 # ["exec_times": 0]
	add.d	$f14,$f18,$f12
 # ["exec_times": 0]
	s.d	$f14,0($t7)
 # ["exec_times": 0]
	# .loc	2, 127
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a1,88($sp)
 # ["struct alignment": 64]
	la	$a2,0($a0)
	lw	$a3,0($a1)
	lw	$v0,4($a1)
	lw	$v1,8($a1)
	sw	$a3,0($a2)
	sw	$v0,4($a2)
	sw	$v1,8($a2)
	lw	$v1,12($a1)
	lw	$t0,16($a1)
	lw	$t1,20($a1)
	sw	$v1,12($a2)
	sw	$t0,16($a2)
	sw	$t1,20($a2)
	# END structure move
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_sum 
	.text	
	.align	2
	.align	2
	.globl	V2_sub
	# .loc	2, 132
	.ent	V2_sub 
V2_sub:
	spawn	V2_sub.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 168, $31
 # ["header/trailer":]
	cqip	V2_sub.headerspawn
 # ["header/trailer":]
V2_sub.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_sub.headerspawn
 # ["header/trailer":]
	la	$sp,-168($sp)
 # ["header/trailer":]
	pslice_exit	V2_sub.headerspawn
	sw	$a1,140($sp)
	sw	$a2,144($sp)
	sw	$a3,148($sp)
	# .loc	2, 134
 # ["exec_times": 0]
	la	$t8,88($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	la	$t9,140($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f12,0($t9)
 # ["exec_times": 0]
	la	$a1,116($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($a1)
 # ["exec_times": 0]
	sub.d	$f0,$f12,$f14
 # ["exec_times": 0]
	s.d	$f0,0($t8)
 # ["exec_times": 0]
	# .loc	2, 135
 # ["exec_times": 0]
	la	$a1,96($sp)
 # ["exec_times": 0]
	la	$a2,148($sp)
 # ["exec_times": 0]
	l.d	$f2,0($a2)
 # ["exec_times": 0]
	la	$a3,124($sp)
 # ["exec_times": 0]
	l.d	$f4,0($a3)
 # ["exec_times": 0]
	sub.d	$f6,$f2,$f4
 # ["exec_times": 0]
	s.d	$f6,0($a1)
 # ["exec_times": 0]
	# .loc	2, 136
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v0,88($sp)
 # ["struct alignment": 64]
	la	$v1,0($a0)
	lw	$t0,0($v0)
	lw	$t1,4($v0)
	lw	$t2,8($v0)
	sw	$t0,0($v1)
	sw	$t1,4($v1)
	sw	$t2,8($v1)
	lw	$t3,12($v0)
	lw	$t4,16($v0)
	lw	$t5,20($v0)
	sw	$t3,12($v1)
	sw	$t4,16($v1)
	sw	$t5,20($v1)
	# END structure move
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_sub 
	.text	
	.align	2
	.align	2
	.globl	V2_magn
	# .loc	2, 143
	.ent	V2_magn 
V2_magn:
	spawn	V2_magn.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	V2_magn.headerspawn
 # ["header/trailer":]
V2_magn.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_magn.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	V2_magn.headerspawn
	sw	$a0,104($sp)
	sw	$a1,108($sp)
	sw	$a2,112($sp)
	sw	$a3,116($sp)
	# .loc	2, 144
 # ["exec_times": 0]
	la	$t0,sqrt
 # ["exec_times": 0]
	la	$t2,104($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f12,0($t2)
 # ["exec_times": 0]
	la	$t3,104($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t3)
 # ["exec_times": 0]
	mul.d	$f0,$f12,$f14
 # ["exec_times": 0]
	la	$t4,112($sp)
 # ["exec_times": 0]
	l.d	$f2,0($t4)
 # ["exec_times": 0]
	la	$t5,112($sp)
 # ["exec_times": 0]
	l.d	$f4,0($t5)
 # ["exec_times": 0]
	mul.d	$f6,$f2,$f4
 # ["exec_times": 0]
	add.d	$f12,$f0,$f6
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "sqrt"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g11]
 # ["regs_used": 36]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_magn 
	.text	
	.align	2
	.align	2
	.globl	V2_cross
	# .loc	2, 151
	.ent	V2_cross 
V2_cross:
	spawn	V2_cross.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	V2_cross.headerspawn
 # ["header/trailer":]
V2_cross.headerspawn:
 # ["header/trailer":]
	pslice_entry	V2_cross.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	V2_cross.headerspawn
	sw	$a1,84($sp)
	sw	$a2,88($sp)
	sw	$a3,92($sp)
	# .loc	2, 153
 # ["exec_times": 0]
	la	$t2,56($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	la	$t3,92($sp)
 # ["exec_times": 0]
	l.d	$f4,0($t3)
 # ["exec_times": 0]
	s.d	$f4,0($t2)
 # ["exec_times": 0]
	# .loc	2, 154
 # ["exec_times": 0]
	la	$t4,64($sp)
 # ["exec_times": 0]
	la	$t5,84($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f6,0($t5)
 # ["exec_times": 0]
	neg.d	$f8,$f6
 # ["exec_times": 0]
	s.d	$f8,0($t4)
 # ["exec_times": 0]
	# .loc	2, 155
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t6,56($sp)
 # ["struct alignment": 64]
	la	$t7,0($a0)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	lw	$a0,8($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	sw	$a0,8($t7)
	lw	$a1,12($t6)
	lw	$a2,16($t6)
	lw	$a3,20($t6)
	sw	$a1,12($t7)
	sw	$a2,16($t7)
	sw	$a3,20($t7)
	# END structure move
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	V2_cross 
	.text	
	.align	2
	.align	2
	.globl	plot_dedge
	# .loc	2, 178
	.ent	plot_dedge 
plot_dedge:
	spawn	plot_dedge.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -120
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -120
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 120, $31
 # ["header/trailer":]
	cqip	plot_dedge.headerspawn
 # ["header/trailer":]
plot_dedge.headerspawn:
 # ["header/trailer":]
	pslice_entry	plot_dedge.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	pslice_exit	plot_dedge.headerspawn
	# .loc	2, 181
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t4,$a0,$t3
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t4)
 # ["exec_times": 0]
	# .loc	2, 182
 # ["exec_times": 0]
	li	$t5,8
 # ["exec_times": 0]
	addu	$t6,$a0,$t5
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f4,0($t6)
 # ["exec_times": 0]
	# .loc	2, 183
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	addu	$t8,$a1,$t7
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f20,0($t8)
 # ["exec_times": 0]
	# .loc	2, 184
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	addu	$a0,$a1,$t9
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f22,0($a0)
 # ["exec_times": 0]
	# .loc	2, 186
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_1
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f4,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 187
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_2
 # ["exec_times": 0]
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f22,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 188
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	plot_dedge 
	.text	
	.align	2
	.align	2
	.globl	plot_vedge
	# .loc	2, 192
	.ent	plot_vedge 
plot_vedge:
	spawn	plot_vedge.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -128
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 128, $31
 # ["header/trailer":]
	cqip	plot_vedge.headerspawn
 # ["header/trailer":]
plot_vedge.headerspawn:
 # ["header/trailer":]
	pslice_entry	plot_vedge.headerspawn
 # ["header/trailer":]
	la	$sp,-128($sp)
 # ["header/trailer":]
	pslice_exit	plot_vedge.headerspawn
	sw	$a0,104($sp)
	sw	$a1,108($sp)
	sw	$a2,112($sp)
	sw	$a3,116($sp)
	# .loc	2, 194
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_3
 # ["exec_times": 0]
	la	$t1,104($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t1)
 # ["exec_times": 0]
	la	$t2,112($sp)
 # ["exec_times": 0]
	l.d	$f18,0($t2)
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f18,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 195
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_2
 # ["exec_times": 0]
	la	$t3,80($sp)
 # ["fields": "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t3)
 # ["exec_times": 0]
	la	$t4,88($sp)
 # ["exec_times": 0]
	l.d	$f12,0($t4)
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f12,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 196
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	plot_vedge 
	.text	
	.align	2
	.align	2
	.globl	circle_center
	# .loc	2, 200
	.ent	circle_center 
circle_center:
	spawn	circle_center.headerspawn
 # ["header/trailer":]
	la	$sp,-424($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -424
 # ["header/trailer":]
	s.d	$f20,16($sp)
 # ["header/trailer":]
	s.d	$f22,24($sp)
 # ["header/trailer":]
	.fmask	0x00500000, -424
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 424, $31
 # ["header/trailer":]
	cqip	circle_center.headerspawn
 # ["header/trailer":]
circle_center.headerspawn:
 # ["header/trailer":]
	pslice_entry	circle_center.headerspawn
 # ["header/trailer":]
	la	$sp,-424($sp)
 # ["header/trailer":]
	pslice_exit	circle_center.headerspawn
	spawn	circle_center.L4
 # ["cqip_pos": <L:circle_center.L4,0>]
	move	$s0,$a0
	sw	$a1,396($sp)
	sw	$a2,400($sp)
	sw	$a3,404($sp)
	# .loc	2, 204
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,264($sp)
	# BEGIN structure move in genCall
	la	$t7,372($sp)
	lw	$a1,0($t7)
	lw	$a2,4($t7)
	lw	$a3,8($t7)
	move	$fp,$sp
	fst	$sp
	la	$t8,0($sp)
	lw	$t9,12($t7)
	sw	$t9,-12($t8)
	lw	$v0,16($t7)
	sw	$v0,-8($t8)
	lw	$v0,20($t7)
	sw	$v0,-4($t8)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,348($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t1,12($v0)
	lw	$t2,16($v0)
	lw	$t3,20($v0)
	sw	$t1,12($v1)
	sw	$t2,16($v1)
	sw	$t3,20($v1)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	cqip	circle_center.L4
 # ["cqip_pos": <L:circle_center.L4,0>]
circle_center.L4:
	pslice_entry	circle_center.L4
 # ["pslice_entry_pos": <L:circle_center.L4,0>]
	pslice_exit	circle_center.L4
 # ["pslice_exit_pos": <L:circle_center.L4,0>]
	spawn	circle_center.L5
 # ["cqip_pos": <L:circle_center.L5,0>]
	# .loc	2, 205
 # ["exec_times": 0]
	la	$t0,V2_magn
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t4,264($sp)
	lw	$a0,0($t4)
	lw	$a1,4($t4)
	lw	$a2,8($t4)
	lw	$a3,12($t4)
	move	$fp,$sp
	fst	$sp
	la	$t5,0($sp)
	lw	$t6,16($t4)
	sw	$t6,-8($t5)
	lw	$t7,20($t4)
	sw	$t7,-4($t5)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_magn"]
 # ["struct alignment": 0 64]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 206
 # ["exec_times": 0]
	la	$t0,V2_sum
 # ["exec_times": 0]
	la	$a0,264($sp)
	# BEGIN structure move in genCall
	la	$t8,396($sp)
	lw	$a1,0($t8)
	lw	$a2,4($t8)
	lw	$a3,8($t8)
	move	$fp,$sp
	fst	$sp
	la	$t9,0($sp)
	lw	$v0,12($t8)
	sw	$v0,-12($t9)
	lw	$v0,16($t8)
	sw	$v0,-8($t9)
	lw	$v0,20($t8)
	sw	$v0,-4($t9)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,372($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t2,12($v0)
	lw	$t3,16($v0)
	lw	$t4,20($v0)
	sw	$t2,12($v1)
	sw	$t3,16($v1)
	sw	$t4,20($v1)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sum"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	cqip	circle_center.L5
 # ["cqip_pos": <L:circle_center.L5,0>]
circle_center.L5:
	pslice_entry	circle_center.L5
 # ["pslice_entry_pos": <L:circle_center.L5,0>]
	pslice_exit	circle_center.L5
 # ["pslice_exit_pos": <L:circle_center.L5,0>]
	# .loc	2, 207
 # ["exec_times": 0]
	la	$t0,V2_times
 # ["exec_times": 0]
	li.d	$f14,5.000000000000000000e-01
 # ["exec_times": 0]
	la	$a0,240($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	# BEGIN structure move in Expand_struct_move_not_adjacent()
	la	$t5,264($sp)
	move	$fp,$sp
	fst	$sp
	la	$t6,-40($sp)
	lw	$t7,0($t5)
	lw	$t8,4($t5)
	lw	$t9,8($t5)
	sw	$t7,0($t6)
	sw	$t8,4($t6)
	sw	$t9,8($t6)
	lw	$a1,12($t5)
	lw	$v0,16($t5)
	lw	$v1,20($t5)
	sw	$a1,12($t6)
	sw	$v0,16($t6)
	sw	$v1,20($t6)
	# END structure move in Expand_struct_move_not_adjacent()
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_times"]
 # ["struct alignment": 2 64]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 208
 # ["exec_times": 0]
	li.d	$f14,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$a3,1
	c.lt.d	$f20,$f14
 # ["exec_times": 0]
	bc1t	circle_center.L3
	nop	
	move	$a3,$zero
circle_center.L3:
	beqz	$a3,circle_center.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 209
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v0,240($sp)
 # ["struct alignment": 64]
	la	$v1,0($s0)
	lw	$t0,0($v0)
	lw	$t1,4($v0)
	lw	$t2,8($v0)
	sw	$t0,0($v1)
	sw	$t1,4($v1)
	sw	$t2,8($v1)
	lw	$t3,12($v0)
	lw	$t4,16($v0)
	lw	$t5,20($v0)
	sw	$t3,12($v1)
	sw	$t4,16($v1)
	sw	$t5,20($v1)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	l.d	$f22,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
circle_center.L1:
	# .loc	2, 211
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,216($sp)
	# BEGIN structure move in genCall
	la	$t6,372($sp)
	lw	$a1,0($t6)
	lw	$a2,4($t6)
	lw	$a3,8($t6)
	move	$fp,$sp
	fst	$sp
	la	$t7,0($sp)
	lw	$t8,12($t6)
	sw	$t8,-12($t7)
	lw	$t9,16($t6)
	sw	$t9,-8($t7)
	lw	$v0,20($t6)
	sw	$v0,-4($t7)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,396($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t1,12($v0)
	lw	$t2,16($v0)
	lw	$t3,20($v0)
	sw	$t1,12($v1)
	sw	$t2,16($v1)
	sw	$t3,20($v1)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 212
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,192($sp)
	# BEGIN structure move in genCall
	la	$t3,348($sp)
	lw	$a1,0($t3)
	lw	$a2,4($t3)
	lw	$a3,8($t3)
	move	$fp,$sp
	fst	$sp
	la	$t4,0($sp)
	lw	$t5,12($t3)
	sw	$t5,-12($t4)
	lw	$t6,16($t3)
	sw	$t6,-8($t4)
	lw	$t7,20($t3)
	sw	$t7,-4($t4)
	# END structure move in genCall
	# BEGIN structure move
	la	$t8,396($sp)
	la	$t9,-52($sp)
	lw	$v0,0($t8)
	lw	$v1,4($t8)
	lw	$t1,8($t8)
	sw	$v0,0($t9)
	sw	$v1,4($t9)
	sw	$t1,8($t9)
	lw	$v0,12($t8)
	lw	$v1,16($t8)
	lw	$t1,20($t8)
	sw	$v0,12($t9)
	sw	$v1,16($t9)
	sw	$t1,20($t9)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 213
 # ["exec_times": 0]
	la	$t0,V2_cprod
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t1,216($sp)
	lw	$a0,0($t1)
	lw	$a1,4($t1)
	lw	$a2,8($t1)
	lw	$a3,12($t1)
	move	$fp,$sp
	fst	$sp
	la	$t2,0($sp)
	lw	$t3,16($t1)
	sw	$t3,-8($t2)
	lw	$t3,20($t1)
	sw	$t3,-4($t2)
	# END structure move in genCall
	# BEGIN structure move
	la	$t4,192($sp)
	la	$t5,-48($sp)
	lw	$t6,0($t4)
	lw	$t7,4($t4)
	lw	$t8,8($t4)
	sw	$t6,0($t5)
	sw	$t7,4($t5)
	sw	$t8,8($t5)
	lw	$t9,12($t4)
	lw	$v0,16($t4)
	lw	$v1,20($t4)
	sw	$t9,12($t5)
	sw	$v0,16($t5)
	sw	$v1,20($t5)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_cprod"]
 # ["struct alignment": 0 64 1 64]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 36]
	nop	
	# .loc	2, 214
 # ["exec_times": 0]
	li.d	$f2,-2.000000000000000000e+00
 # ["exec_times": 0]
	mul.d	$f22,$f2,$f0
 # ["exec_times": 0]
	# .loc	2, 215
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,168($sp)
	# BEGIN structure move in genCall
	la	$v0,348($sp)
	lw	$a1,0($v0)
	lw	$a2,4($v0)
	lw	$a3,8($v0)
	move	$fp,$sp
	fst	$sp
	la	$v1,0($sp)
	lw	$t1,12($v0)
	sw	$t1,-12($v1)
	lw	$t1,16($v0)
	sw	$t1,-8($v1)
	lw	$t1,20($v0)
	sw	$t1,-4($v1)
	# END structure move in genCall
	# BEGIN structure move
	la	$t1,372($sp)
	la	$t2,-52($sp)
	lw	$t3,0($t1)
	lw	$t4,4($t1)
	lw	$t5,8($t1)
	sw	$t3,0($t2)
	sw	$t4,4($t2)
	sw	$t5,8($t2)
	lw	$t6,12($t1)
	lw	$t7,16($t1)
	lw	$t8,20($t1)
	sw	$t6,12($t2)
	sw	$t7,16($t2)
	sw	$t8,20($t2)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 216
 # ["exec_times": 0]
	la	$t0,V2_dot
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t9,168($sp)
	lw	$a0,0($t9)
	lw	$a1,4($t9)
	lw	$a2,8($t9)
	lw	$a3,12($t9)
	move	$fp,$sp
	fst	$sp
	la	$v0,0($sp)
	lw	$v1,16($t9)
	sw	$v1,-8($v0)
	lw	$v1,20($t9)
	sw	$v1,-4($v0)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,192($sp)
	la	$v1,-48($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t2,12($v0)
	lw	$t3,16($v0)
	lw	$t4,20($v0)
	sw	$t2,12($v1)
	sw	$t3,16($v1)
	sw	$t4,20($v1)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_dot"]
 # ["struct alignment": 0 64 1 64]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 36]
	nop	
	mov.d	$f20,$f0
	# .loc	2, 217
 # ["exec_times": 0]
	la	$t0,V2_cross
 # ["exec_times": 0]
	la	$a0,144($sp)
	# BEGIN structure move in genCall
	la	$t5,216($sp)
	lw	$a1,0($t5)
	lw	$a2,4($t5)
	lw	$a3,8($t5)
	move	$fp,$sp
	fst	$sp
	la	$t6,0($sp)
	lw	$t7,12($t5)
	sw	$t7,-12($t6)
	lw	$t8,16($t5)
	sw	$t8,-8($t6)
	lw	$t9,20($t5)
	sw	$t9,-4($t6)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_cross"]
 # ["struct alignment": 1 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 218
 # ["exec_times": 0]
	la	$t0,V2_times
 # ["exec_times": 0]
	div.d	$f14,$f20,$f22
 # ["exec_times": 0]
	la	$a0,120($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	# BEGIN structure move in Expand_struct_move_not_adjacent()
	la	$a1,144($sp)
	move	$fp,$sp
	fst	$sp
	la	$v0,-40($sp)
	lw	$v1,0($a1)
	lw	$t1,4($a1)
	lw	$t2,8($a1)
	sw	$v1,0($v0)
	sw	$t1,4($v0)
	sw	$t2,8($v0)
	lw	$v1,12($a1)
	lw	$t1,16($a1)
	lw	$t2,20($a1)
	sw	$v1,12($v0)
	sw	$t1,16($v0)
	sw	$t2,20($v0)
	# END structure move in Expand_struct_move_not_adjacent()
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_times"]
 # ["struct alignment": 2 64]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 219
 # ["exec_times": 0]
	la	$t0,V2_sum
 # ["exec_times": 0]
	la	$a0,320($sp)
	# BEGIN structure move in genCall
	la	$t2,240($sp)
	lw	$a1,0($t2)
	lw	$a2,4($t2)
	lw	$a3,8($t2)
	move	$fp,$sp
	fst	$sp
	la	$t3,0($sp)
	lw	$t4,12($t2)
	sw	$t4,-12($t3)
	lw	$t5,16($t2)
	sw	$t5,-8($t3)
	lw	$t6,20($t2)
	sw	$t6,-4($t3)
	# END structure move in genCall
	# BEGIN structure move
	la	$t7,120($sp)
	la	$t8,-52($sp)
	lw	$t9,0($t7)
	lw	$v0,4($t7)
	lw	$v1,8($t7)
	sw	$t9,0($t8)
	sw	$v0,4($t8)
	sw	$v1,8($t8)
	lw	$v0,12($t7)
	lw	$v1,16($t7)
	lw	$t1,20($t7)
	sw	$v0,12($t8)
	sw	$v1,16($t8)
	sw	$t1,20($t8)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sum"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 220
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v1,320($sp)
 # ["struct alignment": 64]
	la	$t0,0($s0)
	lw	$t1,0($v1)
	lw	$t2,4($v1)
	lw	$t3,8($v1)
	sw	$t1,0($t0)
	sw	$t2,4($t0)
	sw	$t3,8($t0)
	lw	$t4,12($v1)
	lw	$t5,16($v1)
	lw	$t6,20($v1)
	sw	$t4,12($t0)
	sw	$t5,16($t0)
	sw	$t6,20($t0)
	# END structure move
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	l.d	$f20,16($sp)
 # ["header/trailer":]
	l.d	$f22,24($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	circle_center 
	.text	
	.align	2
	.align	2
	.globl	output_voronoi_diagram
	# .loc	2, 230
	.ent	output_voronoi_diagram 
output_voronoi_diagram:
	spawn	output_voronoi_diagram.headerspawn
 # ["header/trailer":]
	la	$sp,-1272($sp)
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
	sw	$s5,28($sp)
 # ["header/trailer":]
	sw	$s6,32($sp)
 # ["header/trailer":]
	sw	$s7,36($sp)
 # ["header/trailer":]
	.mask	0x80ff0000, -1272
 # ["header/trailer":]
	s.d	$f20,40($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -1272
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 1272, $31
 # ["header/trailer":]
	cqip	output_voronoi_diagram.headerspawn
 # ["header/trailer":]
output_voronoi_diagram.headerspawn:
 # ["header/trailer":]
	pslice_entry	output_voronoi_diagram.headerspawn
 # ["header/trailer":]
	la	$sp,-1272($sp)
 # ["header/trailer":]
	pslice_exit	output_voronoi_diagram.headerspawn
	move	$s1,$a0
	move	$s0,$a2
	# .loc	2, 242
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	lw	$v0,voronoi
	sne	$v1,$v0,$a3
 # ["exec_times": 0]
	beqz	$v1,output_voronoi_diagram.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 243
 # ["exec_times": 0]
	spawn	output_voronoi_diagram.L16
 # ["cqip_pos": <L:output_voronoi_diagram.L16,0>]
	la	$t0,zero_seen
 # ["exec_times": 0]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "zero_seen"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 244
 # ["exec_times": 0]
	move	$s2,$s1
 # ["exec_times": 0]
output_voronoi_diagram.L4:
	# .loc	2, 250
 # ["exec_times": 0]
	li	$t0,32
 # ["exec_times": 0]
	xor	$t4,$s2,$t0
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t4,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t3,0($t2)
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	addu	$t5,$t3,$t4
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t6,0($t5)
 # ["struct alignment": 64]
	la	$t7,1080($sp)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	lw	$a0,8($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	sw	$a0,8($t7)
	lw	$a1,12($t6)
	lw	$a2,16($t6)
	lw	$a3,20($t6)
	sw	$a1,12($t7)
	sw	$a2,16($t7)
	sw	$a3,20($t7)
	# END structure move
	# .loc	2, 253
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$s2,$v0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t0,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t3,0($t2)
 # ["struct alignment": 64]
	la	$t4,1056($sp)
	lw	$t5,0($t3)
	lw	$t6,4($t3)
	lw	$t7,8($t3)
	sw	$t5,0($t4)
	sw	$t6,4($t4)
	sw	$t7,8($t4)
	lw	$t8,12($t3)
	lw	$t9,16($t3)
	lw	$a0,20($t3)
	sw	$t8,12($t4)
	sw	$t9,16($t4)
	sw	$a0,20($t4)
	# END structure move
	# .loc	2, 254
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 0]
	addu	$a2,$s2,$a1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t3,0($a2)
 # ["exec_times": 0]
	# .loc	2, 255
 # ["exec_times": 0]
	li	$a3,32
 # ["exec_times": 0]
	xor	$t2,$t3,$a3
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$t2,$v0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t0,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t3,0($t2)
 # ["struct alignment": 64]
	la	$t4,1032($sp)
	lw	$t5,0($t3)
	lw	$t6,4($t3)
	lw	$t7,8($t3)
	sw	$t5,0($t4)
	sw	$t6,4($t4)
	sw	$t7,8($t4)
	lw	$t8,12($t3)
	lw	$t9,16($t3)
	lw	$a0,20($t3)
	sw	$t8,12($t4)
	sw	$t9,16($t4)
	sw	$a0,20($t4)
	# END structure move
	# .loc	2, 258
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,1216($sp)
	# BEGIN structure move in genCall
	la	$v0,1080($sp)
	lw	$a1,0($v0)
	lw	$a2,4($v0)
	lw	$a3,8($v0)
	move	$fp,$sp
	fst	$sp
	la	$v1,0($sp)
	lw	$t1,12($v0)
	sw	$t1,-12($v1)
	lw	$t1,16($v0)
	sw	$t1,-8($v1)
	lw	$t1,20($v0)
	sw	$t1,-4($v1)
	# END structure move in genCall
	# BEGIN structure move
	la	$t1,1056($sp)
	la	$t2,-52($sp)
	lw	$t3,0($t1)
	lw	$t4,4($t1)
	lw	$t5,8($t1)
	sw	$t3,0($t2)
	sw	$t4,4($t2)
	sw	$t5,8($t2)
	lw	$t5,12($t1)
	lw	$t6,16($t1)
	lw	$t7,20($t1)
	sw	$t5,12($t2)
	sw	$t6,16($t2)
	sw	$t7,20($t2)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 259
 # ["exec_times": 0]
	la	$t0,circle_center
 # ["exec_times": 0]
	la	$a0,1192($sp)
	# BEGIN structure move in genCall
	la	$t8,1056($sp)
	lw	$a1,0($t8)
	lw	$a2,4($t8)
	lw	$a3,8($t8)
	move	$fp,$sp
	fst	$sp
	la	$t9,0($sp)
	lw	$v0,12($t8)
	sw	$v0,-12($t9)
	lw	$v0,16($t8)
	sw	$v0,-8($t9)
	lw	$v0,20($t8)
	sw	$v0,-4($t9)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,1080($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t2,12($v0)
	lw	$t3,16($v0)
	lw	$t4,20($v0)
	sw	$t2,12($v1)
	sw	$t3,16($v1)
	sw	$t4,20($v1)
	# END structure move
	# BEGIN structure move
	la	$t5,1032($sp)
	la	$t6,-76($sp)
	lw	$t7,0($t5)
	lw	$t8,4($t5)
	lw	$t9,8($t5)
	sw	$t7,0($t6)
	sw	$t8,4($t6)
	sw	$t9,8($t6)
	lw	$v0,12($t5)
	lw	$v1,16($t5)
	lw	$t1,20($t5)
	sw	$v0,12($t6)
	sw	$v1,16($t6)
	sw	$t1,20($t6)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "circle_center"]
 # ["struct alignment": 1 64 2 64 3 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 260
 # ["exec_times": 0]
	la	$t0,V2_sum
 # ["exec_times": 0]
	la	$a0,1152($sp)
	# BEGIN structure move in genCall
	la	$v0,1056($sp)
	lw	$a1,0($v0)
	lw	$a2,4($v0)
	lw	$a3,8($v0)
	move	$fp,$sp
	fst	$sp
	la	$v1,0($sp)
	lw	$t1,12($v0)
	sw	$t1,-12($v1)
	lw	$t1,16($v0)
	sw	$t1,-8($v1)
	lw	$t1,20($v0)
	sw	$t1,-4($v1)
	# END structure move in genCall
	# BEGIN structure move
	la	$t2,1080($sp)
	la	$t3,-52($sp)
	lw	$t4,0($t2)
	lw	$t5,4($t2)
	lw	$t6,8($t2)
	sw	$t4,0($t3)
	sw	$t5,4($t3)
	sw	$t6,8($t3)
	lw	$t7,12($t2)
	lw	$t8,16($t2)
	lw	$t9,20($t2)
	sw	$t7,12($t3)
	sw	$t8,16($t3)
	sw	$t9,20($t3)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sum"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 261
 # ["exec_times": 0]
	la	$t0,V2_times
 # ["exec_times": 0]
	li.d	$f14,5.000000000000000000e-01
 # ["exec_times": 0]
	la	$a0,1128($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	# BEGIN structure move in Expand_struct_move_not_adjacent()
	la	$a1,1152($sp)
	move	$fp,$sp
	fst	$sp
	la	$v0,-40($sp)
	lw	$v1,0($a1)
	lw	$t1,4($a1)
	lw	$t2,8($a1)
	sw	$v1,0($v0)
	sw	$t1,4($v0)
	sw	$t2,8($v0)
	lw	$v1,12($a1)
	lw	$t1,16($a1)
	lw	$t2,20($a1)
	sw	$v1,12($v0)
	sw	$t1,16($v0)
	sw	$t2,20($v0)
	# END structure move in Expand_struct_move_not_adjacent()
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_times"]
 # ["struct alignment": 2 64]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 262
 # ["exec_times": 0]
	la	$t0,V2_sub
 # ["exec_times": 0]
	la	$a0,1104($sp)
	# BEGIN structure move in genCall
	la	$t2,1192($sp)
	lw	$a1,0($t2)
	lw	$a2,4($t2)
	lw	$a3,8($t2)
	move	$fp,$sp
	fst	$sp
	la	$t3,0($sp)
	lw	$t4,12($t2)
	sw	$t4,-12($t3)
	lw	$t5,16($t2)
	sw	$t5,-8($t3)
	lw	$t6,20($t2)
	sw	$t6,-4($t3)
	# END structure move in genCall
	# BEGIN structure move
	la	$t7,1128($sp)
	la	$t8,-52($sp)
	lw	$t9,0($t7)
	lw	$v0,4($t7)
	lw	$v1,8($t7)
	sw	$t9,0($t8)
	sw	$v0,4($t8)
	sw	$v1,8($t8)
	lw	$v0,12($t7)
	lw	$v1,16($t7)
	lw	$t1,20($t7)
	sw	$v0,12($t8)
	sw	$v1,16($t8)
	sw	$t1,20($t8)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sub"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 263
 # ["exec_times": 0]
	li.d	$f20,1.000000000000000000e+00
 # ["exec_times": 0]
	la	$t0,V2_magn
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$v1,1104($sp)
	lw	$a0,0($v1)
	lw	$a1,4($v1)
	lw	$a2,8($v1)
	lw	$a3,12($v1)
	move	$fp,$sp
	fst	$sp
	la	$t1,0($sp)
	lw	$t2,16($v1)
	sw	$t2,-8($t1)
	lw	$t2,20($v1)
	sw	$t2,-4($t1)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_magn"]
 # ["struct alignment": 0 64]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 36]
	nop	
	add.d	$f20,$f20,$f0
 # ["exec_times": 0]
	# .loc	2, 264
 # ["exec_times": 0]
	la	$t0,V2_magn
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t3,1216($sp)
	lw	$a0,0($t3)
	lw	$a1,4($t3)
	lw	$a2,8($t3)
	lw	$a3,12($t3)
	move	$fp,$sp
	fst	$sp
	la	$t4,0($sp)
	lw	$t5,16($t3)
	sw	$t5,-8($t4)
	lw	$t6,20($t3)
	sw	$t6,-4($t4)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_magn"]
 # ["struct alignment": 0 64]
 # ["regs_used": 5 6 7 8]
 # ["regs_defd": 36]
	nop	
	div.d	$f20,$f20,$f0
 # ["exec_times": 0]
	# .loc	2, 265
 # ["exec_times": 0]
	la	$t0,V2_cross
 # ["exec_times": 0]
	la	$a0,1152($sp)
	# BEGIN structure move in genCall
	la	$t7,1216($sp)
	lw	$a1,0($t7)
	lw	$a2,4($t7)
	lw	$a3,8($t7)
	move	$fp,$sp
	fst	$sp
	la	$t8,0($sp)
	lw	$t9,12($t7)
	sw	$t9,-12($t8)
	lw	$v0,16($t7)
	sw	$v0,-8($t8)
	lw	$v0,20($t7)
	sw	$v0,-4($t8)
	# END structure move in genCall
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_cross"]
 # ["struct alignment": 1 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 266
 # ["exec_times": 0]
	la	$t0,V2_times
 # ["exec_times": 0]
	la	$a0,1128($sp)
	mov.d	$f14,$f20
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	# BEGIN structure move in Expand_struct_move_not_adjacent()
	la	$v0,1152($sp)
	move	$fp,$sp
	fst	$sp
	la	$v1,-40($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t1,12($v0)
	lw	$t2,16($v0)
	lw	$t3,20($v0)
	sw	$t1,12($v1)
	sw	$t2,16($v1)
	sw	$t3,20($v1)
	# END structure move in Expand_struct_move_not_adjacent()
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_times"]
 # ["struct alignment": 2 64]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 267
 # ["exec_times": 0]
	la	$t0,V2_sum
 # ["exec_times": 0]
	la	$a0,1104($sp)
	# BEGIN structure move in genCall
	la	$t4,1192($sp)
	lw	$a1,0($t4)
	lw	$a2,4($t4)
	lw	$a3,8($t4)
	move	$fp,$sp
	fst	$sp
	la	$t5,0($sp)
	lw	$t6,12($t4)
	sw	$t6,-12($t5)
	lw	$t7,16($t4)
	sw	$t7,-8($t5)
	lw	$t8,20($t4)
	sw	$t8,-4($t5)
	# END structure move in genCall
	# BEGIN structure move
	la	$t9,1128($sp)
	la	$v0,-52($sp)
	lw	$v1,0($t9)
	lw	$t1,4($t9)
	lw	$t2,8($t9)
	sw	$v1,0($v0)
	sw	$t1,4($v0)
	sw	$t2,8($v0)
	lw	$v1,12($t9)
	lw	$t1,16($t9)
	lw	$t2,20($t9)
	sw	$v1,12($v0)
	sw	$t1,16($v0)
	sw	$t2,20($v0)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "V2_sum"]
 # ["struct alignment": 1 64 2 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 268
 # ["exec_times": 0]
	la	$t0,plot_vedge
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$t1,1192($sp)
	lw	$a0,0($t1)
	lw	$a1,4($t1)
	lw	$a2,8($t1)
	lw	$a3,12($t1)
	move	$fp,$sp
	fst	$sp
	la	$t2,0($sp)
	lw	$t3,16($t1)
	sw	$t3,-8($t2)
	lw	$t4,20($t1)
	sw	$t4,-4($t2)
	# END structure move in genCall
	# BEGIN structure move
	la	$t5,1104($sp)
	la	$t6,-48($sp)
	lw	$t7,0($t5)
	lw	$t8,4($t5)
	lw	$t9,8($t5)
	sw	$t7,0($t6)
	sw	$t8,4($t6)
	sw	$t9,8($t6)
	lw	$v0,12($t5)
	lw	$v1,16($t5)
	lw	$t1,20($t5)
	sw	$v0,12($t6)
	sw	$v1,16($t6)
	sw	$t1,20($t6)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "plot_vedge"]
 # ["struct alignment": 0 64 1 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 269
 # ["exec_times": 0]
	li	$a3,16
 # ["exec_times": 0]
	addu	$v0,$s2,$a3
 # ["exec_times": 0]
	li	$v1,63
 # ["exec_times": 0]
	and	$t0,$v0,$v1
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$s2,$t1
 # ["exec_times": 0]
	or	$t1,$t0,$t2
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	addu	$t4,$t1,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$t0,0($t4)
 # ["exec_times": 0]
	li	$t5,48
 # ["exec_times": 0]
	addu	$t6,$t0,$t5
 # ["exec_times": 0]
	li	$t7,63
 # ["exec_times": 0]
	and	$t8,$t6,$t7
 # ["exec_times": 0]
	li	$t9,16
 # ["exec_times": 0]
	addu	$a0,$s2,$t9
 # ["exec_times": 0]
	li	$a1,63
 # ["exec_times": 0]
	and	$a2,$a0,$a1
 # ["exec_times": 0]
	li	$a3,4294967232
 # ["exec_times": 0]
	and	$v0,$s2,$a3
 # ["exec_times": 0]
	or	$v1,$a2,$v0
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 0]
	addu	$t0,$v1,$t0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$v0,0($t0)
 # ["exec_times": 0]
	li	$t1,4294967232
 # ["exec_times": 0]
	and	$t2,$v0,$t1
 # ["exec_times": 0]
	or	$s2,$t8,$t2
 # ["exec_times": 0]
	sne	$t3,$s2,$s1
 # ["exec_times": 0]
	bnez	$t3,output_voronoi_diagram.L4
 # ["exec_times": 0]
	nop	
	# .loc	2, 315
 # ["exec_times": 0]
output_voronoi_diagram.L1:
	cqip	output_voronoi_diagram.L16
 # ["cqip_pos": <L:output_voronoi_diagram.L16,0>]
output_voronoi_diagram.L16:
	pslice_entry	output_voronoi_diagram.L16
 # ["pslice_entry_pos": <L:output_voronoi_diagram.L16,0>]
	pslice_exit	output_voronoi_diagram.L16
 # ["pslice_exit_pos": <L:output_voronoi_diagram.L16,0>]
	# .loc	2, 320
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	addu	$t5,$s0,$t4
 # ["fields": "ptr"]
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
	sw	$t6,0($t5)
 # ["exec_times": 0]
	# .loc	2, 321
 # ["exec_times": 0]
	la	$t0,push_ring
 # ["exec_times": 0]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_ring"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 322
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_4
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	addu	$t8,$s0,$t7
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$a1,0($t8)
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 323
 # ["exec_times": 0]
	move	$t9,$zero
 # ["exec_times": 0]
	addu	$a0,$s0,$t9
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$a1,0($a0)
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	sne	$a3,$a1,$a2
 # ["exec_times": 0]
	beqz	$a3,output_voronoi_diagram.L5
 # ["exec_times": 0]
	nop	
output_voronoi_diagram.L8:
	# .loc	2, 328
 # ["exec_times": 0]
	la	$t0,pop_edge
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "pop_edge"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s1,$v0
	# .loc	2, 329
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v1,$s1,$v0
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	li	$t1,1
 # ["exec_times": 0]
	seq	$t2,$t0,$t1
 # ["exec_times": 0]
	beqz	$t2,output_voronoi_diagram.L9
 # ["exec_times": 0]
	nop	
	# .loc	2, 331
 # ["exec_times": 0]
	move	$s3,$s1
 # ["exec_times": 0]
	# .loc	2, 332
 # ["exec_times": 0]
	li	$t3,4
 # ["exec_times": 0]
	addu	$t4,$s1,$t3
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($t4)
 # ["exec_times": 0]
output_voronoi_diagram.L12:
	# .loc	2, 334
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$s3,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s4,0($t6)
 # ["exec_times": 0]
	# .loc	2, 335
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	addu	$t8,$s4,$t7
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f16,0($t8)
 # ["exec_times": 0]
	# .loc	2, 336
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$t5,$s3,$t9
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$t5,$a0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s7,0($a1)
 # ["exec_times": 0]
	# .loc	2, 339
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	addu	$a3,$s7,$a2
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f18,0($a3)
 # ["exec_times": 0]
	# .loc	2, 340
 # ["exec_times": 0]
	li	$v0,1
	c.le.d	$f18,$f16
 # ["exec_times": 0]
	bc1t	output_voronoi_diagram.L15
	nop	
	move	$v0,$zero
output_voronoi_diagram.L15:
	beqz	$v0,output_voronoi_diagram.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 342
 # ["exec_times": 0]
	la	$t0,plot_dedge
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "plot_dedge"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 343
 # ["exec_times": 0]
	li	$v1,32
 # ["exec_times": 0]
	xor	$s5,$s3,$v1
 # ["exec_times": 0]
	# .loc	2, 346
 # ["exec_times": 0]
	li	$t0,4
 # ["exec_times": 0]
	addu	$t1,$s5,$t0
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s6,0($t1)
 # ["exec_times": 0]
	# .loc	2, 347
 # ["exec_times": 0]
	move	$t2,$zero
 # ["exec_times": 0]
	addu	$t3,$s3,$t2
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s4,0($t3)
 # ["exec_times": 0]
	# .loc	2, 348
 # ["exec_times": 0]
	li	$t4,32
 # ["exec_times": 0]
	xor	$t8,$s3,$t4
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	addu	$t6,$t8,$t5
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s7,0($t6)
 # ["exec_times": 0]
	# .loc	2, 351
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$t7,$s2,$t7
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$t7,$t8
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($t9)
 # ["exec_times": 0]
	# .loc	2, 354
 # ["exec_times": 0]
	li	$a0,32
 # ["exec_times": 0]
	xor	$t6,$s6,$a0
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	addu	$a3,$t6,$a1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t3,0($a3)
 # ["exec_times": 0]
	sw	$t3,1012($sp)
	# .loc	2, 357
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ccw"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	sw	$v0,328($sp)
	la	$t0,ccw
 # ["exec_times": 0]
	move	$a0,$s4
	move	$a1,$s7
	lw	$a2,1012($sp)
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "ccw"]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	lw	$t2,328($sp)
	sne	$a3,$t2,$v0
 # ["exec_times": 0]
	beqz	$a3,output_voronoi_diagram.L13
 # ["exec_times": 0]
	nop	
	# .loc	2, 359
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v1,$s3,$v0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	addu	$t2,$t0,$t1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t3,0($t2)
 # ["struct alignment": 64]
	la	$t4,968($sp)
	lw	$t5,0($t3)
	lw	$t6,4($t3)
	lw	$t7,8($t3)
	sw	$t5,0($t4)
	sw	$t6,4($t4)
	sw	$t7,8($t4)
	lw	$t8,12($t3)
	lw	$t9,16($t3)
	lw	$a0,20($t3)
	sw	$t8,12($t4)
	sw	$t9,16($t4)
	sw	$a0,20($t4)
	# END structure move
	# .loc	2, 360
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 0]
	xor	$a2,$s3,$a1
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	addu	$a3,$a2,$a3
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$v0,0($a3)
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$v0,$v1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t1,0($t0)
 # ["struct alignment": 64]
	la	$t2,944($sp)
	lw	$t3,0($t1)
	lw	$t4,4($t1)
	lw	$t5,8($t1)
	sw	$t3,0($t2)
	sw	$t4,4($t2)
	sw	$t5,8($t2)
	lw	$t6,12($t1)
	lw	$t7,16($t1)
	lw	$t8,20($t1)
	sw	$t6,12($t2)
	sw	$t7,16($t2)
	sw	$t8,20($t2)
	# END structure move
	# .loc	2, 363
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$a1,$s2,$t9
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 0]
	addu	$a1,$a1,$a0
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($a1)
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	addu	$v0,$a2,$a3
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v1,0($v0)
 # ["struct alignment": 64]
	la	$t0,920($sp)
	lw	$t1,0($v1)
	lw	$t2,4($v1)
	lw	$t3,8($v1)
	sw	$t1,0($t0)
	sw	$t2,4($t0)
	sw	$t3,8($t0)
	lw	$t4,12($v1)
	lw	$t5,16($v1)
	lw	$t6,20($v1)
	sw	$t4,12($t0)
	sw	$t5,16($t0)
	sw	$t6,20($t0)
	# END structure move
	# .loc	2, 366
 # ["exec_times": 0]
	la	$t0,circle_center
 # ["exec_times": 0]
	la	$a0,1152($sp)
	# BEGIN structure move in genCall
	la	$t7,968($sp)
	lw	$a1,0($t7)
	lw	$a2,4($t7)
	lw	$a3,8($t7)
	move	$fp,$sp
	fst	$sp
	la	$t8,0($sp)
	lw	$t9,12($t7)
	sw	$t9,-12($t8)
	lw	$v0,16($t7)
	sw	$v0,-8($t8)
	lw	$v0,20($t7)
	sw	$v0,-4($t8)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,944($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t1,12($v0)
	lw	$t2,16($v0)
	lw	$t3,20($v0)
	sw	$t1,12($v1)
	sw	$t2,16($v1)
	sw	$t3,20($v1)
	# END structure move
	# BEGIN structure move
	la	$t4,920($sp)
	la	$t5,-76($sp)
	lw	$t6,0($t4)
	lw	$t7,4($t4)
	lw	$t8,8($t4)
	sw	$t6,0($t5)
	sw	$t7,4($t5)
	sw	$t8,8($t5)
	lw	$t9,12($t4)
	lw	$v0,16($t4)
	lw	$v1,20($t4)
	sw	$t9,12($t5)
	sw	$v0,16($t5)
	sw	$v1,20($t5)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "circle_center"]
 # ["struct alignment": 1 64 2 64 3 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 367
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	addu	$a3,$s5,$a2
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$v0,0($a3)
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$v0,$v1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t1,0($t0)
 # ["struct alignment": 64]
	la	$t2,968($sp)
	lw	$t3,0($t1)
	lw	$t4,4($t1)
	lw	$t5,8($t1)
	sw	$t3,0($t2)
	sw	$t4,4($t2)
	sw	$t5,8($t2)
	lw	$t6,12($t1)
	lw	$t7,16($t1)
	lw	$t8,20($t1)
	sw	$t6,12($t2)
	sw	$t7,16($t2)
	sw	$t8,20($t2)
	# END structure move
	# .loc	2, 368
 # ["exec_times": 0]
	li	$t9,32
 # ["exec_times": 0]
	xor	$a0,$s5,$t9
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	addu	$a1,$a0,$a1
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a2,0($a1)
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	addu	$v0,$a2,$a3
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$v1,0($v0)
 # ["struct alignment": 64]
	la	$t0,944($sp)
	lw	$t1,0($v1)
	lw	$t2,4($v1)
	lw	$t3,8($v1)
	sw	$t1,0($t0)
	sw	$t2,4($t0)
	sw	$t3,8($t0)
	lw	$t4,12($v1)
	lw	$t5,16($v1)
	lw	$t6,20($v1)
	sw	$t4,12($t0)
	sw	$t5,16($t0)
	sw	$t6,20($t0)
	# END structure move
	# .loc	2, 371
 # ["exec_times": 0]
	li	$t7,32
 # ["exec_times": 0]
	xor	$t9,$s6,$t7
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$t9,$t8
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t9)
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 0]
	addu	$a2,$a0,$a1
 # ["fields": "v"]
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a3,0($a2)
 # ["struct alignment": 64]
	la	$v0,920($sp)
	lw	$v1,0($a3)
	lw	$t0,4($a3)
	lw	$t1,8($a3)
	sw	$v1,0($v0)
	sw	$t0,4($v0)
	sw	$t1,8($v0)
	lw	$t2,12($a3)
	lw	$t3,16($a3)
	lw	$t4,20($a3)
	sw	$t2,12($v0)
	sw	$t3,16($v0)
	sw	$t4,20($v0)
	# END structure move
	# .loc	2, 374
 # ["exec_times": 0]
	la	$t0,circle_center
 # ["exec_times": 0]
	la	$a0,1128($sp)
	# BEGIN structure move in genCall
	la	$t5,968($sp)
	lw	$a1,0($t5)
	lw	$a2,4($t5)
	lw	$a3,8($t5)
	move	$fp,$sp
	fst	$sp
	la	$t6,0($sp)
	lw	$t7,12($t5)
	sw	$t7,-12($t6)
	lw	$t8,16($t5)
	sw	$t8,-8($t6)
	lw	$t9,20($t5)
	sw	$t9,-4($t6)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,944($sp)
	la	$v1,-52($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t1,12($v0)
	lw	$t2,16($v0)
	lw	$t3,20($v0)
	sw	$t1,12($v1)
	sw	$t2,16($v1)
	sw	$t3,20($v1)
	# END structure move
	# BEGIN structure move
	la	$t2,920($sp)
	la	$t3,-76($sp)
	lw	$t4,0($t2)
	lw	$t5,4($t2)
	lw	$t6,8($t2)
	sw	$t4,0($t3)
	sw	$t5,4($t3)
	sw	$t6,8($t3)
	lw	$t7,12($t2)
	lw	$t8,16($t2)
	lw	$t9,20($t2)
	sw	$t7,12($t3)
	sw	$t8,16($t3)
	sw	$t9,20($t3)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "circle_center"]
 # ["struct alignment": 1 64 2 64 3 64]
 # ["regs_used": 5 6 7 8]
	nop	
	# .loc	2, 375
 # ["exec_times": 0]
	la	$t0,plot_vedge
 # ["exec_times": 0]
	# BEGIN structure move in genCall
	la	$v0,1152($sp)
	lw	$a0,0($v0)
	lw	$a1,4($v0)
	lw	$a2,8($v0)
	lw	$a3,12($v0)
	move	$fp,$sp
	fst	$sp
	la	$v1,0($sp)
	lw	$t1,16($v0)
	sw	$t1,-8($v1)
	lw	$v0,20($v0)
	sw	$v0,-4($v1)
	# END structure move in genCall
	# BEGIN structure move
	la	$v0,1128($sp)
	la	$v1,-48($sp)
	lw	$t1,0($v0)
	lw	$t2,4($v0)
	lw	$t3,8($v0)
	sw	$t1,0($v1)
	sw	$t2,4($v1)
	sw	$t3,8($v1)
	lw	$t3,12($v0)
	lw	$t4,16($v0)
	lw	$t5,20($v0)
	sw	$t3,12($v1)
	sw	$t4,16($v1)
	sw	$t5,20($v1)
	# END structure move
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "plot_vedge"]
 # ["struct alignment": 0 64 1 64]
 # ["regs_used": 5 6 7 8]
	nop	
output_voronoi_diagram.L13:
	# .loc	2, 378
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 0]
	addu	$t7,$s3,$t6
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	li	$t8,2
 # ["exec_times": 0]
	sw	$t8,0($t7)
 # ["exec_times": 0]
	# .loc	2, 379
 # ["exec_times": 0]
	move	$s3,$s2
 # ["exec_times": 0]
	# .loc	2, 380
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 0]
	addu	$a0,$s2,$t9
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($a0)
 # ["exec_times": 0]
	sne	$a1,$s3,$s1
 # ["exec_times": 0]
	bnez	$a1,output_voronoi_diagram.L12
 # ["exec_times": 0]
	nop	
	# .loc	2, 382
 # ["exec_times": 0]
output_voronoi_diagram.L9:
	# .loc	2, 385
 # ["exec_times": 0]
	la	$t0,push_ring
 # ["exec_times": 0]
	li	$a2,32
 # ["exec_times": 0]
	xor	$a1,$s1,$a2
 # ["exec_times": 0]
	move	$a0,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_ring"]
 # ["regs_used": 5 6]
	nop	
	move	$a3,$zero
 # ["exec_times": 0]
	addu	$v0,$s0,$a3
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$v1,0($v0)
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	sne	$t1,$v1,$t0
 # ["exec_times": 0]
	bnez	$t1,output_voronoi_diagram.L8
 # ["exec_times": 0]
	nop	
output_voronoi_diagram.L5:
	# .loc	2, 389
 # ["exec_times": 0]
	la	$t0,zero_seen
 # ["exec_times": 0]
	move	$a0,$s0
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "zero_seen"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 390
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
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
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$s7,36($sp)
 # ["header/trailer":]
	l.d	$f20,40($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	output_voronoi_diagram 
	.text	
	.align	2
	.align	2
	.globl	push_ring
	# .loc	2, 1128
	.ent	push_ring 
push_ring:
	spawn	push_ring.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
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
	.mask	0x80070000, -104
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 104, $31
 # ["header/trailer":]
	cqip	push_ring.headerspawn
 # ["header/trailer":]
push_ring.headerspawn:
 # ["header/trailer":]
	pslice_entry	push_ring.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
 # ["header/trailer":]
	pslice_exit	push_ring.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 1130
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t7,$s0,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($t7)
 # ["exec_times": 0]
	# .loc	2, 1131
 # ["exec_times": 0]
	sne	$t8,$s2,$s0
 # ["exec_times": 0]
	beqz	$t8,push_ring.L1
 # ["exec_times": 0]
	nop	
push_ring.L4:
	# .loc	2, 1132
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	addu	$a0,$s2,$t9
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	lw	$a1,0($a0)
 # ["exec_times": 0]
	move	$a2,$zero
 # ["exec_times": 0]
	seq	$a3,$a1,$a2
 # ["exec_times": 0]
	beqz	$a3,push_ring.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 1133
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v1,$s2,$v0
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 0]
	sw	$t0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 1134
 # ["exec_times": 0]
	la	$t0,push_edge
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_edge"]
 # ["regs_used": 5 6]
	nop	
push_ring.L5:
	# .loc	2, 1136
 # ["exec_times": 0]
	li	$t1,4
 # ["exec_times": 0]
	addu	$t2,$s2,$t1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($t2)
 # ["exec_times": 0]
	sne	$t3,$s2,$s0
 # ["exec_times": 0]
	bnez	$t3,push_ring.L4
 # ["exec_times": 0]
	nop	
push_ring.L1:
	# .loc	2, 1138
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	push_ring 
	.text	
	.align	2
	.align	2
	.globl	ccw
	# .loc	2, 626
	.ent	ccw 
ccw:
	spawn	ccw.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 208, $31
 # ["header/trailer":]
	cqip	ccw.headerspawn
 # ["header/trailer":]
ccw.headerspawn:
 # ["header/trailer":]
	pslice_entry	ccw.headerspawn
 # ["header/trailer":]
	la	$sp,-208($sp)
 # ["header/trailer":]
	pslice_exit	ccw.headerspawn
	# .loc	2, 633
 # ["exec_times": 0]
	# .loc	2, 634
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 378]
	addu	$t5,$a0,$t4
 # ["fields": "v" "x"]
 # ["exec_times": 378]
	l.d	$f6,0($t5)
 # ["exec_times": 378]
	# .loc	2, 635
 # ["exec_times": 0]
	li	$t6,8
 # ["exec_times": 378]
	addu	$t7,$a0,$t6
 # ["fields": "v" "y"]
 # ["exec_times": 378]
	l.d	$f8,0($t7)
 # ["exec_times": 378]
	# .loc	2, 636
 # ["exec_times": 0]
	# .loc	2, 637
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 378]
	addu	$t9,$a1,$t8
 # ["fields": "v" "x"]
 # ["exec_times": 378]
	l.d	$f10,0($t9)
 # ["exec_times": 378]
	# .loc	2, 638
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 378]
	addu	$a1,$a1,$a0
 # ["fields": "v" "y"]
 # ["exec_times": 378]
	l.d	$f16,0($a1)
 # ["exec_times": 378]
	# .loc	2, 639
 # ["exec_times": 0]
	# .loc	2, 640
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 378]
	addu	$a3,$a2,$a3
 # ["fields": "v" "x"]
 # ["exec_times": 378]
	l.d	$f18,0($a3)
 # ["exec_times": 378]
	# .loc	2, 641
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 378]
	addu	$v1,$a2,$v0
 # ["fields": "v" "y"]
 # ["exec_times": 378]
	l.d	$f12,0($v1)
 # ["exec_times": 378]
	# .loc	2, 644
 # ["exec_times": 0]
	sub.d	$f14,$f6,$f18
 # ["exec_times": 378]
	sub.d	$f0,$f16,$f12
 # ["exec_times": 378]
	mul.d	$f2,$f14,$f0
 # ["exec_times": 378]
	sub.d	$f4,$f10,$f18
 # ["exec_times": 378]
	sub.d	$f6,$f8,$f12
 # ["exec_times": 378]
	mul.d	$f8,$f4,$f6
 # ["exec_times": 378]
	sub.d	$f10,$f2,$f8
 # ["exec_times": 378]
	# .loc	2, 646
 # ["exec_times": 0]
	li.d	$f16,0.000000000000000000e+00
 # ["exec_times": 378]
	li	$t0,1
	c.lt.d	$f16,$f10
 # ["exec_times": 378]
	bc1t	ccw.L3
	nop	
	move	$t0,$zero
ccw.L3:
	beqz	$t0,ccw.L1
 # ["exec_times": 378]
 # ["instr_profile": 378 378]
	nop	
	li	$v0,1
 # ["exec_times": 0]
	j	ccw.__done2
 # ["exec_times": 0]
	nop	
ccw.L1:
	move	$v0,$zero
 # ["exec_times": 378]
ccw.__done2:
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 378]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	ccw 
	.text	
	.align	2
	.align	2
	.globl	free_edge
	# .loc	2, 575
	.ent	free_edge 
free_edge:
	spawn	free_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 56, $31
 # ["header/trailer":]
	cqip	free_edge.headerspawn
 # ["header/trailer":]
free_edge.headerspawn:
 # ["header/trailer":]
	pslice_entry	free_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-56($sp)
 # ["header/trailer":]
	pslice_exit	free_edge.headerspawn
	# .loc	2, 577
 # ["exec_times": 0]
	move	$t5,$a0
 # ["exec_times": 0]
	li	$t6,63
 # ["exec_times": 0]
	and	$t7,$a0,$t6
 # ["exec_times": 0]
	xor	$a0,$t5,$t7
 # ["exec_times": 0]
	# .loc	2, 579
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 0]
	addu	$t9,$a0,$t8
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a1,avail_edge
	sw	$a1,0($t9)
 # ["exec_times": 0]
	# .loc	2, 580
 # ["exec_times": 0]
	sw	$a0,avail_edge
	# .loc	2, 581
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	free_edge 
	.text	
	.align	2
	.align	2
	.globl	get_low
	# .loc	2, 419
	.ent	get_low 
get_low:
	spawn	get_low.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	get_low.headerspawn
 # ["header/trailer":]
get_low.headerspawn:
 # ["header/trailer":]
	pslice_entry	get_low.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	get_low.headerspawn
	move	$v0,$a0
	# .loc	2, 421
 # ["exec_times": 0]
	li	$a2,24
 # ["exec_times": 63]
	addu	$a3,$v0,$a2
 # ["fields": "left"]
 # ["exec_times": 63]
	lw	$a1,0($a3)
 # ["exec_times": 63]
	la	$v1,0($zero)
 # ["exec_times": 63]
	sne	$v1,$a1,$v1
 # ["exec_times": 63]
	beqz	$v1,get_low.L1
 # ["exec_times": 63]
 # ["instr_profile": 63 0]
	nop	
get_low.L4:
	# .loc	2, 422
 # ["exec_times": 0]
	move	$v0,$a1
 # ["exec_times": 120]
	li	$t0,24
 # ["exec_times": 120]
	addu	$t1,$v0,$t0
 # ["fields": "left"]
 # ["exec_times": 120]
	lw	$a1,0($t1)
 # ["exec_times": 120]
	la	$t2,0($zero)
 # ["exec_times": 120]
	sne	$t3,$a1,$t2
 # ["exec_times": 120]
	bnez	$t3,get_low.L4
 # ["exec_times": 120]
 # ["instr_profile": 120 57]
	nop	
get_low.L1:
	# .loc	2, 423
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 63]
 # ["instr_ret": t:g44]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	get_low 
	.text	
	.align	2
	.align	2
	.globl	delete_all_edges
	# .loc	2, 533
	.ent	delete_all_edges 
delete_all_edges:
	spawn	delete_all_edges.headerspawn
 # ["header/trailer":]
	la	$sp,-16($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 16, $31
 # ["header/trailer":]
	cqip	delete_all_edges.headerspawn
 # ["header/trailer":]
delete_all_edges.headerspawn:
 # ["header/trailer":]
	pslice_entry	delete_all_edges.headerspawn
 # ["header/trailer":]
	la	$sp,-16($sp)
 # ["header/trailer":]
	pslice_exit	delete_all_edges.headerspawn
	# .loc	2, 534
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 0]
	sw	$t4,next_edge
	# .loc	2, 535
 # ["exec_times": 0]
	la	$t5,0($zero)
 # ["exec_times": 0]
	sw	$t5,avail_edge
	# .loc	2, 536
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	delete_all_edges 
	.text	
	.align	2
	.align	2
	.globl	myalign
	# .loc	2, 541
	.ent	myalign 
myalign:
	spawn	myalign.headerspawn
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
	cqip	myalign.headerspawn
 # ["header/trailer":]
myalign.headerspawn:
 # ["header/trailer":]
	pslice_entry	myalign.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	myalign.headerspawn
	move	$s1,$a0
	# .loc	2, 542
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 127]
	addu	$a0,$a1,$s1
 # ["exec_times": 127]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 127]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
 # ["exec_times": 127]
	# .loc	2, 543
 # ["exec_times": 0]
	la	$t6,0($zero)
 # ["exec_times": 127]
	seq	$t7,$s0,$t6
 # ["exec_times": 127]
	beqz	$t7,myalign.L1
 # ["exec_times": 127]
 # ["instr_profile": 127 127]
	nop	
	# .loc	2, 544
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_6
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 545
 # ["exec_times": 0]
	la	$t0,exit
 # ["exec_times": 0]
	li	$a0,-1
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "exit"]
 # ["regs_used": 5]
	nop	
myalign.L1:
	# .loc	2, 547
 # ["exec_times": 0]
	addu	$t8,$s1,$s0
 # ["exec_times": 127]
	rem	$t9,$s0,$s1
 # ["exec_times": 127]
	subu	$v0,$t8,$t9
 # ["exec_times": 127]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 127]
 # ["instr_ret": t:g29]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	myalign 
	.text	
	.align	2
	.align	2
	.globl	incircle
	# .loc	2, 591
	.ent	incircle 
incircle:
	spawn	incircle.headerspawn
 # ["header/trailer":]
	la	$sp,-456($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -456
 # ["header/trailer":]
	s.d	$f20,8($sp)
 # ["header/trailer":]
	s.d	$f22,16($sp)
 # ["header/trailer":]
	s.d	$f24,24($sp)
 # ["header/trailer":]
	s.d	$f26,32($sp)
 # ["header/trailer":]
	.fmask	0x05500000, -456
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 456, $31
 # ["header/trailer":]
	cqip	incircle.headerspawn
 # ["header/trailer":]
incircle.headerspawn:
 # ["header/trailer":]
	pslice_entry	incircle.headerspawn
 # ["header/trailer":]
	la	$sp,-456($sp)
 # ["header/trailer":]
	pslice_exit	incircle.headerspawn
	spawn	incircle.spawntail1
	# .loc	2, 600
 # ["exec_times": 0]
	# .loc	2, 601
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	addu	$v0,$a3,$v0
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f10,0($v0)
 # ["exec_times": 0]
	# .loc	2, 602
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v0,$a3,$v0
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f16,0($v0)
 # ["exec_times": 0]
	# .loc	2, 603
 # ["exec_times": 0]
	li	$v0,16
 # ["exec_times": 0]
	addu	$v1,$a3,$v0
 # ["fields": "v" "norm"]
 # ["exec_times": 0]
	l.d	$f20,0($v1)
 # ["exec_times": 0]
	# .loc	2, 604
 # ["exec_times": 0]
	# .loc	2, 605
 # ["exec_times": 0]
	move	$t0,$zero
 # ["exec_times": 0]
	addu	$t1,$a0,$t0
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f18,0($t1)
 # ["exec_times": 0]
	sub.d	$f22,$f18,$f10
 # ["exec_times": 0]
	# .loc	2, 606
 # ["exec_times": 0]
	li	$t2,8
 # ["exec_times": 0]
	addu	$t3,$a0,$t2
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f12,0($t3)
 # ["exec_times": 0]
	sub.d	$f24,$f12,$f16
 # ["exec_times": 0]
	# .loc	2, 607
 # ["exec_times": 0]
	li	$t4,16
 # ["exec_times": 0]
	addu	$t5,$a0,$t4
 # ["fields": "v" "norm"]
 # ["exec_times": 0]
	l.d	$f14,0($t5)
 # ["exec_times": 0]
	# .loc	2, 608
 # ["exec_times": 0]
	# .loc	2, 609
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
	addu	$t7,$a1,$t6
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f0,0($t7)
 # ["exec_times": 0]
	sub.d	$f0,$f0,$f10
 # ["exec_times": 0]
	# .loc	2, 610
 # ["exec_times": 0]
	li	$t8,8
 # ["exec_times": 0]
	addu	$t9,$a1,$t8
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f2,0($t9)
 # ["exec_times": 0]
	sub.d	$f2,$f2,$f16
 # ["exec_times": 0]
	# .loc	2, 611
 # ["exec_times": 0]
	li	$a0,16
 # ["exec_times": 0]
	addu	$a1,$a1,$a0
 # ["fields": "v" "norm"]
 # ["exec_times": 0]
	l.d	$f12,0($a1)
 # ["exec_times": 0]
	# .loc	2, 612
 # ["exec_times": 0]
	# .loc	2, 613
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 0]
	addu	$a3,$a2,$a3
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f4,0($a3)
 # ["exec_times": 0]
	sub.d	$f4,$f4,$f10
 # ["exec_times": 0]
	# .loc	2, 614
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v1,$a2,$v0
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f6,0($v1)
 # ["exec_times": 0]
	sub.d	$f6,$f6,$f16
 # ["exec_times": 0]
	# .loc	2, 615
 # ["exec_times": 0]
	li	$t0,16
 # ["exec_times": 0]
	addu	$t1,$a2,$t0
 # ["fields": "v" "norm"]
 # ["exec_times": 0]
	l.d	$f26,0($t1)
 # ["exec_times": 0]
	# .loc	2, 617
 # ["exec_times": 0]
	sub.d	$f8,$f14,$f20
 # ["exec_times": 0]
	mul.d	$f10,$f0,$f6
 # ["exec_times": 0]
	mul.d	$f16,$f2,$f4
 # ["exec_times": 0]
	sub.d	$f18,$f10,$f16
 # ["exec_times": 0]
	mul.d	$f16,$f8,$f18
 # ["exec_times": 0]
	# .loc	2, 618
 # ["exec_times": 0]
	sub.d	$f12,$f12,$f20
 # ["exec_times": 0]
	mul.d	$f14,$f4,$f24
 # ["exec_times": 0]
	mul.d	$f4,$f6,$f22
 # ["exec_times": 0]
	sub.d	$f6,$f14,$f4
 # ["exec_times": 0]
	mul.d	$f8,$f12,$f6
 # ["exec_times": 0]
	add.d	$f16,$f16,$f8
 # ["exec_times": 0]
	# .loc	2, 619
 # ["exec_times": 0]
	sub.d	$f10,$f26,$f20
 # ["exec_times": 0]
	mul.d	$f2,$f22,$f2
 # ["exec_times": 0]
	mul.d	$f4,$f24,$f0
 # ["exec_times": 0]
	sub.d	$f4,$f2,$f4
 # ["exec_times": 0]
	mul.d	$f6,$f10,$f4
 # ["exec_times": 0]
	add.d	$f16,$f16,$f6
 # ["exec_times": 0]
	# .loc	2, 621
 # ["exec_times": 0]
	li.d	$f8,0.000000000000000000e+00
 # ["exec_times": 0]
	li	$t2,1
	c.lt.d	$f8,$f16
 # ["exec_times": 0]
	bc1t	incircle.L3
	nop	
	move	$t2,$zero
incircle.L3:
	beqz	$t2,incircle.L1
 # ["exec_times": 0]
	nop	
	li	$v0,1
 # ["exec_times": 0]
	j	incircle.__done2
 # ["exec_times": 0]
	nop	
incircle.L1:
	move	$v0,$zero
 # ["exec_times": 0]
incircle.__done2:
	cqip	incircle.spawntail1
incircle.spawntail1:
	pslice_entry	incircle.spawntail1
	pslice_exit	incircle.spawntail1
	lw	$ra,4($sp)
 # ["header/trailer":]
	l.d	$f20,8($sp)
 # ["header/trailer":]
	l.d	$f22,16($sp)
 # ["header/trailer":]
	l.d	$f24,24($sp)
 # ["header/trailer":]
	l.d	$f26,32($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	incircle 
	.text	
	.align	2
	.align	2
	.globl	valid
	# .loc	2, 925
	.ent	valid 
valid:
	spawn	valid.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -96
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 96, $31
 # ["header/trailer":]
	cqip	valid.headerspawn
 # ["header/trailer":]
valid.headerspawn:
 # ["header/trailer":]
	pslice_entry	valid.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	valid.headerspawn
	# .loc	2, 930
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 252]
	addu	$t7,$a1,$t6
 # ["fields": "v"]
 # ["exec_times": 252]
	lw	$t3,0($t7)
 # ["exec_times": 252]
	# .loc	2, 931
 # ["exec_times": 0]
	li	$t8,32
 # ["exec_times": 252]
	xor	$t5,$a1,$t8
 # ["exec_times": 252]
	move	$t9,$zero
 # ["exec_times": 252]
	addu	$a1,$t5,$t9
 # ["fields": "v"]
 # ["exec_times": 252]
	lw	$a2,0($a1)
 # ["exec_times": 252]
	# .loc	2, 934
 # ["exec_times": 0]
	li	$a1,32
 # ["exec_times": 252]
	xor	$t4,$a0,$a1
 # ["exec_times": 252]
	move	$a3,$zero
 # ["exec_times": 252]
	addu	$a3,$t4,$a3
 # ["fields": "v"]
 # ["exec_times": 252]
	lw	$a1,0($a3)
 # ["exec_times": 252]
	# .loc	2, 936
 # ["exec_times": 0]
	la	$t0,ccw
 # ["exec_times": 252]
	move	$a0,$t3
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 252]
 # ["proc_name": "ccw"]
 # ["call_overhead": 33]
 # ["regs_used": 5 6 7]
 # ["regs_defd": 9]
	nop	
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 252]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	valid 
	.text	
	.align	2
	.align	2
	.globl	dump_quad
	# .loc	2, 941
	.ent	dump_quad 
dump_quad:
	spawn	dump_quad.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
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
	.mask	0x80070000, -136
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 136, $31
 # ["header/trailer":]
	cqip	dump_quad.headerspawn
 # ["header/trailer":]
dump_quad.headerspawn:
 # ["header/trailer":]
	pslice_entry	dump_quad.headerspawn
 # ["header/trailer":]
	la	$sp,-136($sp)
 # ["header/trailer":]
	pslice_exit	dump_quad.headerspawn
	move	$s0,$a0
	# .loc	2, 947
 # ["exec_times": 0]
	li	$v0,4294967232
 # ["exec_times": 0]
	and	$s0,$s0,$v0
 # ["exec_times": 0]
	# .loc	2, 948
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_8
 # ["exec_times": 0]
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 949
 # ["exec_times": 0]
	move	$s2,$zero
 # ["exec_times": 0]
dump_quad.L3:
	# .loc	2, 950
 # ["exec_times": 0]
	li	$v1,16
 # ["exec_times": 0]
	mult	$v1,$s2
	mflo	$t0
 # ["exec_times": 0]
	addu	$t1,$t0,$s0
 # ["exec_times": 0]
	li	$t2,4
 # ["exec_times": 0]
	addu	$t3,$t1,$t2
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$a2,0($t3)
 # ["exec_times": 0]
	# .loc	2, 951
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	addu	$t5,$a2,$t4
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$s1,0($t5)
 # ["exec_times": 0]
	# .loc	2, 953
 # ["exec_times": 0]
	la	$t0,myprintf2
 # ["exec_times": 0]
	la	$a0,__tmp_string_9
 # ["exec_times": 0]
	li	$t6,16
 # ["exec_times": 0]
	mult	$t6,$s2
	mflo	$t7
 # ["exec_times": 0]
	addu	$a1,$t7,$s0
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf2"]
 # ["regs_used": 5 6 7]
	nop	
	# .loc	2, 954
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_10
 # ["exec_times": 0]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	li	$t8,1
 # ["exec_times": 0]
	addu	$s2,$s2,$t8
 # ["exec_times": 0]
	li	$t9,4
 # ["exec_times": 0]
	sle	$a0,$t9,$s2
 # ["exec_times": 0]
	beqz	$a0,dump_quad.L3
 # ["exec_times": 0]
	nop	
	# .loc	2, 957
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	dump_quad 
	.text	
	.align	2
	.align	2
	.globl	allocate_stack
	# .loc	2, 1032
	.ent	allocate_stack 
allocate_stack:
	spawn	allocate_stack.headerspawn
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
	cqip	allocate_stack.headerspawn
 # ["header/trailer":]
allocate_stack.headerspawn:
 # ["header/trailer":]
	pslice_entry	allocate_stack.headerspawn
 # ["header/trailer":]
	la	$sp,-96($sp)
 # ["header/trailer":]
	pslice_exit	allocate_stack.headerspawn
	# .loc	2, 1035
 # ["exec_times": 0]
	li	$a2,12
 # ["exec_times": 1]
	mult	$a2,$a0
	mflo	$a3
 # ["exec_times": 1]
	sw	$a3,num_edgeparts
	# .loc	2, 1036
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 1]
	li	$a0,12
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s0,$v0
 # ["exec_times": 1]
	# .loc	2, 1037
 # ["exec_times": 0]
	li	$v0,4
 # ["exec_times": 1]
	addu	$s1,$s0,$v0
 # ["fields": "elts"]
 # ["exec_times": 1]
	la	$t0,malloc
 # ["exec_times": 1]
	lw	$a1,num_edgeparts
	li	$v1,4
 # ["exec_times": 1]
	multu	$a1,$v1
	mflo	$a0
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	sw	$v0,0($s1)
 # ["exec_times": 1]
	# .loc	2, 1039
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 1]
	addu	$t1,$s0,$t0
 # ["fields": "stack_size"]
 # ["exec_times": 1]
	li	$t2,2
 # ["exec_times": 1]
	lw	$t3,num_edgeparts
	div	$t4,$t3,$t2
 # ["exec_times": 1]
	sw	$t4,0($t1)
 # ["exec_times": 1]
	# .loc	2, 1040
 # ["exec_times": 0]
	move	$v0,$s0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 1]
 # ["instr_ret": t:g73]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	allocate_stack 
	.text	
	.align	2
	.align	2
	.globl	get_points
	# .loc	2, 1053
	.ent	get_points 
get_points:
	spawn	get_points.headerspawn
 # ["header/trailer":]
	la	$sp,-584($sp)
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
	sw	$s5,28($sp)
 # ["header/trailer":]
	sw	$s6,32($sp)
 # ["header/trailer":]
	sw	$s7,36($sp)
 # ["header/trailer":]
	.mask	0x80ff0000, -584
 # ["header/trailer":]
	s.d	$f20,40($sp)
 # ["header/trailer":]
	.fmask	0x00100000, -584
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 584, $31
 # ["header/trailer":]
	cqip	get_points.headerspawn
 # ["header/trailer":]
get_points.headerspawn:
 # ["header/trailer":]
	pslice_entry	get_points.headerspawn
 # ["header/trailer":]
	la	$sp,-584($sp)
 # ["header/trailer":]
	pslice_exit	get_points.headerspawn
	spawn	get_points.spawntail2
	spawn	get_points.spawntail3
	lw	$s5,552($sp)
	lw	$s4,556($sp)
	lw	$s7,560($sp)
	lw	$s2,564($sp)
	move	$s1,$a0
	move	$s0,$a1
	mtc1	$a2,$f14
	mtc1	$a3,$f15
	# .loc	2, 1059
 # ["exec_times": 0]
	li	$a3,1
 # ["exec_times": 258]
	lw	$v0,get_points_called_times
	addu	$v1,$v0,$a3
 # ["exec_times": 258]
	sw	$v1,get_points_called_times
	# .loc	2, 1060
 # ["exec_times": 0]
	li	$t0,1
 # ["exec_times": 258]
	slt	$t1,$s0,$t0
 # ["exec_times": 258]
	beqz	$t1,get_points.L1
 # ["exec_times": 258]
 # ["instr_profile": 258 128]
	nop	
	# .loc	2, 1061
 # ["exec_times": 0]
	la	$t2,520($sp)
 # ["fields": "v"]
 # ["exec_times": 130]
	la	$t3,0($zero)
 # ["exec_times": 130]
	sw	$t3,0($t2)
 # ["exec_times": 130]
	# .loc	2, 1062
 # ["exec_times": 0]
	la	$t4,528($sp)
 # ["exec_times": 130]
	s.d	$f14,0($t4)
 # ["exec_times": 130]
	# .loc	2, 1063
 # ["exec_times": 0]
	la	$t5,536($sp)
 # ["exec_times": 130]
	sw	$s7,0($t5)
 # ["exec_times": 130]
	# .loc	2, 1064
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$t6,520($sp)
 # ["struct alignment": 64]
	la	$t7,0($s1)
	lw	$t8,0($t6)
	lw	$t9,4($t6)
	lw	$a0,8($t6)
	sw	$t8,0($t7)
	sw	$t9,4($t7)
	sw	$a0,8($t7)
	lw	$a1,12($t6)
	lw	$a2,16($t6)
	lw	$a3,20($t6)
	sw	$a1,12($t7)
	sw	$a2,16($t7)
	sw	$a3,20($t7)
	# END structure move
	cqip	get_points.spawntail2
get_points.spawntail2:
	pslice_entry	get_points.spawntail2
	pslice_exit	get_points.spawntail2
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
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$s7,36($sp)
 # ["header/trailer":]
	l.d	$f20,40($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 130]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
get_points.L1:
	# .loc	2, 1067
 # ["exec_times": 0]
	la	$t0,get_points
 # ["exec_times": 128]
	li	$v0,2
 # ["exec_times": 128]
	div	$a1,$s0,$v0
 # ["exec_times": 128]
	li	$v1,2
 # ["exec_times": 128]
	div	$t1,$s5,$v1
 # ["exec_times": 128]
	addu	$t1,$s4,$t1
 # ["exec_times": 128]
	li	$t2,2
 # ["exec_times": 128]
	div	$t3,$s5,$t2
 # ["exec_times": 128]
	la	$a0,520($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$s2,-20($sp)
	sw	$s7,-24($sp)
	sw	$t1,-28($sp)
	sw	$t3,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "get_points"]
 # ["call_overhead": 89]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	# .loc	2, 1071
 # ["exec_times": 0]
	li	$t4,2
 # ["exec_times": 128]
	div	$t5,$s0,$t4
 # ["exec_times": 128]
	subu	$s2,$s2,$t5
 # ["exec_times": 128]
	# .loc	2, 1073
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 128]
	lw	$t7,NumNodes
	subu	$t8,$t7,$t6
 # ["exec_times": 128]
	li	$t9,2
 # ["exec_times": 128]
	div	$a0,$t8,$t9
 # ["exec_times": 128]
	lw	$a1,NumNodes
	subu	$a2,$a1,$a0
 # ["exec_times": 128]
	# .loc	2, 1080
 # ["exec_times": 0]
	la	$t0,malloc
 # ["exec_times": 128]
	li	$a0,32
 # ["exec_times": 128]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "malloc"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	move	$s3,$v0
 # ["exec_times": 128]
	# .loc	2, 1084
 # ["exec_times": 0]
	move	$a3,$zero
 # ["exec_times": 128]
	addu	$s6,$s3,$a3
 # ["fields": "v" "x"]
 # ["exec_times": 128]
	la	$v0,528($sp)
 # ["exec_times": 128]
	l.d	$f20,0($v0)
 # ["exec_times": 128]
	la	$t6,exp
 # ["exec_times": 128]
	sw	$t6,340($sp)
	la	$t5,log
 # ["exec_times": 128]
	sw	$t5,372($sp)
	la	$t0,random
 # ["exec_times": 128]
	la	$v1,536($sp)
 # ["exec_times": 128]
	lw	$a0,0($v1)
 # ["exec_times": 128]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "random"]
 # ["call_overhead": 24]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	mtc1	$v0,$f14
	cvt.d.w	$f0,$f14
 # ["exec_times": 128]
	li.d	$f2,2.147483647000000000e+09
 # ["exec_times": 128]
	div.d	$f12,$f0,$f2
 # ["exec_times": 128]
	move	$fp,$sp
	lw	$t0,372($sp)
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "log"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mtc1	$s2,$f4
	cvt.d.w	$f6,$f4
 # ["exec_times": 128]
	div.d	$f12,$f0,$f6
 # ["exec_times": 128]
	move	$fp,$sp
	lw	$t0,340($sp)
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "exp"]
 # ["regs_used": 32]
 # ["regs_defd": 36]
	nop	
	mul.d	$f8,$f20,$f0
 # ["exec_times": 128]
	s.d	$f8,0($s6)
 # ["exec_times": 128]
	# .loc	2, 1088
 # ["exec_times": 0]
	li	$t0,8
 # ["exec_times": 128]
	addu	$s6,$s3,$t0
 # ["fields": "v" "y"]
 # ["exec_times": 128]
	la	$t0,random
 # ["exec_times": 128]
	move	$a0,$s7
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "random"]
 # ["call_overhead": 24]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	mtc1	$v0,$f10
	cvt.d.w	$f16,$f10
 # ["exec_times": 128]
	li.d	$f18,2.147483647000000000e+09
 # ["exec_times": 128]
	div.d	$f12,$f16,$f18
 # ["exec_times": 128]
	s.d	$f12,0($s6)
 # ["exec_times": 128]
	# .loc	2, 1089
 # ["exec_times": 0]
	li	$t1,16
 # ["exec_times": 128]
	addu	$t2,$s3,$t1
 # ["fields": "v" "norm"]
 # ["exec_times": 128]
	move	$t3,$zero
 # ["exec_times": 128]
	addu	$t4,$s3,$t3
 # ["fields": "v" "x"]
 # ["exec_times": 128]
	l.d	$f14,0($t4)
 # ["exec_times": 128]
	move	$t5,$zero
 # ["exec_times": 128]
	addu	$t6,$s3,$t5
 # ["fields": "v" "x"]
 # ["exec_times": 128]
	l.d	$f0,0($t6)
 # ["exec_times": 128]
	mul.d	$f2,$f14,$f0
 # ["exec_times": 128]
	li	$t7,8
 # ["exec_times": 128]
	addu	$t8,$s3,$t7
 # ["fields": "v" "y"]
 # ["exec_times": 128]
	l.d	$f4,0($t8)
 # ["exec_times": 128]
	li	$t9,8
 # ["exec_times": 128]
	addu	$a0,$s3,$t9
 # ["fields": "v" "y"]
 # ["exec_times": 128]
	l.d	$f6,0($a0)
 # ["exec_times": 128]
	mul.d	$f8,$f4,$f6
 # ["exec_times": 128]
	add.d	$f10,$f2,$f8
 # ["exec_times": 128]
	s.d	$f10,0($t2)
 # ["exec_times": 128]
	# .loc	2, 1090
 # ["exec_times": 0]
	li	$a1,28
 # ["exec_times": 128]
	addu	$a2,$s3,$a1
 # ["fields": "right"]
 # ["exec_times": 128]
	la	$a3,520($sp)
 # ["fields": "v"]
 # ["exec_times": 128]
	lw	$v0,0($a3)
 # ["exec_times": 128]
	sw	$v0,0($a2)
 # ["exec_times": 128]
	# .loc	2, 1092
 # ["exec_times": 0]
	la	$t0,get_points
 # ["exec_times": 128]
	li	$v1,2
 # ["exec_times": 128]
	div	$a1,$s0,$v1
 # ["exec_times": 128]
	move	$t1,$zero
 # ["exec_times": 128]
	addu	$t1,$s3,$t1
 # ["fields": "v" "x"]
 # ["exec_times": 128]
	l.d	$f14,0($t1)
 # ["exec_times": 128]
	li	$t2,1
 # ["exec_times": 128]
	subu	$t3,$s2,$t2
 # ["exec_times": 128]
	la	$t4,536($sp)
 # ["exec_times": 128]
	lw	$t5,0($t4)
 # ["exec_times": 128]
	li	$t6,2
 # ["exec_times": 128]
	div	$t7,$s5,$t6
 # ["exec_times": 128]
	la	$a0,520($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$t3,-20($sp)
	sw	$t5,-24($sp)
	sw	$s4,-28($sp)
	sw	$t7,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 128]
 # ["proc_name": "get_points"]
 # ["call_overhead": 6597]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	# .loc	2, 1094
 # ["exec_times": 0]
	li	$t8,24
 # ["exec_times": 128]
	addu	$t9,$s3,$t8
 # ["fields": "left"]
 # ["exec_times": 128]
	la	$a0,520($sp)
 # ["fields": "v"]
 # ["exec_times": 128]
	lw	$a1,0($a0)
 # ["exec_times": 128]
	sw	$a1,0($t9)
 # ["exec_times": 128]
	# .loc	2, 1095
 # ["exec_times": 0]
	la	$a2,520($sp)
 # ["fields": "v"]
 # ["exec_times": 128]
	sw	$s3,0($a2)
 # ["exec_times": 128]
	# .loc	2, 1096
 # ["exec_times": 0]
	# BEGIN structure move
 # ["struct alignment": 64]
	la	$a3,520($sp)
 # ["struct alignment": 64]
	la	$v0,0($s1)
	lw	$v1,0($a3)
	lw	$t0,4($a3)
	lw	$t1,8($a3)
	sw	$v1,0($v0)
	sw	$t0,4($v0)
	sw	$t1,8($v0)
	lw	$t2,12($a3)
	lw	$t3,16($a3)
	lw	$t4,20($a3)
	sw	$t2,12($v0)
	sw	$t3,16($v0)
	sw	$t4,20($v0)
	# END structure move
	cqip	get_points.spawntail3
get_points.spawntail3:
	pslice_entry	get_points.spawntail3
	pslice_exit	get_points.spawntail3
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
	lw	$s5,28($sp)
 # ["header/trailer":]
	lw	$s6,32($sp)
 # ["header/trailer":]
	lw	$s7,36($sp)
 # ["header/trailer":]
	l.d	$f20,40($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 128]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	get_points 
	.text	
	.align	2
	.align	2
	.globl	in_order
	# .loc	2, 901
	.ent	in_order 
in_order:
	spawn	in_order.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -120
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 120, $31
 # ["header/trailer":]
	cqip	in_order.headerspawn
 # ["header/trailer":]
in_order.headerspawn:
 # ["header/trailer":]
	pslice_entry	in_order.headerspawn
 # ["header/trailer":]
	la	$sp,-120($sp)
 # ["header/trailer":]
	pslice_exit	in_order.headerspawn
	move	$s0,$a0
	# .loc	2, 905
 # ["exec_times": 0]
	la	$t4,0($zero)
 # ["exec_times": 0]
	sne	$t5,$s0,$t4
 # ["exec_times": 0]
	move	$t6,$zero
 # ["exec_times": 0]
	seq	$t7,$t5,$t6
 # ["exec_times": 0]
	beqz	$t7,in_order.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 906
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_11
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 907
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
in_order.L1:
	# .loc	2, 910
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$s0,$t8
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t9)
 # ["exec_times": 0]
	# .loc	2, 911
 # ["exec_times": 0]
	li	$a0,8
 # ["exec_times": 0]
	addu	$a1,$s0,$a0
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f4,0($a1)
 # ["exec_times": 0]
	# .loc	2, 912
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_12
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f4,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 913
 # ["exec_times": 0]
	li	$a2,24
 # ["exec_times": 0]
	addu	$a3,$s0,$a2
 # ["fields": "left"]
 # ["exec_times": 0]
	lw	$a0,0($a3)
 # ["exec_times": 0]
	# .loc	2, 914
 # ["exec_times": 0]
	la	$t0,in_order
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "in_order"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 915
 # ["exec_times": 0]
	li	$v0,28
 # ["exec_times": 0]
	addu	$v1,$s0,$v0
 # ["fields": "right"]
 # ["exec_times": 0]
	lw	$a0,0($v1)
 # ["exec_times": 0]
	# .loc	2, 916
 # ["exec_times": 0]
	la	$t0,in_order
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "in_order"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 917
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret":]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	in_order 
	.text	
	.align	2
	.align	2
	.globl	mult
	# .loc	2, 920
	.ent	mult 
mult:
	spawn	mult.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 88, $31
 # ["header/trailer":]
	cqip	mult.headerspawn
 # ["header/trailer":]
mult.headerspawn:
 # ["header/trailer":]
	pslice_entry	mult.headerspawn
 # ["header/trailer":]
	la	$sp,-88($sp)
 # ["header/trailer":]
	pslice_exit	mult.headerspawn
	# .loc	2, 923
 # ["exec_times": 0]
	li	$t1,10000
 # ["exec_times": 256]
	div	$t2,$a0,$t1
 # ["exec_times": 256]
	# .loc	2, 924
 # ["exec_times": 0]
	li	$t3,10000
 # ["exec_times": 256]
	rem	$t4,$a0,$t3
 # ["exec_times": 256]
	# .loc	2, 925
 # ["exec_times": 0]
	li	$t5,10000
 # ["exec_times": 256]
	div	$t6,$a1,$t5
 # ["exec_times": 256]
	# .loc	2, 926
 # ["exec_times": 0]
	li	$t7,10000
 # ["exec_times": 256]
	rem	$t8,$a1,$t7
 # ["exec_times": 256]
	# .loc	2, 927
 # ["exec_times": 0]
	mult	$t4,$t6
	mflo	$t9
 # ["exec_times": 256]
	mult	$t2,$t8
	mflo	$a0
 # ["exec_times": 256]
	addu	$a1,$t9,$a0
 # ["exec_times": 256]
	li	$a2,10000
 # ["exec_times": 256]
	rem	$a3,$a1,$a2
 # ["exec_times": 256]
	li	$v0,10000
 # ["exec_times": 256]
	mult	$a3,$v0
	mflo	$v1
 # ["exec_times": 256]
	mult	$t4,$t8
	mflo	$t0
 # ["exec_times": 256]
	addu	$v0,$v1,$t0
 # ["exec_times": 256]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 256]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	mult 
	.text	
	.align	2
	.align	2
	.globl	skiprand
	# .loc	2, 931
	.ent	skiprand 
skiprand:
	spawn	skiprand.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	sw	$s0,8($sp)
 # ["header/trailer":]
	.mask	0x80010000, -48
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 48, $31
 # ["header/trailer":]
	cqip	skiprand.headerspawn
 # ["header/trailer":]
skiprand.headerspawn:
 # ["header/trailer":]
	pslice_entry	skiprand.headerspawn
 # ["header/trailer":]
	la	$sp,-48($sp)
 # ["header/trailer":]
	pslice_exit	skiprand.headerspawn
	move	$v0,$a0
	move	$s0,$a1
	# .loc	2, 932
 # ["exec_times": 0]
	# .loc	2, 932
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	sne	$t2,$s0,$t1
 # ["exec_times": 0]
	beqz	$t2,skiprand.L4
 # ["exec_times": 0]
	nop	
skiprand.L3:
	# .loc	2, 933
 # ["exec_times": 0]
	la	$t0,random
 # ["exec_times": 0]
	move	$a0,$v0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "random"]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	# .loc	2, 932
 # ["exec_times": 0]
	li	$t3,1
 # ["exec_times": 0]
	subu	$s0,$s0,$t3
 # ["exec_times": 0]
	# .loc	2, 932
 # ["exec_times": 0]
	move	$t4,$zero
 # ["exec_times": 0]
	sne	$t5,$s0,$t4
 # ["exec_times": 0]
	bnez	$t5,skiprand.L3
 # ["exec_times": 0]
	nop	
skiprand.L4:
	# .loc	2, 934
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
	.end	skiprand 
	.text	
	.align	2
	.align	2
	.globl	random
	# .loc	2, 938
	.ent	random 
random:
	spawn	random.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -32
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 32, $31
 # ["header/trailer":]
	cqip	random.headerspawn
 # ["header/trailer":]
random.headerspawn:
 # ["header/trailer":]
	pslice_entry	random.headerspawn
 # ["header/trailer":]
	la	$sp,-32($sp)
 # ["header/trailer":]
	pslice_exit	random.headerspawn
	# .loc	2, 939
 # ["exec_times": 0]
	la	$t0,mult
 # ["exec_times": 256]
	li	$a1,31415821
 # ["exec_times": 256]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 256]
 # ["proc_name": "mult"]
 # ["call_overhead": 18]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	li	$t6,1
 # ["exec_times": 256]
	addu	$a0,$v0,$t6
 # ["exec_times": 256]
	# .loc	2, 940
 # ["exec_times": 0]
	move	$v0,$a0
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 256]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	random 
	.text	
	.align	2
	.align	2
	.globl	print_extra
	# .loc	2, 947
	.ent	print_extra 
print_extra:
	spawn	print_extra.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -64
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 64, $31
 # ["header/trailer":]
	cqip	print_extra.headerspawn
 # ["header/trailer":]
print_extra.headerspawn:
 # ["header/trailer":]
	pslice_entry	print_extra.headerspawn
 # ["header/trailer":]
	la	$sp,-64($sp)
 # ["header/trailer":]
	pslice_exit	print_extra.headerspawn
	# .loc	2, 950
 # ["exec_times": 0]
	move	$t7,$zero
 # ["exec_times": 0]
	addu	$t8,$a0,$t7
 # ["fields": "v" "x"]
 # ["exec_times": 0]
	l.d	$f14,0($t8)
 # ["exec_times": 0]
	# .loc	2, 951
 # ["exec_times": 0]
	li	$t9,8
 # ["exec_times": 0]
	addu	$a0,$a0,$t9
 # ["fields": "v" "y"]
 # ["exec_times": 0]
	l.d	$f4,0($a0)
 # ["exec_times": 0]
	# .loc	2, 952
 # ["exec_times": 0]
	la	$t0,myprintf5
 # ["exec_times": 0]
	la	$a0,__tmp_string_12
 # ["exec_times": 0]
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	s.d	$f4,-24($sp)
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf5"]
 # ["regs_used": 5 34 7 8 34 35]
	nop	
	# .loc	2, 953
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	print_extra 
	.text	
	.align	2
	.align	2
	.globl	entry
	# .loc	2, 958
	.ent	entry 
entry:
	spawn	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-336($sp)
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
	.mask	0x80070000, -336
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 336, $31
 # ["header/trailer":]
	cqip	entry.headerspawn
 # ["header/trailer":]
entry.headerspawn:
 # ["header/trailer":]
	pslice_entry	entry.headerspawn
 # ["header/trailer":]
	la	$sp,-336($sp)
 # ["header/trailer":]
	pslice_exit	entry.headerspawn
	spawn	entry.L5
 # ["cqip_pos": <L:entry.L5,0>]
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 964
 # ["exec_times": 0]
	li	$t6,1
 # ["exec_times": 1]
	# .loc	2, 965
 # ["exec_times": 0]
	li	$t7,1
 # ["exec_times": 1]
	# .loc	2, 966
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 1]
	sw	$t8,to_color
	lw	$t5,to_color
	sw	$t5,to_3d_out
	lw	$t4,to_3d_out
	sw	$t4,to_off
	lw	$t3,to_off
	sw	$t3,to_lincoln
	# .loc	2, 967
 # ["exec_times": 0]
	li	$t9,1
 # ["exec_times": 1]
	sw	$t9,delaunay
	lw	$t2,delaunay
	sw	$t2,voronoi
	# .loc	2, 968
 # ["exec_times": 0]
	move	$a0,$zero
 # ["exec_times": 1]
	sw	$a0,ahost
	lw	$t1,ahost
	sw	$t1,interactive
	# .loc	2, 969
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 1]
	# .loc	2, 972
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_13
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	cqip	entry.L5
 # ["cqip_pos": <L:entry.L5,0>]
entry.L5:
	pslice_entry	entry.L5
 # ["pslice_entry_pos": <L:entry.L5,0>]
	pslice_exit	entry.L5
 # ["pslice_exit_pos": <L:entry.L5,0>]
	spawn	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
	# .loc	2, 973
 # ["exec_times": 0]
	la	$t0,dealwithargs
 # ["exec_times": 1]
	move	$a0,$s1
	move	$a1,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "dealwithargs"]
 # ["call_overhead": 23]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L6
 # ["cqip_pos": <L:entry.L6,0>]
entry.L6:
	pslice_entry	entry.L6
 # ["pslice_entry_pos": <L:entry.L6,0>]
	pslice_exit	entry.L6
 # ["pslice_exit_pos": <L:entry.L6,0>]
	spawn	entry.L7
 # ["cqip_pos": <L:entry.L7,0>]
	move	$s1,$v0
	# .loc	2, 979
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_14
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 981
 # ["exec_times": 0]
	la	$t0,get_points
 # ["exec_times": 1]
	li	$a1,1
 # ["exec_times": 1]
	li.d	$f14,1.000000000000000000e+00
 # ["exec_times": 1]
	li	$v0,1023
 # ["exec_times": 1]
	li	$a3,1
 # ["exec_times": 1]
	lw	$v1,NumNodes
	subu	$v1,$v1,$a3
 # ["exec_times": 1]
	li	$t1,1
 # ["exec_times": 1]
	la	$a0,272($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$s1,-20($sp)
	sw	$v0,-24($sp)
	sw	$v1,-28($sp)
	sw	$t1,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "get_points"]
 # ["call_overhead": 171]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	cqip	entry.L7
 # ["cqip_pos": <L:entry.L7,0>]
entry.L7:
	pslice_entry	entry.L7
 # ["pslice_entry_pos": <L:entry.L7,0>]
	pslice_exit	entry.L7
 # ["pslice_exit_pos": <L:entry.L7,0>]
	spawn	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
	# .loc	2, 982
 # ["exec_times": 0]
	la	$t0,get_points
 # ["exec_times": 1]
	li	$t1,1
 # ["exec_times": 1]
	subu	$a1,$s1,$t1
 # ["exec_times": 1]
	la	$t2,280($sp)
 # ["exec_times": 1]
	l.d	$f14,0($t2)
 # ["exec_times": 1]
	li	$t3,1
 # ["exec_times": 1]
	subu	$t4,$s1,$t3
 # ["exec_times": 1]
	la	$t5,288($sp)
 # ["exec_times": 1]
	lw	$t6,0($t5)
 # ["exec_times": 1]
	move	$t7,$zero
 # ["exec_times": 1]
	la	$a0,296($sp)
	mfc1	$a2,$f14
	mfc1	$a3,$f15
	move	$fp,$sp
	fst	$sp
	sw	$t4,-20($sp)
	sw	$t6,-24($sp)
	sw	$t7,-28($sp)
	lw	$t8,NumNodes
	sw	$t8,-32($sp)
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "get_points"]
 # ["call_overhead": 20079]
 # ["regs_used": 5 6 34 7 8 34 35]
	nop	
	cqip	entry.L8
 # ["cqip_pos": <L:entry.L8,0>]
entry.L8:
	pslice_entry	entry.L8
 # ["pslice_entry_pos": <L:entry.L8,0>]
	pslice_exit	entry.L8
 # ["pslice_exit_pos": <L:entry.L8,0>]
	spawn	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
	# .loc	2, 988
 # ["exec_times": 0]
	li	$t9,1
 # ["exec_times": 1]
	addu	$a0,$s1,$t9
 # ["exec_times": 1]
	sw	$a0,num_vertices
	# .loc	2, 989
 # ["exec_times": 0]
	la	$t0,allocate_stack
 # ["exec_times": 1]
	lw	$a0,num_vertices
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "allocate_stack"]
 # ["call_overhead": 21]
 # ["regs_used": 5]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L9
 # ["cqip_pos": <L:entry.L9,0>]
entry.L9:
	pslice_entry	entry.L9
 # ["pslice_entry_pos": <L:entry.L9,0>]
	pslice_exit	entry.L9
 # ["pslice_exit_pos": <L:entry.L9,0>]
	spawn	entry.L10
 # ["cqip_pos": <L:entry.L10,0>]
	move	$s0,$v0
	# .loc	2, 991
 # ["exec_times": 0]
	move	$a1,$zero
 # ["exec_times": 1]
	lw	$a2,flag
	sne	$a3,$a2,$a1
 # ["exec_times": 1]
	beqz	$a3,entry.L2
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 992
 # ["exec_times": 0]
	la	$t0,in_order
 # ["exec_times": 0]
	la	$v0,296($sp)
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($v0)
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "in_order"]
 # ["regs_used": 5]
	nop	
entry.L2:
	# .loc	2, 993
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_15
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 994
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 1]
	lw	$t0,flag
	sne	$t1,$t0,$v1
 # ["exec_times": 1]
	beqz	$t1,entry.L3
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 995
 # ["exec_times": 0]
	la	$t0,print_extra
 # ["exec_times": 0]
	la	$t2,272($sp)
 # ["fields": "v"]
 # ["exec_times": 0]
	lw	$a0,0($t2)
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "print_extra"]
 # ["regs_used": 5]
	nop	
entry.L3:
	# .loc	2, 996
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 1]
	la	$a0,__tmp_string_16
 # ["exec_times": 1]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	cqip	entry.L10
 # ["cqip_pos": <L:entry.L10,0>]
entry.L10:
	pslice_entry	entry.L10
 # ["pslice_entry_pos": <L:entry.L10,0>]
	pslice_exit	entry.L10
 # ["pslice_exit_pos": <L:entry.L10,0>]
	spawn	entry.L11
 # ["cqip_pos": <L:entry.L11,0>]
	# .loc	2, 1009
 # ["exec_times": 0]
	la	$t0,build_delaunay_triangulation
 # ["exec_times": 1]
	la	$t3,296($sp)
 # ["fields": "v"]
 # ["exec_times": 1]
	lw	$a0,0($t3)
 # ["exec_times": 1]
	la	$t4,272($sp)
 # ["fields": "v"]
 # ["exec_times": 1]
	lw	$a1,0($t4)
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "build_delaunay_triangulation"]
 # ["call_overhead": 56086]
 # ["regs_used": 5 6]
 # ["regs_defd": 9]
	nop	
	cqip	entry.L11
 # ["cqip_pos": <L:entry.L11,0>]
entry.L11:
	pslice_entry	entry.L11
 # ["pslice_entry_pos": <L:entry.L11,0>]
	pslice_exit	entry.L11
 # ["pslice_exit_pos": <L:entry.L11,0>]
	move	$s2,$v0
	# .loc	2, 1011
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 1]
	la	$a0,__tmp_string_17
 # ["exec_times": 1]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 1]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
	# .loc	2, 1015
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 1]
	lw	$t6,flag
	sne	$t7,$t6,$t5
 # ["exec_times": 1]
	beqz	$t7,entry.L4
 # ["exec_times": 1]
 # ["instr_profile": 1 1]
	nop	
	# .loc	2, 1016
 # ["exec_times": 0]
	la	$t0,myprintf1
 # ["exec_times": 0]
	la	$a0,__tmp_string_18
 # ["exec_times": 0]
	move	$a1,$s1
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf1"]
 # ["regs_used": 5 6]
	nop	
	# .loc	2, 1017
 # ["exec_times": 0]
	la	$t0,output_voronoi_diagram
 # ["exec_times": 0]
	move	$a0,$s2
	move	$a1,$s1
	move	$a2,$s0
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "output_voronoi_diagram"]
 # ["regs_used": 5 6 7]
	nop	
entry.L4:
	# .loc	2, 1024
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
	# .loc	2, 1028
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
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
	.text	
	.align	2
	.align	2
	.globl	push_edge
	# .loc	2, 1112
	.ent	push_edge 
push_edge:
	spawn	push_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	ust	
 # ["header/trailer":]
	sw	$ra,4($sp)
 # ["header/trailer":]
	.mask	0x80000000, -112
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 112, $31
 # ["header/trailer":]
	cqip	push_edge.headerspawn
 # ["header/trailer":]
push_edge.headerspawn:
 # ["header/trailer":]
	pslice_entry	push_edge.headerspawn
 # ["header/trailer":]
	la	$sp,-112($sp)
 # ["header/trailer":]
	pslice_exit	push_edge.headerspawn
	# .loc	2, 1115
 # ["exec_times": 0]
	move	$t8,$zero
 # ["exec_times": 0]
	addu	$t9,$a0,$t8
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$a2,0($t9)
 # ["exec_times": 0]
	li	$a3,8
 # ["exec_times": 0]
	addu	$a3,$a0,$a3
 # ["fields": "stack_size"]
 # ["exec_times": 0]
	lw	$a3,0($a3)
 # ["exec_times": 0]
	seq	$v0,$a2,$a3
 # ["exec_times": 0]
	beqz	$v0,push_edge.L1
 # ["exec_times": 0]
	nop	
	# .loc	2, 1116
 # ["exec_times": 0]
	la	$t0,myprintf
 # ["exec_times": 0]
	la	$a0,__tmp_string_19
 # ["exec_times": 0]
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "myprintf"]
 # ["regs_used": 5]
	nop	
push_edge.L3:
	j	push_edge.__done2
 # ["exec_times": 0]
	nop	
push_edge.L1:
	# .loc	2, 1118
 # ["exec_times": 0]
	move	$v1,$zero
 # ["exec_times": 0]
	addu	$t0,$a0,$v1
 # ["fields": "ptr"]
 # ["exec_times": 0]
	lw	$t1,0($t0)
 # ["exec_times": 0]
	# .loc	2, 1119
 # ["exec_times": 0]
	li	$t2,1
 # ["exec_times": 0]
	addu	$t1,$t1,$t2
 # ["exec_times": 0]
	# .loc	2, 1120
 # ["exec_times": 0]
	move	$t3,$zero
 # ["exec_times": 0]
	addu	$t4,$a0,$t3
 # ["fields": "ptr"]
 # ["exec_times": 0]
	sw	$t1,0($t4)
 # ["exec_times": 0]
	# .loc	2, 1121
 # ["exec_times": 0]
	li	$t5,4
 # ["exec_times": 0]
	addu	$t6,$a0,$t5
 # ["fields": "elts"]
 # ["exec_times": 0]
	lw	$t7,0($t6)
 # ["exec_times": 0]
	li	$t8,4
 # ["exec_times": 0]
	mult	$t1,$t8
	mflo	$t9
 # ["exec_times": 0]
	addu	$a0,$t7,$t9
 # ["exec_times": 0]
	sw	$a1,0($a0)
 # ["exec_times": 0]
push_edge.__done2:
	# .loc	2, 1123
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	push_edge 
	.text	
	.align	2
	.align	2
	.globl	push_nonzero_ring
	# .loc	2, 1143
	.ent	push_nonzero_ring 
push_nonzero_ring:
	spawn	push_nonzero_ring.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
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
	.mask	0x80070000, -104
 # ["header/trailer":]
	sw	$fp,0($sp)
 # ["header/trailer":]
	.frame	$sp, 104, $31
 # ["header/trailer":]
	cqip	push_nonzero_ring.headerspawn
 # ["header/trailer":]
push_nonzero_ring.headerspawn:
 # ["header/trailer":]
	pslice_entry	push_nonzero_ring.headerspawn
 # ["header/trailer":]
	la	$sp,-104($sp)
 # ["header/trailer":]
	pslice_exit	push_nonzero_ring.headerspawn
	move	$s1,$a0
	move	$s0,$a1
	# .loc	2, 1145
 # ["exec_times": 0]
	li	$a1,4
 # ["exec_times": 0]
	addu	$a2,$s0,$a1
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($a2)
 # ["exec_times": 0]
	# .loc	2, 1146
 # ["exec_times": 0]
	sne	$a3,$s2,$s0
 # ["exec_times": 0]
	beqz	$a3,push_nonzero_ring.L1
 # ["exec_times": 0]
	nop	
push_nonzero_ring.L4:
	# .loc	2, 1147
 # ["exec_times": 0]
	li	$v0,8
 # ["exec_times": 0]
	addu	$v1,$s2,$v0
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	lw	$t0,0($v1)
 # ["exec_times": 0]
	move	$t1,$zero
 # ["exec_times": 0]
	sne	$t2,$t0,$t1
 # ["exec_times": 0]
	beqz	$t2,push_nonzero_ring.L5
 # ["exec_times": 0]
	nop	
	# .loc	2, 1148
 # ["exec_times": 0]
	li	$t3,8
 # ["exec_times": 0]
	addu	$t4,$s2,$t3
 # ["fields": "wasseen"]
 # ["exec_times": 0]
	move	$t5,$zero
 # ["exec_times": 0]
	sw	$t5,0($t4)
 # ["exec_times": 0]
	# .loc	2, 1149
 # ["exec_times": 0]
	la	$t0,push_edge
 # ["exec_times": 0]
	move	$a0,$s1
	move	$a1,$s2
	move	$fp,$sp
	fst	$sp
	jalr	$t0,$ra
 # ["exec_times": 0]
 # ["proc_name": "push_edge"]
 # ["regs_used": 5 6]
	nop	
push_nonzero_ring.L5:
	# .loc	2, 1151
 # ["exec_times": 0]
	li	$t6,4
 # ["exec_times": 0]
	addu	$t7,$s2,$t6
 # ["fields": "next"]
 # ["exec_times": 0]
	lw	$s2,0($t7)
 # ["exec_times": 0]
	sne	$t8,$s2,$s0
 # ["exec_times": 0]
	bnez	$t8,push_nonzero_ring.L4
 # ["exec_times": 0]
	nop	
push_nonzero_ring.L1:
	# .loc	2, 1153
 # ["exec_times": 0]
	move	$v0,$zero
 # ["exec_times": 0]
	lw	$ra,4($sp)
 # ["header/trailer":]
	lw	$s0,8($sp)
 # ["header/trailer":]
	lw	$s1,12($sp)
 # ["header/trailer":]
	lw	$s2,16($sp)
 # ["header/trailer":]
	lw	$sp,0($sp)
 # ["header/trailer":]
	jr	$ra
 # ["exec_times": 0]
 # ["instr_ret": t:g4]
 # ["regs_used": 9]
 # ["incomplete_proc_exit":]
	nop	
	.end	push_nonzero_ring 
