
hello:     file format elf64-x86-64


Disassembly of section .init:

0000000000400460 <_init>:
  400460:	48 83 ec 08          	sub    $0x8,%rsp
  400464:	48 8b 05 8d 0b 20 00 	mov    0x200b8d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40046b:	48 85 c0             	test   %rax,%rax
  40046e:	74 05                	je     400475 <_init+0x15>
  400470:	e8 5b 00 00 00       	callq  4004d0 <__libc_start_main@plt+0x10>
  400475:	48 83 c4 08          	add    $0x8,%rsp
  400479:	c3                   	retq   

Disassembly of section .plt:

0000000000400480 <putchar@plt-0x10>:
  400480:	ff 35 82 0b 20 00    	pushq  0x200b82(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400486:	ff 25 84 0b 20 00    	jmpq   *0x200b84(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40048c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400490 <putchar@plt>:
  400490:	ff 25 82 0b 20 00    	jmpq   *0x200b82(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400496:	68 00 00 00 00       	pushq  $0x0
  40049b:	e9 e0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004a0 <__stack_chk_fail@plt>:
  4004a0:	ff 25 7a 0b 20 00    	jmpq   *0x200b7a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004a6:	68 01 00 00 00       	pushq  $0x1
  4004ab:	e9 d0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004b0 <printf@plt>:
  4004b0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004b6:	68 02 00 00 00       	pushq  $0x2
  4004bb:	e9 c0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004c6:	68 03 00 00 00       	pushq  $0x3
  4004cb:	e9 b0 ff ff ff       	jmpq   400480 <_init+0x20>

Disassembly of section .plt.got:

00000000004004d0 <.plt.got>:
  4004d0:	ff 25 22 0b 20 00    	jmpq   *0x200b22(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004e0 <_start>:
  4004e0:	31 ed                	xor    %ebp,%ebp
  4004e2:	49 89 d1             	mov    %rdx,%r9
  4004e5:	5e                   	pop    %rsi
  4004e6:	48 89 e2             	mov    %rsp,%rdx
  4004e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004ed:	50                   	push   %rax
  4004ee:	54                   	push   %rsp
  4004ef:	49 c7 c0 c0 08 40 00 	mov    $0x4008c0,%r8
  4004f6:	48 c7 c1 50 08 40 00 	mov    $0x400850,%rcx
  4004fd:	48 c7 c7 f5 07 40 00 	mov    $0x4007f5,%rdi
  400504:	e8 b7 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400509:	f4                   	hlt    
  40050a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400510 <deregister_tm_clones>:
  400510:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400515:	55                   	push   %rbp
  400516:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40051c:	48 83 f8 0e          	cmp    $0xe,%rax
  400520:	48 89 e5             	mov    %rsp,%rbp
  400523:	76 1b                	jbe    400540 <deregister_tm_clones+0x30>
  400525:	b8 00 00 00 00       	mov    $0x0,%eax
  40052a:	48 85 c0             	test   %rax,%rax
  40052d:	74 11                	je     400540 <deregister_tm_clones+0x30>
  40052f:	5d                   	pop    %rbp
  400530:	bf 48 10 60 00       	mov    $0x601048,%edi
  400535:	ff e0                	jmpq   *%rax
  400537:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40053e:	00 00 
  400540:	5d                   	pop    %rbp
  400541:	c3                   	retq   
  400542:	0f 1f 40 00          	nopl   0x0(%rax)
  400546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40054d:	00 00 00 

0000000000400550 <register_tm_clones>:
  400550:	be 48 10 60 00       	mov    $0x601048,%esi
  400555:	55                   	push   %rbp
  400556:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40055d:	48 c1 fe 03          	sar    $0x3,%rsi
  400561:	48 89 e5             	mov    %rsp,%rbp
  400564:	48 89 f0             	mov    %rsi,%rax
  400567:	48 c1 e8 3f          	shr    $0x3f,%rax
  40056b:	48 01 c6             	add    %rax,%rsi
  40056e:	48 d1 fe             	sar    %rsi
  400571:	74 15                	je     400588 <register_tm_clones+0x38>
  400573:	b8 00 00 00 00       	mov    $0x0,%eax
  400578:	48 85 c0             	test   %rax,%rax
  40057b:	74 0b                	je     400588 <register_tm_clones+0x38>
  40057d:	5d                   	pop    %rbp
  40057e:	bf 48 10 60 00       	mov    $0x601048,%edi
  400583:	ff e0                	jmpq   *%rax
  400585:	0f 1f 00             	nopl   (%rax)
  400588:	5d                   	pop    %rbp
  400589:	c3                   	retq   
  40058a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400590 <__do_global_dtors_aux>:
  400590:	80 3d b1 0a 20 00 00 	cmpb   $0x0,0x200ab1(%rip)        # 601048 <__TMC_END__>
  400597:	75 11                	jne    4005aa <__do_global_dtors_aux+0x1a>
  400599:	55                   	push   %rbp
  40059a:	48 89 e5             	mov    %rsp,%rbp
  40059d:	e8 6e ff ff ff       	callq  400510 <deregister_tm_clones>
  4005a2:	5d                   	pop    %rbp
  4005a3:	c6 05 9e 0a 20 00 01 	movb   $0x1,0x200a9e(%rip)        # 601048 <__TMC_END__>
  4005aa:	f3 c3                	repz retq 
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <frame_dummy>:
  4005b0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005b5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005b9:	75 05                	jne    4005c0 <frame_dummy+0x10>
  4005bb:	eb 93                	jmp    400550 <register_tm_clones>
  4005bd:	0f 1f 00             	nopl   (%rax)
  4005c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c5:	48 85 c0             	test   %rax,%rax
  4005c8:	74 f1                	je     4005bb <frame_dummy+0xb>
  4005ca:	55                   	push   %rbp
  4005cb:	48 89 e5             	mov    %rsp,%rbp
  4005ce:	ff d0                	callq  *%rax
  4005d0:	5d                   	pop    %rbp
  4005d1:	e9 7a ff ff ff       	jmpq   400550 <register_tm_clones>

00000000004005d6 <show_bytes>:
  4005d6:	55                   	push   %rbp
  4005d7:	48 89 e5             	mov    %rsp,%rbp
  4005da:	48 83 ec 20          	sub    $0x20,%rsp
  4005de:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4005e2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  4005e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4005ec:	eb 28                	jmp    400616 <show_bytes+0x40>
  4005ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4005f1:	48 63 d0             	movslq %eax,%rdx
  4005f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4005f8:	48 01 d0             	add    %rdx,%rax
  4005fb:	0f b6 00             	movzbl (%rax),%eax
  4005fe:	0f b6 c0             	movzbl %al,%eax
  400601:	89 c6                	mov    %eax,%esi
  400603:	bf d8 08 40 00       	mov    $0x4008d8,%edi
  400608:	b8 00 00 00 00       	mov    $0x0,%eax
  40060d:	e8 9e fe ff ff       	callq  4004b0 <printf@plt>
  400612:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400616:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400619:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  40061c:	7c d0                	jl     4005ee <show_bytes+0x18>
  40061e:	bf 0a 00 00 00       	mov    $0xa,%edi
  400623:	e8 68 fe ff ff       	callq  400490 <putchar@plt>
  400628:	90                   	nop
  400629:	c9                   	leaveq 
  40062a:	c3                   	retq   

000000000040062b <show_int>:
  40062b:	55                   	push   %rbp
  40062c:	48 89 e5             	mov    %rsp,%rbp
  40062f:	48 83 ec 10          	sub    $0x10,%rsp
  400633:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400636:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  40063a:	be 04 00 00 00       	mov    $0x4,%esi
  40063f:	48 89 c7             	mov    %rax,%rdi
  400642:	e8 8f ff ff ff       	callq  4005d6 <show_bytes>
  400647:	90                   	nop
  400648:	c9                   	leaveq 
  400649:	c3                   	retq   

000000000040064a <show_float>:
  40064a:	55                   	push   %rbp
  40064b:	48 89 e5             	mov    %rsp,%rbp
  40064e:	48 83 ec 10          	sub    $0x10,%rsp
  400652:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  400657:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  40065b:	be 04 00 00 00       	mov    $0x4,%esi
  400660:	48 89 c7             	mov    %rax,%rdi
  400663:	e8 6e ff ff ff       	callq  4005d6 <show_bytes>
  400668:	90                   	nop
  400669:	c9                   	leaveq 
  40066a:	c3                   	retq   

000000000040066b <show_pointer>:
  40066b:	55                   	push   %rbp
  40066c:	48 89 e5             	mov    %rsp,%rbp
  40066f:	48 83 ec 10          	sub    $0x10,%rsp
  400673:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400677:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  40067b:	be 08 00 00 00       	mov    $0x8,%esi
  400680:	48 89 c7             	mov    %rax,%rdi
  400683:	e8 4e ff ff ff       	callq  4005d6 <show_bytes>
  400688:	90                   	nop
  400689:	c9                   	leaveq 
  40068a:	c3                   	retq   

000000000040068b <arith>:
  40068b:	55                   	push   %rbp
  40068c:	48 89 e5             	mov    %rsp,%rbp
  40068f:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400692:	89 75 e8             	mov    %esi,-0x18(%rbp)
  400695:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  400698:	8b 55 ec             	mov    -0x14(%rbp),%edx
  40069b:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40069e:	01 d0                	add    %edx,%eax
  4006a0:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4006a3:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4006a6:	89 d0                	mov    %edx,%eax
  4006a8:	01 c0                	add    %eax,%eax
  4006aa:	01 d0                	add    %edx,%eax
  4006ac:	c1 e0 04             	shl    $0x4,%eax
  4006af:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4006b2:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4006b5:	0f b7 c0             	movzwl %ax,%eax
  4006b8:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4006bb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4006be:	0f af 45 f8          	imul   -0x8(%rbp),%eax
  4006c2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4006c5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006c8:	5d                   	pop    %rbp
  4006c9:	c3                   	retq   

00000000004006ca <sotre_prob>:
  4006ca:	55                   	push   %rbp
  4006cb:	48 89 e5             	mov    %rsp,%rbp
  4006ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006d2:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4006d5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4006d9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4006dc:	48 0f af 45 e8       	imul   -0x18(%rbp),%rax
  4006e1:	48 89 c2             	mov    %rax,%rdx
  4006e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006e8:	48 89 10             	mov    %rdx,(%rax)
  4006eb:	90                   	nop
  4006ec:	5d                   	pop    %rbp
  4006ed:	c3                   	retq   

00000000004006ee <compare>:
  4006ee:	55                   	push   %rbp
  4006ef:	48 89 e5             	mov    %rsp,%rbp
  4006f2:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4006f5:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4006f8:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  4006fc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006ff:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  400702:	73 0b                	jae    40070f <compare+0x21>
  400704:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400708:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40070b:	89 10                	mov    %edx,(%rax)
  40070d:	eb 09                	jmp    400718 <compare+0x2a>
  40070f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400713:	8b 55 f8             	mov    -0x8(%rbp),%edx
  400716:	89 10                	mov    %edx,(%rax)
  400718:	90                   	nop
  400719:	5d                   	pop    %rbp
  40071a:	c3                   	retq   

000000000040071b <arithDivide>:
  40071b:	55                   	push   %rbp
  40071c:	48 89 e5             	mov    %rsp,%rbp
  40071f:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400722:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400725:	8d 50 03             	lea    0x3(%rax),%edx
  400728:	85 c0                	test   %eax,%eax
  40072a:	0f 48 c2             	cmovs  %edx,%eax
  40072d:	c1 f8 02             	sar    $0x2,%eax
  400730:	5d                   	pop    %rbp
  400731:	c3                   	retq   

0000000000400732 <test1>:
  400732:	55                   	push   %rbp
  400733:	48 89 e5             	mov    %rsp,%rbp
  400736:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400739:	89 75 e8             	mov    %esi,-0x18(%rbp)
  40073c:	8b 55 ec             	mov    -0x14(%rbp),%edx
  40073f:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400742:	01 d0                	add    %edx,%eax
  400744:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400747:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
  40074b:	7e 1e                	jle    40076b <test1+0x39>
  40074d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400750:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  400753:	7d 0b                	jge    400760 <test1+0x2e>
  400755:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400758:	2b 45 e8             	sub    -0x18(%rbp),%eax
  40075b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40075e:	eb 1a                	jmp    40077a <test1+0x48>
  400760:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400763:	33 45 e8             	xor    -0x18(%rbp),%eax
  400766:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400769:	eb 0f                	jmp    40077a <test1+0x48>
  40076b:	83 7d e8 fe          	cmpl   $0xfffffffe,-0x18(%rbp)
  40076f:	7d 09                	jge    40077a <test1+0x48>
  400771:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400774:	c1 e0 02             	shl    $0x2,%eax
  400777:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40077a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40077d:	5d                   	pop    %rbp
  40077e:	c3                   	retq   

000000000040077f <switch_eg>:
  40077f:	55                   	push   %rbp
  400780:	48 89 e5             	mov    %rsp,%rbp
  400783:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400786:	89 75 e8             	mov    %esi,-0x18(%rbp)
  400789:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40078c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40078f:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400792:	83 e8 64             	sub    $0x64,%eax
  400795:	83 f8 06             	cmp    $0x6,%eax
  400798:	77 35                	ja     4007cf <switch_eg+0x50>
  40079a:	89 c0                	mov    %eax,%eax
  40079c:	48 8b 04 c5 e0 08 40 	mov    0x4008e0(,%rax,8),%rax
  4007a3:	00 
  4007a4:	ff e0                	jmpq   *%rax
  4007a6:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007a9:	89 d0                	mov    %edx,%eax
  4007ab:	01 c0                	add    %eax,%eax
  4007ad:	01 d0                	add    %edx,%eax
  4007af:	c1 e0 02             	shl    $0x2,%eax
  4007b2:	01 d0                	add    %edx,%eax
  4007b4:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4007b7:	eb 1d                	jmp    4007d6 <switch_eg+0x57>
  4007b9:	83 45 fc 0a          	addl   $0xa,-0x4(%rbp)
  4007bd:	83 45 fc 0b          	addl   $0xb,-0x4(%rbp)
  4007c1:	eb 13                	jmp    4007d6 <switch_eg+0x57>
  4007c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007c6:	0f af 45 fc          	imul   -0x4(%rbp),%eax
  4007ca:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4007cd:	eb 07                	jmp    4007d6 <switch_eg+0x57>
  4007cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4007d6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007d9:	5d                   	pop    %rbp
  4007da:	c3                   	retq   

00000000004007db <change>:
  4007db:	55                   	push   %rbp
  4007dc:	48 89 e5             	mov    %rsp,%rbp
  4007df:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4007e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007e7:	8b 00                	mov    (%rax),%eax
  4007e9:	8d 50 ff             	lea    -0x1(%rax),%edx
  4007ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007f0:	89 10                	mov    %edx,(%rax)
  4007f2:	90                   	nop
  4007f3:	5d                   	pop    %rbp
  4007f4:	c3                   	retq   

00000000004007f5 <main>:
  4007f5:	55                   	push   %rbp
  4007f6:	48 89 e5             	mov    %rsp,%rbp
  4007f9:	48 83 ec 10          	sub    $0x10,%rsp
  4007fd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400804:	00 00 
  400806:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40080a:	31 c0                	xor    %eax,%eax
  40080c:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  400813:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
  400817:	48 89 c7             	mov    %rax,%rdi
  40081a:	e8 bc ff ff ff       	callq  4007db <change>
  40081f:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400822:	89 c6                	mov    %eax,%esi
  400824:	bf 18 09 40 00       	mov    $0x400918,%edi
  400829:	b8 00 00 00 00       	mov    $0x0,%eax
  40082e:	e8 7d fc ff ff       	callq  4004b0 <printf@plt>
  400833:	b8 00 00 00 00       	mov    $0x0,%eax
  400838:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40083c:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400843:	00 00 
  400845:	74 05                	je     40084c <main+0x57>
  400847:	e8 54 fc ff ff       	callq  4004a0 <__stack_chk_fail@plt>
  40084c:	c9                   	leaveq 
  40084d:	c3                   	retq   
  40084e:	66 90                	xchg   %ax,%ax

0000000000400850 <__libc_csu_init>:
  400850:	41 57                	push   %r15
  400852:	41 56                	push   %r14
  400854:	41 89 ff             	mov    %edi,%r15d
  400857:	41 55                	push   %r13
  400859:	41 54                	push   %r12
  40085b:	4c 8d 25 ae 05 20 00 	lea    0x2005ae(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400862:	55                   	push   %rbp
  400863:	48 8d 2d ae 05 20 00 	lea    0x2005ae(%rip),%rbp        # 600e18 <__init_array_end>
  40086a:	53                   	push   %rbx
  40086b:	49 89 f6             	mov    %rsi,%r14
  40086e:	49 89 d5             	mov    %rdx,%r13
  400871:	4c 29 e5             	sub    %r12,%rbp
  400874:	48 83 ec 08          	sub    $0x8,%rsp
  400878:	48 c1 fd 03          	sar    $0x3,%rbp
  40087c:	e8 df fb ff ff       	callq  400460 <_init>
  400881:	48 85 ed             	test   %rbp,%rbp
  400884:	74 20                	je     4008a6 <__libc_csu_init+0x56>
  400886:	31 db                	xor    %ebx,%ebx
  400888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40088f:	00 
  400890:	4c 89 ea             	mov    %r13,%rdx
  400893:	4c 89 f6             	mov    %r14,%rsi
  400896:	44 89 ff             	mov    %r15d,%edi
  400899:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40089d:	48 83 c3 01          	add    $0x1,%rbx
  4008a1:	48 39 eb             	cmp    %rbp,%rbx
  4008a4:	75 ea                	jne    400890 <__libc_csu_init+0x40>
  4008a6:	48 83 c4 08          	add    $0x8,%rsp
  4008aa:	5b                   	pop    %rbx
  4008ab:	5d                   	pop    %rbp
  4008ac:	41 5c                	pop    %r12
  4008ae:	41 5d                	pop    %r13
  4008b0:	41 5e                	pop    %r14
  4008b2:	41 5f                	pop    %r15
  4008b4:	c3                   	retq   
  4008b5:	90                   	nop
  4008b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008bd:	00 00 00 

00000000004008c0 <__libc_csu_fini>:
  4008c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004008c4 <_fini>:
  4008c4:	48 83 ec 08          	sub    $0x8,%rsp
  4008c8:	48 83 c4 08          	add    $0x8,%rsp
  4008cc:	c3                   	retq   
