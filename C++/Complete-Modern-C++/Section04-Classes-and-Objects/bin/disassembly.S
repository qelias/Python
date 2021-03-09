
classes_and_objects:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 52 2f 00 00    	pushq  0x2f52(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 53 2f 00 00 	bnd jmpq *0x2f53(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 0d 2f 00 00 	bnd jmpq *0x2f0d(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <_ZNSolsEf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 bd 2e 00 00 	bnd jmpq *0x2ebd(%rip)        # 3f88 <_ZNSolsEf@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__cxa_atexit@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 b5 2e 00 00 	bnd jmpq *0x2eb5(%rip)        # 3f90 <__cxa_atexit@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 ad 2e 00 00 	bnd jmpq *0x2ead(%rip)        # 3f98 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <_ZNSolsEPFRSoS_E@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 a5 2e 00 00 	bnd jmpq *0x2ea5(%rip)        # 3fa0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 9d 2e 00 00 	bnd jmpq *0x2e9d(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <_ZNSt8ios_base4InitC1Ev@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 95 2e 00 00 	bnd jmpq *0x2e95(%rip)        # 3fb0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <_ZNSolsEi@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 8d 2e 00 00 	bnd jmpq *0x2e8d(%rip)        # 3fb8 <_ZNSolsEi@GLIBCXX_3.4>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <_Unwind_Resume@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 85 2e 00 00 	bnd jmpq *0x2e85(%rip)        # 3fc0 <_Unwind_Resume@GCC_3.0>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	4c 8d 05 d6 07 00 00 	lea    0x7d6(%rip),%r8        # 1930 <__libc_csu_fini>
    115a:	48 8d 0d 5f 07 00 00 	lea    0x75f(%rip),%rcx        # 18c0 <__libc_csu_init>
    1161:	48 8d 3d eb 00 00 00 	lea    0xeb(%rip),%rdi        # 1253 <main>
    1168:	ff 15 72 2e 00 00    	callq  *0x2e72(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    116e:	f4                   	hlt    
    116f:	90                   	nop

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d a1 2e 00 00 	lea    0x2ea1(%rip),%rdi        # 4018 <__TMC_END__>
    1177:	48 8d 05 9a 2e 00 00 	lea    0x2e9a(%rip),%rax        # 4018 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 4e 2e 00 00 	mov    0x2e4e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmpq   *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 71 2e 00 00 	lea    0x2e71(%rip),%rdi        # 4018 <__TMC_END__>
    11a7:	48 8d 35 6a 2e 00 00 	lea    0x2e6a(%rip),%rsi        # 4018 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmpq   *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	retq   
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 65 2f 00 00 00 	cmpb   $0x0,0x2f65(%rip)        # 4150 <completed.8060>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d d2 2d 00 00 	cmpq   $0x0,0x2dd2(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	callq  10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	callq  1170 <deregister_tm_clones>
    120c:	c6 05 3d 2f 00 00 01 	movb   $0x1,0x2f3d(%rip)        # 4150 <completed.8060>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	retq   
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	retq   
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmpq   11a0 <register_tm_clones>

0000000000001229 <_Z8DrawLineiiii>:
    1229:	f3 0f 1e fa          	endbr64 
    122d:	55                   	push   %rbp
    122e:	48 89 e5             	mov    %rsp,%rbp
    1231:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1234:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1237:	89 55 f4             	mov    %edx,-0xc(%rbp)
    123a:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    123d:	90                   	nop
    123e:	5d                   	pop    %rbp
    123f:	c3                   	retq   

0000000000001240 <_Z8DrawLine5PointS_>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	55                   	push   %rbp
    1245:	48 89 e5             	mov    %rsp,%rbp
    1248:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    124c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1250:	90                   	nop
    1251:	5d                   	pop    %rbp
    1252:	c3                   	retq   

0000000000001253 <main>:
    1253:	f3 0f 1e fa          	endbr64 
    1257:	55                   	push   %rbp
    1258:	48 89 e5             	mov    %rsp,%rbp
    125b:	53                   	push   %rbx
    125c:	48 83 ec 58          	sub    $0x58,%rsp
    1260:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1267:	00 00 
    1269:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    126d:	31 c0                	xor    %eax,%eax
    126f:	e8 92 05 00 00       	callq  1806 <_ZN3Car9ShowCountEv>
    1274:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    1278:	f3 0f 10 05 88 0d 00 	movss  0xd88(%rip),%xmm0        # 2008 <_ZStL19piecewise_construct+0x4>
    127f:	00 
    1280:	48 89 c7             	mov    %rax,%rdi
    1283:	e8 0a 03 00 00       	callq  1592 <_ZN3CarC1Ef>
    1288:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    128c:	be 09 00 00 00       	mov    $0x9,%esi
    1291:	f3 0f 10 0d 6f 0d 00 	movss  0xd6f(%rip),%xmm1        # 2008 <_ZStL19piecewise_construct+0x4>
    1298:	00 
    1299:	f3 0f 10 05 6b 0d 00 	movss  0xd6b(%rip),%xmm0        # 200c <_ZStL19piecewise_construct+0x8>
    12a0:	00 
    12a1:	48 89 c7             	mov    %rax,%rdi
    12a4:	e8 49 02 00 00       	callq  14f2 <_ZN3CarC1Effi>
    12a9:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
    12ad:	48 89 c7             	mov    %rax,%rdi
    12b0:	e8 ab 01 00 00       	callq  1460 <_ZN3CarC1Ev>
    12b5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    12b9:	48 89 c7             	mov    %rax,%rdi
    12bc:	e8 9f 01 00 00       	callq  1460 <_ZN3CarC1Ev>
    12c1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12c5:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
    12c9:	8b 45 c0             	mov    -0x40(%rbp),%eax
    12cc:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    12cf:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    12d3:	f3 0f 10 05 35 0d 00 	movss  0xd35(%rip),%xmm0        # 2010 <_ZStL19piecewise_construct+0xc>
    12da:	00 
    12db:	48 89 c7             	mov    %rax,%rdi
    12de:	e8 79 03 00 00       	callq  165c <_ZN3Car8FillFuelEf>
    12e3:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    12e7:	48 89 c7             	mov    %rax,%rdi
    12ea:	e8 8f 03 00 00       	callq  167e <_ZN3Car10AccelerateEv>
    12ef:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    12f3:	48 89 c7             	mov    %rax,%rdi
    12f6:	e8 83 03 00 00       	callq  167e <_ZN3Car10AccelerateEv>
    12fb:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    12ff:	48 89 c7             	mov    %rax,%rdi
    1302:	e8 77 03 00 00       	callq  167e <_ZN3Car10AccelerateEv>
    1307:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    130b:	48 89 c7             	mov    %rax,%rdi
    130e:	e8 6b 03 00 00       	callq  167e <_ZN3Car10AccelerateEv>
    1313:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    1317:	48 89 c7             	mov    %rax,%rdi
    131a:	e8 e1 03 00 00       	callq  1700 <_ZN3Car9DashboardEv>
    131f:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    1323:	48 89 c7             	mov    %rax,%rdi
    1326:	e8 d5 03 00 00       	callq  1700 <_ZN3Car9DashboardEv>
    132b:	e8 d6 04 00 00       	callq  1806 <_ZN3Car9ShowCountEv>
    1330:	bb 00 00 00 00       	mov    $0x0,%ebx
    1335:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    1339:	48 89 c7             	mov    %rax,%rdi
    133c:	e8 d1 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    1341:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1345:	48 89 c7             	mov    %rax,%rdi
    1348:	e8 c5 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    134d:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
    1351:	48 89 c7             	mov    %rax,%rdi
    1354:	e8 b9 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    1359:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    135d:	48 89 c7             	mov    %rax,%rdi
    1360:	e8 ad 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    1365:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    1369:	48 89 c7             	mov    %rax,%rdi
    136c:	e8 a1 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    1371:	89 d8                	mov    %ebx,%eax
    1373:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1377:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    137e:	00 00 
    1380:	74 70                	je     13f2 <main+0x19f>
    1382:	eb 69                	jmp    13ed <main+0x19a>
    1384:	f3 0f 1e fa          	endbr64 
    1388:	48 89 c3             	mov    %rax,%rbx
    138b:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    138f:	48 89 c7             	mov    %rax,%rdi
    1392:	e8 7b 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    1397:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    139b:	48 89 c7             	mov    %rax,%rdi
    139e:	e8 6f 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    13a3:	eb 07                	jmp    13ac <main+0x159>
    13a5:	f3 0f 1e fa          	endbr64 
    13a9:	48 89 c3             	mov    %rax,%rbx
    13ac:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
    13b0:	48 89 c7             	mov    %rax,%rdi
    13b3:	e8 5a 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    13b8:	eb 07                	jmp    13c1 <main+0x16e>
    13ba:	f3 0f 1e fa          	endbr64 
    13be:	48 89 c3             	mov    %rax,%rbx
    13c1:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
    13c5:	48 89 c7             	mov    %rax,%rdi
    13c8:	e8 45 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    13cd:	eb 07                	jmp    13d6 <main+0x183>
    13cf:	f3 0f 1e fa          	endbr64 
    13d3:	48 89 c3             	mov    %rax,%rbx
    13d6:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
    13da:	48 89 c7             	mov    %rax,%rdi
    13dd:	e8 30 02 00 00       	callq  1612 <_ZN3CarD1Ev>
    13e2:	48 89 d8             	mov    %rbx,%rax
    13e5:	48 89 c7             	mov    %rax,%rdi
    13e8:	e8 43 fd ff ff       	callq  1130 <_Unwind_Resume@plt>
    13ed:	e8 0e fd ff ff       	callq  1100 <__stack_chk_fail@plt>
    13f2:	48 83 c4 58          	add    $0x58,%rsp
    13f6:	5b                   	pop    %rbx
    13f7:	5d                   	pop    %rbp
    13f8:	c3                   	retq   

00000000000013f9 <_Z41__static_initialization_and_destruction_0ii>:
    13f9:	f3 0f 1e fa          	endbr64 
    13fd:	55                   	push   %rbp
    13fe:	48 89 e5             	mov    %rsp,%rbp
    1401:	48 83 ec 10          	sub    $0x10,%rsp
    1405:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1408:	89 75 f8             	mov    %esi,-0x8(%rbp)
    140b:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    140f:	75 32                	jne    1443 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    1411:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    1418:	75 29                	jne    1443 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    141a:	48 8d 3d 30 2d 00 00 	lea    0x2d30(%rip),%rdi        # 4151 <_ZStL8__ioinit>
    1421:	e8 ea fc ff ff       	callq  1110 <_ZNSt8ios_base4InitC1Ev@plt>
    1426:	48 8d 15 db 2b 00 00 	lea    0x2bdb(%rip),%rdx        # 4008 <__dso_handle>
    142d:	48 8d 35 1d 2d 00 00 	lea    0x2d1d(%rip),%rsi        # 4151 <_ZStL8__ioinit>
    1434:	48 8b 05 bd 2b 00 00 	mov    0x2bbd(%rip),%rax        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    143b:	48 89 c7             	mov    %rax,%rdi
    143e:	e8 8d fc ff ff       	callq  10d0 <__cxa_atexit@plt>
    1443:	90                   	nop
    1444:	c9                   	leaveq 
    1445:	c3                   	retq   

0000000000001446 <_GLOBAL__sub_I__Z8DrawLineiiii>:
    1446:	f3 0f 1e fa          	endbr64 
    144a:	55                   	push   %rbp
    144b:	48 89 e5             	mov    %rsp,%rbp
    144e:	be ff ff 00 00       	mov    $0xffff,%esi
    1453:	bf 01 00 00 00       	mov    $0x1,%edi
    1458:	e8 9c ff ff ff       	callq  13f9 <_Z41__static_initialization_and_destruction_0ii>
    145d:	5d                   	pop    %rbp
    145e:	c3                   	retq   
    145f:	90                   	nop

0000000000001460 <_ZN3CarC1Ev>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	55                   	push   %rbp
    1465:	48 89 e5             	mov    %rsp,%rbp
    1468:	48 83 ec 10          	sub    $0x10,%rsp
    146c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1470:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1474:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1478:	f3 0f 11 00          	movss  %xmm0,(%rax)
    147c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1480:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1484:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    1489:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    148d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
    1494:	8b 05 ba 2c 00 00    	mov    0x2cba(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    149a:	83 c0 01             	add    $0x1,%eax
    149d:	89 05 b1 2c 00 00    	mov    %eax,0x2cb1(%rip)        # 4154 <_ZN3Car10totalCountE>
    14a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14a7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14ab:	f3 0f 11 00          	movss  %xmm0,(%rax)
    14af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14b3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14b7:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    14bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14c0:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    14c7:	48 8d 35 47 0b 00 00 	lea    0xb47(%rip),%rsi        # 2015 <_ZStL19piecewise_construct+0x1>
    14ce:	48 8d 3d 6b 2b 00 00 	lea    0x2b6b(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    14d5:	e8 06 fc ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    14da:	48 89 c2             	mov    %rax,%rdx
    14dd:	48 8b 05 ec 2a 00 00 	mov    0x2aec(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    14e4:	48 89 c6             	mov    %rax,%rsi
    14e7:	48 89 d7             	mov    %rdx,%rdi
    14ea:	e8 01 fc ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    14ef:	90                   	nop
    14f0:	c9                   	leaveq 
    14f1:	c3                   	retq   

00000000000014f2 <_ZN3CarC1Effi>:
    14f2:	f3 0f 1e fa          	endbr64 
    14f6:	55                   	push   %rbp
    14f7:	48 89 e5             	mov    %rsp,%rbp
    14fa:	48 83 ec 20          	sub    $0x20,%rsp
    14fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1502:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    1507:	f3 0f 11 4d f0       	movss  %xmm1,-0x10(%rbp)
    150c:	89 75 ec             	mov    %esi,-0x14(%rbp)
    150f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1513:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1517:	f3 0f 11 00          	movss  %xmm0,(%rax)
    151b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    151f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1523:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    1528:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    152c:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
    1533:	8b 05 1b 2c 00 00    	mov    0x2c1b(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    1539:	83 c0 01             	add    $0x1,%eax
    153c:	89 05 12 2c 00 00    	mov    %eax,0x2c12(%rip)        # 4154 <_ZN3Car10totalCountE>
    1542:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1546:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    154b:	f3 0f 11 00          	movss  %xmm0,(%rax)
    154f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1553:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
    1558:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    155d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1561:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1564:	89 50 08             	mov    %edx,0x8(%rax)
    1567:	48 8d 35 bb 0a 00 00 	lea    0xabb(%rip),%rsi        # 2029 <_ZStL19piecewise_construct+0x15>
    156e:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1575:	e8 66 fb ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    157a:	48 89 c2             	mov    %rax,%rdx
    157d:	48 8b 05 4c 2a 00 00 	mov    0x2a4c(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1584:	48 89 c6             	mov    %rax,%rsi
    1587:	48 89 d7             	mov    %rdx,%rdi
    158a:	e8 61 fb ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    158f:	90                   	nop
    1590:	c9                   	leaveq 
    1591:	c3                   	retq   

0000000000001592 <_ZN3CarC1Ef>:
    1592:	f3 0f 1e fa          	endbr64 
    1596:	55                   	push   %rbp
    1597:	48 89 e5             	mov    %rsp,%rbp
    159a:	48 83 ec 10          	sub    $0x10,%rsp
    159e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    15a2:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    15a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15af:	f3 0f 11 00          	movss  %xmm0,(%rax)
    15b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15b7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15bb:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    15c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15c4:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
    15cb:	8b 05 83 2b 00 00    	mov    0x2b83(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    15d1:	83 c0 01             	add    $0x1,%eax
    15d4:	89 05 7a 2b 00 00    	mov    %eax,0x2b7a(%rip)        # 4154 <_ZN3Car10totalCountE>
    15da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15de:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    15e3:	f3 0f 11 00          	movss  %xmm0,(%rax)
    15e7:	48 8d 35 4f 0a 00 00 	lea    0xa4f(%rip),%rsi        # 203d <_ZStL19piecewise_construct+0x29>
    15ee:	48 8d 3d 4b 2a 00 00 	lea    0x2a4b(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    15f5:	e8 e6 fa ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    15fa:	48 89 c2             	mov    %rax,%rdx
    15fd:	48 8b 05 cc 29 00 00 	mov    0x29cc(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1604:	48 89 c6             	mov    %rax,%rsi
    1607:	48 89 d7             	mov    %rdx,%rdi
    160a:	e8 e1 fa ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    160f:	90                   	nop
    1610:	c9                   	leaveq 
    1611:	c3                   	retq   

0000000000001612 <_ZN3CarD1Ev>:
    1612:	f3 0f 1e fa          	endbr64 
    1616:	55                   	push   %rbp
    1617:	48 89 e5             	mov    %rsp,%rbp
    161a:	48 83 ec 10          	sub    $0x10,%rsp
    161e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1622:	8b 05 2c 2b 00 00    	mov    0x2b2c(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    1628:	83 e8 01             	sub    $0x1,%eax
    162b:	89 05 23 2b 00 00    	mov    %eax,0x2b23(%rip)        # 4154 <_ZN3Car10totalCountE>
    1631:	48 8d 35 1e 0a 00 00 	lea    0xa1e(%rip),%rsi        # 2056 <_ZStL19piecewise_construct+0x42>
    1638:	48 8d 3d 01 2a 00 00 	lea    0x2a01(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    163f:	e8 9c fa ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1644:	48 89 c2             	mov    %rax,%rdx
    1647:	48 8b 05 82 29 00 00 	mov    0x2982(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    164e:	48 89 c6             	mov    %rax,%rsi
    1651:	48 89 d7             	mov    %rdx,%rdi
    1654:	e8 97 fa ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    1659:	90                   	nop
    165a:	c9                   	leaveq 
    165b:	c3                   	retq   

000000000000165c <_ZN3Car8FillFuelEf>:
    165c:	f3 0f 1e fa          	endbr64 
    1660:	55                   	push   %rbp
    1661:	48 89 e5             	mov    %rsp,%rbp
    1664:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1668:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    166d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1671:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    1676:	f3 0f 11 00          	movss  %xmm0,(%rax)
    167a:	90                   	nop
    167b:	5d                   	pop    %rbp
    167c:	c3                   	retq   
    167d:	90                   	nop

000000000000167e <_ZN3Car10AccelerateEv>:
    167e:	f3 0f 1e fa          	endbr64 
    1682:	55                   	push   %rbp
    1683:	48 89 e5             	mov    %rsp,%rbp
    1686:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    168a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    168e:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
    1693:	f3 0f 10 05 f9 09 00 	movss  0x9f9(%rip),%xmm0        # 2094 <_ZStL19piecewise_construct+0x80>
    169a:	00 
    169b:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    169f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16a3:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    16a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16ac:	f3 0f 10 00          	movss  (%rax),%xmm0
    16b0:	f3 0f 10 0d e0 09 00 	movss  0x9e0(%rip),%xmm1        # 2098 <_ZStL19piecewise_construct+0x84>
    16b7:	00 
    16b8:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    16bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16c0:	f3 0f 11 00          	movss  %xmm0,(%rax)
    16c4:	90                   	nop
    16c5:	5d                   	pop    %rbp
    16c6:	c3                   	retq   
    16c7:	90                   	nop

00000000000016c8 <_ZN3Car5BrakeEv>:
    16c8:	f3 0f 1e fa          	endbr64 
    16cc:	55                   	push   %rbp
    16cd:	48 89 e5             	mov    %rsp,%rbp
    16d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    16d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16d8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16dc:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
    16e1:	90                   	nop
    16e2:	5d                   	pop    %rbp
    16e3:	c3                   	retq   

00000000000016e4 <_ZN3Car13AddPassengersEi>:
    16e4:	f3 0f 1e fa          	endbr64 
    16e8:	55                   	push   %rbp
    16e9:	48 89 e5             	mov    %rsp,%rbp
    16ec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    16f0:	89 75 f4             	mov    %esi,-0xc(%rbp)
    16f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16f7:	8b 55 f4             	mov    -0xc(%rbp),%edx
    16fa:	89 50 08             	mov    %edx,0x8(%rax)
    16fd:	90                   	nop
    16fe:	5d                   	pop    %rbp
    16ff:	c3                   	retq   

0000000000001700 <_ZN3Car9DashboardEv>:
    1700:	f3 0f 1e fa          	endbr64 
    1704:	55                   	push   %rbp
    1705:	48 89 e5             	mov    %rsp,%rbp
    1708:	48 83 ec 10          	sub    $0x10,%rsp
    170c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1710:	48 8d 35 56 09 00 00 	lea    0x956(%rip),%rsi        # 206d <_ZStL19piecewise_construct+0x59>
    1717:	48 8d 3d 22 29 00 00 	lea    0x2922(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    171e:	e8 bd f9 ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1723:	48 89 c2             	mov    %rax,%rdx
    1726:	8b 05 28 2a 00 00    	mov    0x2a28(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    172c:	89 c6                	mov    %eax,%esi
    172e:	48 89 d7             	mov    %rdx,%rdi
    1731:	e8 ea f9 ff ff       	callq  1120 <_ZNSolsEi@plt>
    1736:	48 89 c2             	mov    %rax,%rdx
    1739:	48 8b 05 90 28 00 00 	mov    0x2890(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1740:	48 89 c6             	mov    %rax,%rsi
    1743:	48 89 d7             	mov    %rdx,%rdi
    1746:	e8 a5 f9 ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    174b:	48 8d 35 27 09 00 00 	lea    0x927(%rip),%rsi        # 2079 <_ZStL19piecewise_construct+0x65>
    1752:	48 8d 3d e7 28 00 00 	lea    0x28e7(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1759:	e8 82 f9 ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    175e:	48 89 c2             	mov    %rax,%rdx
    1761:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1765:	8b 00                	mov    (%rax),%eax
    1767:	66 0f 6e c0          	movd   %eax,%xmm0
    176b:	48 89 d7             	mov    %rdx,%rdi
    176e:	e8 4d f9 ff ff       	callq  10c0 <_ZNSolsEf@plt>
    1773:	48 89 c2             	mov    %rax,%rdx
    1776:	48 8b 05 53 28 00 00 	mov    0x2853(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    177d:	48 89 c6             	mov    %rax,%rsi
    1780:	48 89 d7             	mov    %rdx,%rdi
    1783:	e8 68 f9 ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    1788:	48 8d 35 f0 08 00 00 	lea    0x8f0(%rip),%rsi        # 207f <_ZStL19piecewise_construct+0x6b>
    178f:	48 8d 3d aa 28 00 00 	lea    0x28aa(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1796:	e8 45 f9 ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    179b:	48 89 c2             	mov    %rax,%rdx
    179e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17a2:	8b 40 08             	mov    0x8(%rax),%eax
    17a5:	89 c6                	mov    %eax,%esi
    17a7:	48 89 d7             	mov    %rdx,%rdi
    17aa:	e8 71 f9 ff ff       	callq  1120 <_ZNSolsEi@plt>
    17af:	48 89 c2             	mov    %rax,%rdx
    17b2:	48 8b 05 17 28 00 00 	mov    0x2817(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    17b9:	48 89 c6             	mov    %rax,%rsi
    17bc:	48 89 d7             	mov    %rdx,%rdi
    17bf:	e8 2c f9 ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    17c4:	48 8d 35 c0 08 00 00 	lea    0x8c0(%rip),%rsi        # 208b <_ZStL19piecewise_construct+0x77>
    17cb:	48 8d 3d 6e 28 00 00 	lea    0x286e(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    17d2:	e8 09 f9 ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    17d7:	48 89 c2             	mov    %rax,%rdx
    17da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17de:	8b 40 04             	mov    0x4(%rax),%eax
    17e1:	66 0f 6e c0          	movd   %eax,%xmm0
    17e5:	48 89 d7             	mov    %rdx,%rdi
    17e8:	e8 d3 f8 ff ff       	callq  10c0 <_ZNSolsEf@plt>
    17ed:	48 89 c2             	mov    %rax,%rdx
    17f0:	48 8b 05 d9 27 00 00 	mov    0x27d9(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    17f7:	48 89 c6             	mov    %rax,%rsi
    17fa:	48 89 d7             	mov    %rdx,%rdi
    17fd:	e8 ee f8 ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    1802:	90                   	nop
    1803:	c9                   	leaveq 
    1804:	c3                   	retq   
    1805:	90                   	nop

0000000000001806 <_ZN3Car9ShowCountEv>:
    1806:	f3 0f 1e fa          	endbr64 
    180a:	55                   	push   %rbp
    180b:	48 89 e5             	mov    %rsp,%rbp
    180e:	48 8d 35 58 08 00 00 	lea    0x858(%rip),%rsi        # 206d <_ZStL19piecewise_construct+0x59>
    1815:	48 8d 3d 24 28 00 00 	lea    0x2824(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    181c:	e8 bf f8 ff ff       	callq  10e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1821:	48 89 c2             	mov    %rax,%rdx
    1824:	8b 05 2a 29 00 00    	mov    0x292a(%rip),%eax        # 4154 <_ZN3Car10totalCountE>
    182a:	89 c6                	mov    %eax,%esi
    182c:	48 89 d7             	mov    %rdx,%rdi
    182f:	e8 ec f8 ff ff       	callq  1120 <_ZNSolsEi@plt>
    1834:	48 89 c2             	mov    %rax,%rdx
    1837:	48 8b 05 92 27 00 00 	mov    0x2792(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    183e:	48 89 c6             	mov    %rax,%rsi
    1841:	48 89 d7             	mov    %rdx,%rdi
    1844:	e8 a7 f8 ff ff       	callq  10f0 <_ZNSolsEPFRSoS_E@plt>
    1849:	90                   	nop
    184a:	5d                   	pop    %rbp
    184b:	c3                   	retq   

000000000000184c <_Z41__static_initialization_and_destruction_0ii>:
    184c:	f3 0f 1e fa          	endbr64 
    1850:	55                   	push   %rbp
    1851:	48 89 e5             	mov    %rsp,%rbp
    1854:	48 83 ec 10          	sub    $0x10,%rsp
    1858:	89 7d fc             	mov    %edi,-0x4(%rbp)
    185b:	89 75 f8             	mov    %esi,-0x8(%rbp)
    185e:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1862:	75 32                	jne    1896 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    1864:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    186b:	75 29                	jne    1896 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    186d:	48 8d 3d e4 28 00 00 	lea    0x28e4(%rip),%rdi        # 4158 <_ZStL8__ioinit>
    1874:	e8 97 f8 ff ff       	callq  1110 <_ZNSt8ios_base4InitC1Ev@plt>
    1879:	48 8d 15 88 27 00 00 	lea    0x2788(%rip),%rdx        # 4008 <__dso_handle>
    1880:	48 8d 35 d1 28 00 00 	lea    0x28d1(%rip),%rsi        # 4158 <_ZStL8__ioinit>
    1887:	48 8b 05 6a 27 00 00 	mov    0x276a(%rip),%rax        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    188e:	48 89 c7             	mov    %rax,%rdi
    1891:	e8 3a f8 ff ff       	callq  10d0 <__cxa_atexit@plt>
    1896:	90                   	nop
    1897:	c9                   	leaveq 
    1898:	c3                   	retq   

0000000000001899 <_GLOBAL__sub_I__ZN3Car10totalCountE>:
    1899:	f3 0f 1e fa          	endbr64 
    189d:	55                   	push   %rbp
    189e:	48 89 e5             	mov    %rsp,%rbp
    18a1:	be ff ff 00 00       	mov    $0xffff,%esi
    18a6:	bf 01 00 00 00       	mov    $0x1,%edi
    18ab:	e8 9c ff ff ff       	callq  184c <_Z41__static_initialization_and_destruction_0ii>
    18b0:	5d                   	pop    %rbp
    18b1:	c3                   	retq   
    18b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    18b9:	00 00 00 
    18bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000018c0 <__libc_csu_init>:
    18c0:	f3 0f 1e fa          	endbr64 
    18c4:	41 57                	push   %r15
    18c6:	4c 8d 3d 73 24 00 00 	lea    0x2473(%rip),%r15        # 3d40 <__frame_dummy_init_array_entry>
    18cd:	41 56                	push   %r14
    18cf:	49 89 d6             	mov    %rdx,%r14
    18d2:	41 55                	push   %r13
    18d4:	49 89 f5             	mov    %rsi,%r13
    18d7:	41 54                	push   %r12
    18d9:	41 89 fc             	mov    %edi,%r12d
    18dc:	55                   	push   %rbp
    18dd:	48 8d 2d 74 24 00 00 	lea    0x2474(%rip),%rbp        # 3d58 <__do_global_dtors_aux_fini_array_entry>
    18e4:	53                   	push   %rbx
    18e5:	4c 29 fd             	sub    %r15,%rbp
    18e8:	48 83 ec 08          	sub    $0x8,%rsp
    18ec:	e8 0f f7 ff ff       	callq  1000 <_init>
    18f1:	48 c1 fd 03          	sar    $0x3,%rbp
    18f5:	74 1f                	je     1916 <__libc_csu_init+0x56>
    18f7:	31 db                	xor    %ebx,%ebx
    18f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1900:	4c 89 f2             	mov    %r14,%rdx
    1903:	4c 89 ee             	mov    %r13,%rsi
    1906:	44 89 e7             	mov    %r12d,%edi
    1909:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    190d:	48 83 c3 01          	add    $0x1,%rbx
    1911:	48 39 dd             	cmp    %rbx,%rbp
    1914:	75 ea                	jne    1900 <__libc_csu_init+0x40>
    1916:	48 83 c4 08          	add    $0x8,%rsp
    191a:	5b                   	pop    %rbx
    191b:	5d                   	pop    %rbp
    191c:	41 5c                	pop    %r12
    191e:	41 5d                	pop    %r13
    1920:	41 5e                	pop    %r14
    1922:	41 5f                	pop    %r15
    1924:	c3                   	retq   
    1925:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    192c:	00 00 00 00 

0000000000001930 <__libc_csu_fini>:
    1930:	f3 0f 1e fa          	endbr64 
    1934:	c3                   	retq   

Disassembly of section .fini:

0000000000001938 <_fini>:
    1938:	f3 0f 1e fa          	endbr64 
    193c:	48 83 ec 08          	sub    $0x8,%rsp
    1940:	48 83 c4 08          	add    $0x8,%rsp
    1944:	c3                   	retq   
