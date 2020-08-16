TITLE Segundo_Projeto
.MODEL SMALL
.STACK 100H
.DATA	
	X   	dW		?
	n2   	dW		? ;usado para printa objetos
	Y   	dW  	?
	n4   	dW		? ;usado para printa objetos	
	N5		dW		? ;usado para funcao gerencia	
	N6		dW		? ;usado para funcao gerencia		
	N7		dW		? ;usado junto ao movimento do tiro
	N8		dW		? ;usado junto ao movimento do tiro
	N9		dW		? ;usado junto ao movimento do tiro		(gerencia se o tiro esta em movimento ou nao 1- sim 0 - nao)
	N10		dW		? ;usado para funcao gerencia
	N11		dW		? ;usado para funcao gerencia
	N12		dW		? ;usada para indicar se o jogador ganho ou nao
	N13		dW		? ;usada para a funcao morte_alien
	N14		dW		? ;usada para a funcao morte_alien
	N15		DW		? ;usada para funcao score, ela indica os pontos acrescentados ao mator os aliens
	N16		DW		? ;usada para funcao score, ela indica os pontos acrescentados ao mator os aliens
	N17 	DW		? ;usada para funcao score, ela indica os pontos acrescentados ao mator os aliens
	N18 	DW		? ;usada para funcao score, ela indica os pontos acrescentados ao mator os aliens
	N22		DW		? ;usado para controlar a velocidade dos aliens
	MOV_NAVE dw		? ;usada para a funcao genreica nave
	COUNT 	dw		?
	COUNT2	dw		?
	PONTOS	dW		?
	INDICA_VIDA1	dB	?
	INDICA_VIDA2	dB	?
	INDICA_VIDA3	dB	?
	INDP1	dB		?
	INDP2	dB		?
	INDP3	dB		?
	INDP4	dB		?
	INDP5	dB		?
	MSG   	dB		"Space Invaders$"
	MSG1  	dB		"Aperte qualquer tecla para continuar$"
	MSG2  	dB		"SCORE:$"
	MSG3  	dB		"LIVES:$"
	MSG4  	dB		"PARABENS!!!! VOCE VENCEU!!!!$"
	MSG5  	dB		"GAME OVER!$"
	MSG6  	dB		"A - Para jogar novamente",0ah,0dh,"          B - Para fechar$"
	MSG7	db		"Feito por: 	Guilherme Pernicone",0ah,0dh,"				Andre Bonon$"
	MSG8 	dB		"Como jogar:$"
	MSG9 	dB		"A - Move para a esquerda",0ah,0dh,"          D - Move para a direita",0ah,0dh,"          Espaco - Atira$"
	MSG10 	dB		"= 10 Pontos",0ah,0dh,0ah,0dh,"              = 20 Pontos",0ah,0dh,0ah,0dh,"              = 40 Pontos$"
	MSG11  	dB		"Aperte qualquer tecla para jogar$"
	MSG12	DB		"Voce fez:     pts$"
	MORTE			DB	1,1,1,1,1,1,1,1,1,1,1 
					DB	1,1,1,1,1,1,1,1,1,1,1 
					DB	1,1,1,1,1,1,1,1,1,1,1 
					DB	1,1,1,1,1,1,1,1,1,1,1 
					DB	1,1,1,1,1,1,1,1,1,1,1
					
	ATIRA			DB	0,0,0,0,0,0,0,0,0,0,0 
					DB	0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0 
					DB	0,0,0,0,0,0,0,0,0,0,0
					DB	1,0,1,0,1,0,1,0,1,0,1
		
	; X x Y
	PRINT_TIRO1		DB	0,0,0,0,0,1,0,0,0,0,0  ;11 X 5
					DB	0,0,0,0,0,1,0,0,0,0,0
					DB	0,0,0,0,0,1,0,0,0,0,0
					DB	0,0,0,0,0,1,0,0,0,0,0
					DB	0,0,0,0,0,1,0,0,0,0,0
			
	PRINT_NAVE1		DB	0,0,0,0,0,1,0,0,0,0,0  ; 11 x 15
					DB	0,0,0,0,0,1,0,0,0,0,0
					DB	0,0,0,0,1,1,1,0,0,0,0
					DB	0,0,0,0,1,2,1,0,0,0,0
					DB	0,0,0,0,1,2,1,0,0,0,0
					DB	0,1,0,0,1,2,1,0,0,1,0
					DB	0,1,0,0,1,2,1,0,0,1,0
					DB	0,1,0,0,1,1,1,0,0,1,0
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,0,0,1,1,1,0,0,1,1
					DB	1,1,0,0,1,1,1,0,0,1,1
					DB	0,0,0,0,0,1,0,0,0,0,0
					
	PRINT_VIDA1		DB	0,0,0,1,0,0,0,1,0,0,0		;11 X 11
					DB	0,0,1,1,1,0,1,1,1,0,0
					DB	0,1,1,1,1,1,1,1,1,1,0
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1
					DB	0,1,1,1,1,1,1,1,1,1,0
					DB	0,0,1,1,1,1,1,1,1,0,0
					DB	0,0,0,1,1,1,1,1,0,0,0
					DB	0,0,0,0,1,1,1,0,0,0,0
					DB	0,0,0,0,0,1,0,0,0,0,0
					
					;TRATAR TODOS OS ALIENS COMO 15 X 12
	PRINT_ALIEN1	DB	0,0,0,1,1,0,0,0,0,0,1,0,0,0   ;14 X 11
					DB	0,0,0,0,1,1,0,0,0,1,0,0,0,0
					DB	0,0,0,1,1,1,1,1,1,1,1,0,0,0
					DB	0,1,1,1,0,0,1,1,0,0,1,1,1,0
					DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,0,1,1,1,1,1,1,1,1,0,1,1
					DB	1,1,0,1,1,1,1,1,1,1,1,0,1,1
					DB	1,1,0,1,1,0,0,0,0,1,1,0,1,1
					DB	1,1,0,1,1,0,0,0,0,1,1,0,1,1
					DB	0,0,0,0,1,1,0,0,1,1,0,0,0,0
					DB	0,0,0,0,1,1,0,0,1,1,0,0,0,0
	
	PRINT_ALIEN2	DB	0,0,0,1,1,0,0,0,1,1,0,0,0	;13 X 09
					DB	0,1,1,1,1,1,0,1,1,1,1,1,0
					DB	0,1,1,0,0,1,1,1,0,0,1,1,0
					DB	0,1,1,1,1,1,1,1,1,1,1,1,0
					DB	0,1,1,1,1,1,1,1,1,1,1,1,0
					DB	0,1,1,0,1,0,0,0,1,0,1,1,0
					DB	0,1,1,0,0,1,0,1,0,0,1,1,0
					DB	0,1,1,0,0,0,0,0,0,0,1,1,0
					DB	0,1,1,1,1,0,0,0,1,1,1,1,0
					
	PRINT_ALIEN3	DB	0,0,0,0,0,1,1,1,0,0,0,0	;12 X 08
					DB	0,0,0,1,1,1,1,1,1,1,0,0
					DB	0,0,1,1,1,1,1,1,1,1,1,0
					DB	0,1,1,0,1,1,1,1,1,0,1,1
					DB	0,1,1,1,1,1,1,1,1,1,1,1
					DB	0,0,1,1,0,0,1,0,0,1,1,0
					DB	0,1,1,0,0,0,0,0,0,0,1,1
					DB	0,0,1,1,0,0,0,0,0,1,1,0

	PRINT_BARREIRA1	DB	0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0		;31 X 20
					DB	0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0
					DB	0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0
					DB	0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0
					DB	0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
					DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					
	PRINT_BARREIRA2	DB	0,0,0,0,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,0,1,1,0,1,1,0,0,0,0,0,0		;31 X 20
					DB	0,0,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,0,0,0,0,0
					DB	0,0,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,0,0
					DB	0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,0
					DB	0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0
					DB	1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,0,1,1,0,1,1,0,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					
	PRINT_BARREIRA3	DB	0,0,0,0,0,0,1,0,1,0,0,1,1,1,1,0,1,1,1,0,1,1,0,1,1,0,0,0,0,0,0		;31 X 20
					DB	0,0,0,0,1,0,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,0,0,0,0,0,0,0
					DB	0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,0,0
					DB	0,0,0,0,1,1,0,1,1,0,1,1,1,1,0,1,1,1,0,1,1,1,1,0,1,0,0,1,1,0,0
					DB	0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0
					DB	0,1,1,1,1,1,1,1,1,0,1,1,0,1,1,1,0,1,1,1,0,1,1,1,1,0,1,0,1,1,1
					DB	1,1,0,1,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1
					DB	1,1,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,1,1,1,1
					DB	1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1
					DB	1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1
					DB	1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
	
	PRINT_BARREIRA4	DB	0,0,0,0,0,0,1,0,1,0,0,1,1,1,1,0,1,1,1,0,1,1,0,1,0,0,0,0,0,0,0		;31 X 20
					DB	0,0,0,0,1,0,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,0,0,0,0,0,0,0
					DB	0,0,0,1,0,1,1,0,1,0,1,0,1,1,1,1,1,0,1,1,1,1,0,1,1,1,0,1,0,0,0
					DB	0,0,0,0,1,1,0,1,1,0,1,1,1,1,0,1,0,1,0,1,1,1,1,0,1,1,1,1,0,0,0
					DB	0,0,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,1,1,0,1,0,0
					DB	1,0,1,0,1,0,1,1,1,0,1,1,0,1,1,1,0,1,1,1,0,1,0,1,1,1,1,1,1,1,1
					DB	0,1,0,1,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,1,1,1,0,0,1,1,1,0,0
					DB	0,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,0,1,1
					DB	1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,0
					DB	1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1,1,1,1
					DB	1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,1
					DB	1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,1
					DB	0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1
					DB	1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
					DB	1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,1
					DB	1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1
					DB	1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1
					DB	1,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1,0
					DB	1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1
					DB	0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1
	
	PRINT_BARREIRA5	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0		;31 X 20
					DB	0,0,0,0,0,0,1,0,0,1,0,1,0,1,0,0,1,1,0,1,0,0,1,0,0,0,0,0,0,0,0
					DB	0,0,0,1,0,0,1,0,1,0,1,0,0,1,1,1,1,0,0,1,0,1,0,1,0,1,0,0,0,0,0
					DB	0,0,0,0,1,1,0,1,1,0,1,1,0,0,0,0,1,1,0,0,1,1,0,0,0,0,1,0,0,0,0
					DB	0,0,0,0,0,0,1,0,1,0,1,0,1,0,1,1,0,0,1,0,1,0,1,0,1,0,1,0,0,0,0
					DB	0,0,1,0,1,0,1,0,1,0,1,1,0,0,0,1,0,1,0,1,0,1,0,0,0,1,0,0,1,0,0
					DB	1,0,1,1,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,1,1,0,0
					DB	0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0
					DB	1,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0
					DB	0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,0,0
					DB	0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0
					DB	0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0
					DB	0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0
					DB	1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1
					DB	1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0
					DB	1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0
					DB	0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1
.CODE
MAIN 	PROC
MAIN:	MOV 	AX,@DATA		;Move os endereços dos dados salvos na data para AX	   ; reseta o jogo para seu estado inicial
	MOV		DS,AX			;Move o conteudo de AX para DS
	XOR		CX,CX
	MOV		CX,55
	XOR		SI,SI
	LEA		SI,MORTE
	RESET:				; reseta o vetor de aliens
	MOV 	AL,1
	MOV		[SI],AL
	INC		SI
	LOOP	RESET
	
	MOV		INDICA_VIDA1,1
	MOV		INDICA_VIDA2,1
	MOV		INDICA_VIDA3,1
	MOV		INDP1,0			
	MOV		INDP2,0			
	MOV		INDP3,0			
	MOV		INDP4,0				
	MOV		PONTOS,0
	MOV		N12,0
	MOV		N14,3
	MOV		AH,0H			;Inicia o modo video 13h 320 x 200
	MOV		AL,13H
	INT 	10H

	MOV		AH,0FH
	INT		10H
	
	CALL	PRIMEIRA_TELA	; chama a funcao primeira tela
	
	CALL	SEGUNDA_TELA	; chama a funcao segunda tela
CONTVI:; reseta o jogo para o estado anterior a morte
	MOV		N7,150
	MOV		N8,160
	MOV		N9,0
	MOV		N10,50
	MOV		N11,20
	MOV		N15,0
	MOV		N16,0
	MOV		N17,0
	MOV		N18,0
	MOV		N22,2
	MOV		MOV_NAVE,150
	XOR		AX,AX

LOP:MOV		AX,N11
	ADD		AX,72		;adiciona o tamnho do bloco a n11
	CMP     AX,155		;compara para ver se o bloco de aliens atigiu a posicao 155 se sim acaba o jogo
	JL		CONTG
	JMP		GAME_OVER

CONTG:
	MOV		AX,N12
	CMP		AX,55	; compara pra ver se os 55 aliens foram mortoes se for o jogador ganha
	JL		GER
	JMP		VITORIA
GER:CALL 	GERENCIA
	JMP		LOP		;enquanto n12 nao for menor que 55 ou n11 menor que 155 o loop ira continuar
	
GAME_OVER:	;
	CMP		N14,3		; ve se o jogador tem 3 vidas
	JE		VEVIDA1
	
	CMP		N14,2 		; ve se o jogador tem 2 vidas
	JE		VEVIDA2
	
	CMP		N14,1		; ve se o jogador tem 1 vidas
	JE		MORREU		; pula pro fim do jogo
		
VEVIDA1:		; perde uma vida restando 2
	MOV		INDICA_VIDA3,0
	DEC		N14
	JMP		CONTVI
	
VEVIDA2:		; perde uma vida restando 1
	MOV		INDICA_VIDA2,0
	DEC		N14
	JMP		CONTVI
	

MORREU:	
	CALL   CLEAR
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,10
	MOV		DL,14
	INT 	10H

	MOV		AH,9H	
	LEA		DX,MSG5
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,12
	MOV		DL,10
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG12
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,12
	MOV		DL,19
	INT 	10H
	
	MOV		BX,PONTOS
	CALL	SCORE
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,14
	MOV		DL,10
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG6
	INT		21H
	
HH:	MOV		AH,1H
	INT		21H 
	
	CMP		AL,65
	JE		P_MAIN

	CMP		AL,97
	JE		P_MAIN
	
	CMP		AL,66
	JE		FIMMAIN

	CMP		AL,98
	JE		FIMMAIN
	
	JMP		HH

VITORIA:
	CALL   CLEAR
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,10
	MOV		DL,8
	INT 	10H

	MOV		AH,9H	
	LEA		DX,MSG4
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,12
	MOV		DL,10
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG12
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,12
	MOV		DL,19
	INT 	10H
	
	MOV		BX,PONTOS
	CALL	SCORE
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,14
	MOV		DL,10
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG6
	INT		21H
	
H1:	MOV		AH,1H
	INT		21H 
	
	CMP		AL,65
	JE		P_MAIN

	CMP		AL,97
	JE		P_MAIN
	
	CMP		AL,66
	JE		FIMMAIN

	CMP		AL,98
	JE		FIMMAIN
	
	JMP		H1
FIMMAIN:	
	MOV		AH,4CH
	INT 	21H
P_MAIN:JMP MAIN
MAIN 	ENDP
;----------------------------------Primeira tela ---------------------------------------------------------------------------
PRIMEIRA_TELA	PROC
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,10
	MOV		DL,12
	INT 	10H

	MOV		AH,9H	
	LEA		DX,MSG
	INT		21H

	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,12
	MOV		DL,2
	INT 	10H

	MOV		AH,9H
	LEA		DX,MSG1

	INT		21H					;espera o usuario clicar em alguma tecla para pode continuar
	MOV		AH,1h
	INT 	21H
	RET
PRIMEIRA_TELA	ENDP

;----------------------------------Segunda tela ---------------------------------------------------------------------------
SEGUNDA_TELA	PROC
	CALL CLEAR
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,2
	MOV		DL,14
	INT 	10H

	MOV		AH,9H
	LEA		DX,MSG8
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,4
	MOV		DL,10
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG9
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,11
	MOV		DL,14
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG10
	INT		21H
	
	MOV		AH,2H				;Move o cursor de local
	MOV 	DH,19
	MOV		DL,4
	INT 	10H
	
	MOV		AH,9H	
	LEA		DX,MSG11
	INT		21H
	
	MOV		X,90
	MOV		Y,88
	CALL 	PRINT_ALIEN_1		; printa o primeiro alien
	
	MOV		X,90
	MOV		Y,105
	CALL 	PRINT_ALIEN_2		; printa o segundo alien
	
	MOV		X,91
	MOV		Y,120
	CALL 	PRINT_ALIEN_3		; printa o terceiro alien
	
	MOV		AH,1h 		;espera o usuario clicar em alguma tecla para pode continuar
	INT 	21H
	RET
SEGUNDA_TELA	ENDP
;----------------------------------LIMPA TELA ---------------------------------------------------------------------------
CLEAR	PROC	;PROCESSO DE LIMPAR A TELA
	MOV 	AX,0A000H ; endereco do modo grafico
	MOV 	ES, AX;		aponta es para o endereco de video guardado em ax
	XOR 	AX, AX		;Zera ax
	XOR 	DI, DI		;Zera di
	MOV 	CX, 32000 	;inicializa cx com 32000 que corresponde o numero de vezes que ele ira repetir o processo
	cld		;limpa a flag de direcao, incrementando o ponteiro 
	rep stosw	;repete o processo de limpa flag ate cx ser zero. Cx e tratado como word logo e diminuido 2 dele acada repeticao  ; stosw aloca o valor de cx em ax; repete a ultima operacao no caso cld(limpa flag)
	XOR	CX,CX
	RET
CLEAR 	ENDP
;----------------------------------Funcao wait--------------------------------------------------------------------------
WAITT	PROC	;PROCESSO DE LIMPAR A TELA

	MOV		CX,0
	MOV		DX,256
	MOV		AH,86H
	INT		15H ; a funcao 15h em conjunto com ah 86h faz com que o programa faça um delay(o tempo desse delay e indicado por cx e dx)
	RET
WAITT 	ENDP
;----------------------------------GERENCIA -----------------------------------------------------------------------------
GERENCIA	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	PUSH	DI
	CALL  	CLEAR			;Chama a funcao que limpa a tela
	POP		DI
	PUSH	X
	PUSH	Y
	CALL	INFO			;CHAMA FUNCAO que printa vida e socore
	CALL	FORMACAO 		;CHAMA FUNCAO DE PRINTA BARREIRA
	POP		X
	POP		Y
	
	XOR		SI,SI
	LEA		SI,MORTE
	
	MOV		AX,N10			
	MOV		X,AX		;inicia x com o valor de n10
	MOV		AX,N11
	MOV		Y,AX		;inicia y com o valor de n11
	MOV		N5,0
	MOV     N6,0
	MOV		COUNT2,0 
	
	INICIOGPN:
	CMP		N6,0			;compara para ver se e a primeira linha caso seja ira printar o alien 3
	JG		CAL2			; caso nao seja pula para cal2																			
	
	MOV		N15,40			;passa a quantidade de pontos que o alien 3 da ao morrer
	CALL	MATA_ALIEN		; chama a funcao mata alien
	MOV		Bl,[SI]
	CMP		BL,0			; compara se o alien esta morto se estiver pula 
	JE		CONTI
	
	PUSH	SI
	CALL	PRINT_ALIEN_3
	POP		SI
	JMP		CONTI
	
CAL2:
	CMP		N6,2	;compara para ver se e a segunda ou terceira linha caso seja ira printar o alien 2
	JG		CAL3		; caso nao seja pula para cal3
	
	MOV		N15,20	;passa a quantidade de pontos que o alien 2 da ao morrer
	CALL	MATA_ALIEN ; chama a funcao mata alien
	MOV		Bl,[SI]
	CMP		BL,0		; compara se o alien esta morto se estiver pula 
	JE		CONTI
	
	PUSH	SI
	CALL	PRINT_ALIEN_2
	POP		SI
	JMP    	CONTI
	
CAL3:						; como nao nenhuma das linhas acima printa o alien 1
	MOV    	N15,10
	CALL	MATA_ALIEN		;passa a quantidade de pontos que o alien 1 da ao morrer
	MOV		Bl,[SI]			; chama a funcao mata alien
	CMP		BL,0			; compara se o alien esta morto se estiver pula 
	JE		CONTI
	
	PUSH	SI
	CALL	PRINT_ALIEN_1
	POP		SI
	JMP		CONTI
CONTI:
	INC		SI				; incrementa a posicao de si
	ADD		X,20			;incrementa  em 20 a posicao inicial de x
	INC     N5				; incrementa n5 (controla o tamanho de elementos na linha)
	INC		COUNT2			
	CMP		N5,11			;caso tenha 11 elementos na linha ele pula para a linha de baixo
	JL		OGPN
	
	MOV		N5,0			; zera n5
	MOV		AX,N10
	MOV		X,AX			; passa o valor inicial de x denovo para ele
	ADD		Y,15			; incrementa a posicao inicial de y em 15 linhas
	INC		N6				; incrementa n6 (controla o numero de elementos na linha)

OGPN:CMP	COUNT2,55		; compara para ver se percorreu toda a matriz de aliens
	JL		P_INICIOGPN		; se nao pula para iniciopgn
	JMP		CCC
P_INICIOGPN: JMP INICIOGPN

CCC:PUSH	SI
	CALL	GERENCIA_NAVE	;chama a fucao que cuida do movimento da nava
	POP		SI
	MOV		AX,N9			;compara n9(indica se o tiro esta em movimento ou nao)
	CMP		AX,0
	JE      CONTGERENCIA	; caso nao ele continua o movimento dos aliens
	
	SUB		N8,10			; movimenta em 5 linhas o tiro
	MOV		AX,N8			
	CMP		AX,0			; compara se o tiro atingio o limite da tela
	JE      RESTIRO			; caso tenha ele ira ser restado
	JMP     CONTGERENCIA	; caso nao pula para continuar o programa
	
RESTIRO:MOV	N8,160			;reseta a posicao inicial do tiro
	MOV	 	N9,0
	
CONTGERENCIA:
	CALL	DESTROI_PEDRA	; chama a funcao que destroi as pedras
	
	MOV		AX,N12
	CMP		AX,27			;compara se ja mato 27 aliens se sim aumenta a velocidade deles 
	JL	    DDU
	
	MOV		N22,3
	
	MOV		AX,N12
	CMP		AX,40			;compara se ja mato 40 aliens se sim aumenta a velocidade deles 
	JL	    DDU
	
	MOV		N22,4
	
	MOV		AX,N12
	CMP		AX,46			;compara se ja mato 46 aliens se sim aumenta a velocidade deles 
	JL	    DDU
	
	MOV		N22,5

	MOV		AX,N12
	CMP		AX,49			;compara se ja mato 49 aliens se sim aumenta a velocidade deles
	JL	    DDU
	
	MOV		N22,6
	
	MOV		AX,N12
	CMP		AX,50			;compara se ja mato 50 aliens se sim aumenta a velocidade deles
	JL    DDU
	
	MOV		N22,7
	
DDU:
	MOV		AX,N11		;move o valor contindo em n11 que corresponde a atual linha da matriz 320 x 200
	AND		AX,1		;testa se o valor em ax e par, se for par a flag ira retornar 1( ultima operacao logica com resultado igual a zero), se for impar a flag retorna 0(ultima operacao logica com resultado diferente de zero)
	JZ		ANDADIR		;caso a flag seja 1, ou seja par, ela pula
	
	MOV		AX,N10		
	CMP		AX,10			; compara se a posicao atual do conjunto de aliens e maior que 10
	JG		ANDACMP2		; caso n10 for maior que 10 pula
	
	ADD		N11,3			; caso seja menor add a n11 3 posicoes, pula 3 linhas
	JMP		ANDACMP1
	
ANDACMP2:
	MOV		AX,N22
	SUB 	N10,AX		;como n10 e maior que 10 subtrai dele 2(muda a posicao inicial da matriz de aliens)
	JMP		FIMGER			; pula pro fim
	
ANDADIR:	MOV	AX,N10		
	ADD 	AX,225			;adiciona a posicao inicial o tamanho total do bloco de aliens
	CMP		AX,315			;compara se a posicao do bloco de aliens e menor que 315 se for pula 
	JL		ANDACMP1		;se for menor pula
	ADD		N11,3			; caso nao for menor pula 3 linhas 
	JMP		ANDACMP2		
	
ANDACMP1:
	MOV		AX,N22
	ADD		N10,AX	;caso n10 for menor que 315 adiciona 2 posicao no eixo x do bloco de aliens

FIMGER:;CALL WAITT
	MOV		COUNT,0
	PUSH	SI
wat:
	inc COUNT
	CALL 	WAITT   ; chama a funcao de delay
	CMP		COUNT,90	; indica a quantidade de vezes que ira repetir o processo
	JL      wat
	POP		SI
	
	RET
GERENCIA 	ENDP
;----------------------------------GERENCIA NAVE-----------------------------------------------------------------------------
GERENCIA_NAVE	PROC
	PUSH	X
	PUSH	Y
	MOV		AX,MOV_NAVE		;inicia ax com a posicao da nave no eixo X
	MOV		X,AX			;passa a posicao da nave para X
	MOV		Y,170			;fixa a nava no eixo Y
	CALL	PRINT_NAVE		;chama a fucao que printa a nave
	POP		X
	POP		Y
	
	MOV   AH,01H   ;LÊ O TECLADO
	INT   16H
	JNZ   TECLOU   ;HÁ TECLA PRESSIONADA
	JMP		CONTMOV

	TECLOU:
	MOV   AH,00H   ;OBTÉM OS CÓDIGOS ASCCI DA TECLA PRESSIONADA 
	INT   16H
	
	; MOV		AH,1H
	; INT		21H
CONTMOV:
	CMP		AL,32			;compara para ver se o espaco foi pressionado, caso seja a nave atira
	JE		VAITIRO
	
	CMP		AL,65			;compara para ver se a A tecla foi pressionado, caso seja a nave vai para esquerda
	JE		P_VAIESQUERDA

	CMP		AL,97			;compara para ver se a A tecla foi pressionado, caso seja a nave vai para esquerda
	JE		P_VAIESQUERDA
	
	CMP		AL,68			;compara para ver se a tecla B foi pressionado, caso seja a nave vai para direita
	JE		P_VAIDIREITA

	CMP		AL,100			;compara para ver se a tecla B foi pressionado, caso seja a nave vai para direita
	JE		P_VAIDIREITA
	
	MOV		AX,N9			;Caso nenhuma tecla foi precionada, compara para saber se o a um tiro em movimento ou nao, n9 = 1 tiro em movimento, n9 = 0 nao ha tiro em movimento
	CMP		AX,1
	JE      VAITIRO			
	
	JMP 	FIMGERN			; caso nenhuma tecla foi preciona e nao ha um tiro em movimento ele pula para fim

P_VAIESQUERDA:	JMP VAIESQUERDA
P_VAIDIREITA:	JMP VAIDIREITA
VAITIRO:;funcao para quando nao have nenhuma reacao do jogador mas a um tiro em movimento
	MOV	N9,1			;move 1 para n9 para dizer que a um tiro em movimento
	MOV	AX,N8				;move n8 para ax, n8 representa a posicao  no eixo Y do tiro
	CMP		AX,160			;compara para ver se o tiro esta na nave, caso esteja vai para funcao printa um novo tiro, caso nao esteja quer dizer que o tiro ja esta em movimento e continua a funcao
	JE      NOVOTIRO
	PUSH	X
	PUSH	Y
	MOV		AX,N7			;move n7(eixo X da nave na hora do tiro) para ax
	MOV		X,AX			;joga a posicao do tiro no eixo X para a variavel X
	MOV		AX,N8			
	MOV   	Y,AX			;move a posicao do eixo Y do tiro para a variavel Y
	CALL	PRINT_TIRO		;printa tiro com a posicao atualizada
	POP		X				
	POP     Y
	JMP		FIMGERN			; pula para o fim
	
NOVOTIRO:
	PUSH	X			
	PUSH	Y
	MOV		AX,MOV_NAVE	
	MOV		N7,AX		; guarda a posciao no eixo X da nave na hora do disparo em N7, assim caso a nave se mova o tiro nao se move
	MOV		X,AX		; passa o valor de n7 para X
	MOV		AX,N8		
	MOV   	Y,AX  		; passa a posicao no eixo Y do tiro para a variavel Y
	CALL	PRINT_TIRO	; printa o tiro
	POP		X
	POP     Y

	CMP		PONTOS,0
	JE		FDJMP
	SUB		PONTOS,5
	
FDJMP:JMP 	FIMGERN		; pula para o fim
VAIDIREITA:
	MOV		AX,N9		;checa se a algum tiro em movimento caso tenha pula para vaitiro2
	CMP		AX,1
	JE      VAITIRO2
	
	MOV	AX,MOV_NAVE		;checa se a nave esta no limete da tela no canto direito
	CMP		AX,305
	JL	ADDMN			; caso nao esteja pula para atualiazar a nova posicao
	JMP		FIMGERN		; caso esteja pula para o fim
VAITIRO2:;funcao para quando a nave se move mas a um tiro em movimento
	MOV	N9,1	;indica que o tiro esta em movimento
	PUSH	X
	PUSH	Y
	MOV		AX,N7		
	MOV		X,AX	;passa a posicao do tiro no eixo X para a variavel X
	MOV		AX,N8	
	MOV   	Y,AX	;passa a posicao do tiro no eixo Y para a variavel Y
	CALL	PRINT_TIRO; printa o tiro 
	POP		X
	POP     Y
	
	MOV	AX,MOV_NAVE	;checa se a nave esta no limete da tela no canto direito
	CMP		AX,305
	JL	ADDMN		; caso nao esteja pula para atualiazar a nova posicao
	JMP		FIMGERN	; caso esteja pula para o fim

ADDMN:ADD	MOV_NAVE,5	; move a nave para 5 posicoes a direita
	JMP 	FIMGERN		; pula para o fim

VAIESQUERDA:
	MOV		AX,N9	;checa se a algum tiro em movimento
	CMP		AX,1
	JE      VAITIRO3; caso tenha pula para vaitiro3
	
	MOV	AX,MOV_NAVE	;checa se a nave esta no limete da tela no canto esquerdo
	CMP		AX,5	; caso nao esteja pula para atualiazar a nova posicao
	JG	SUBMN
	JMP		FIMGERN
VAITIRO3:;funcao para quando a nave se move mas a um tiro em movimento
	MOV	N9,1
	PUSH	X
	PUSH	Y
	MOV		AX,N7	
	MOV		X,AX	;passa a posicao do tiro no eixo X para a variavel X
	MOV		AX,N8
	MOV   	Y,AX	;passa a posicao do tiro no eixo Y para a variavel Y
	CALL	PRINT_TIRO; printa o tiro
	POP		X
	POP     Y
	
	MOV	AX,MOV_NAVE	;checa se a nave esta no limete da tela no canto esquerdo
	CMP		AX,5	; caso nao esteja pula para atualiazar a nova posicao
	JG	SUBMN
	JMP		FIMGERN

SUBMN:	SUB	MOV_NAVE,5	; move a nave para 5 posicoes a esquerda

FIMGERN: RET	;retorna para onde foi chamado
GERENCIA_NAVE 	ENDP
;----------------------------------MATA ALIEN---------------------------------------------------------------------------
MATA_ALIEN PROC
	MOV		Bl,[SI]			;Compara para saber se o alien esta morto ou nao	0 - morto 1 - vivo
	CMP		BL,0			
	JE		PEDMA			;Caso esteja morto ele pula pro fim
	
	CMP		N9,0			;Compara se o tiro esta em movimento ou nao, caso nao esteja pula para o fim
	JE		PEDMA
	
	MOV		AX,N8			;move o conteudo de n8 que corresponde a posicao Y do tiro para ax
	CMP		AX,Y			; compara para saber se o tiro esta em uma linha abaixo de Y
	JG		CMPEY2			; Caso  esteja pula para cmpey2
	JMP		PEDMA
PEDMA: JMP EDMA
CMPEY2:MOV		AX,N8			;move o conteudo de n8 que corresponde a posicao Y do tiro para ax
	PUSH	AX				
	MOV		AX,Y				
	ADD		AX,11				;addiciona a y 10 , que correspondera ao range do eixo y e depois joga esse valor para n13
	MOV		N13,AX		
	POP		AX
	CMP		AX,N13				; compara para saber se o tiro esta em uma linha acima  que a de n13
	JL  	CMPEX1				;caso esteja continua
	JMP		EDMA
	
CMPEX1:MOV	AX,N7			;move o conteudo de n8 que corresponde a posicao X do tiro para ax
	PUSH	AX				
	MOV		AX,X			
	MOV		N13,AX
	POP		AX
	SUB		N13,3			; subtrai a posicao inicial x do alien, valor que corresponde ao seu range
	CMP		AX,N13			; compara para saber se o tiro esta em uma coluna maior que a de n13 no eixo x
	JG		CMPEX2			; caso esteja continua
	JMP		EDMA
	
CMPEX2:MOV	AX,N7
	PUSH	AX
	MOV		AX,X
	MOV		N13,AX
	POP		AX
	ADD		N13,15		; adiciona a posicao inicial x do alien, valor que corresponde ao seu range
	CMP		AX,N13		; compara para saber se o tiro esta em uma coluna menor que a de n13 no eixo x
	JL		MTA1		; caso esteja continua
	JMP		EDMA
MTA1:
	MOV		N8,160			;reseta a posicao inicial do tiro
	MOV	 	N9,0			;indica que o tiro esta parado
	INC		N12
	MOV		AL,0			
	MOV		[SI],AL			; muda o valor de si para 0 indicando que o alien acessado esta morto
	MOV		AX,N15
	ADD		PONTOS,AX
	JMP		EDMA
EDMA:RET
MATA_ALIEN ENDP

;----------------------------------DESTRO PEDRA---------------------------------------------------------------------------
DESTROI_PEDRA PROC 

	CMP		N9,0			; compara se o tiro esta em movimento
	JE		PFIMDP			; se nao estiver pula pro fim
	
	CMP		N8,139			; compara se o tiro esta dentro do eixo y da barreira
	JG		YD
	JMP		FIMDP
	
YD:	CMP		N8,161			; compara se o tiro esta dentro do eixo y da barreira
	JL		CEX
	JMP		FIMDP
	
CEX:CMP		INDP1,5			; compara se a barreira ja esta detruida se estiver pula
	JE		BR2
	
	CMP		N7,18			; compara se o tiro esta dentro do eixo x da barreira
	JG		BR1E
	JMP		BR2
	
BR1E:CMP	N7,50			; compara se o tiro esta dentro do eixo x da barreira
	JL		DP1
	JMP		BR2
	
DP1:INC 	INDP1			; caso o tiro esteja dentro do eixo y e eixo x da barreira aumenta um indice da barreira (indica que ela sofreu um tiro)
	MOV		N9,0			; indica que o tiro nao esta mais se movendo
	MOV		N8,160			
	JMP		FIMDP
	
	
BR2:CMP		INDP2,5			; compara se a barreira ja esta detruida se estiver pula
	JE		BR3
	
	CMP		N7,98			; compara se o tiro esta dentro do eixo x da barreira
	JG		BR2E
	JMP		BR3

BR2E:CMP	N7,130		; compara se o tiro esta dentro do eixo x da barreira
	JL		DP2
	JMP		BR3
	
DP2:INC		INDP2			; caso o tiro esteja dentro do eixo y e eixo x da barreira aumenta um indice da barreira (indica que ela sofreu um tiro)
	MOV		N9,0
	MOV		N8,160
	JMP		FIMDP
	
	
PFIMDP:	JMP FIMDP			; ponte para jump 
	
BR3:CMP		INDP3,5			; compara se a barreira ja esta detruida se estiver pula
	JE		BR4
	
	CMP		N7,178			; compara se o tiro esta dentro do eixo x da barreira
	JG		BR3E
	JMP		BR4
	
BR3E:CMP	N7,210		; compara se o tiro esta dentro do eixo x da barreira
	JL		DP3
	JMP		BR4
	
DP3:INC		INDP3			; caso o tiro esteja dentro do eixo y e eixo x da barreira aumenta um indice da barreira (indica que ela sofreu um tiro)
	MOV		N9,0
	MOV		N8,160
	JMP		FIMDP
	
BR4:CMP		INDP4,5			; compara se a barreira ja esta detruida se estiver pula
	JE		FIMDP
	
	CMP		N7,258			; compara se o tiro esta dentro do eixo x da barreira
	JG		BR4E
	JMP		FIMDP
	
BR4E:CMP	N7,290			; compara se o tiro esta dentro do eixo x da barreira
	JL		DP4
	JMP		FIMDP
	
DP4:INC		INDP4			; caso o tiro esteja dentro do eixo y e eixo x da barreira aumenta um indice da barreira (indica que ela sofreu um tiro)
	MOV		N9,0
	MOV		N8,160
FIMDP:RET
DESTROI_PEDRA ENDP
;----------------------------------PRINTA SCORE ---------------------------------------------------------------------------
SCORE	PROC
	XOR		AX,AX
	MOV 	AX,BX                   ; move o valor digitado pelo usuario salvo em bx para ax
	XOR 	CX,CX                     ; limpa cx(inicializa o valor dele em 0)
	MOV 	BX,10                     ;move 10 para bx

@REPEAT:                      
    XOR 	DX,DX                   ; limpa DX
    DIV 	BX                      ; divide o ax por bx, o resultado esta em ax
    PUSH 	DX                      ; jogo o valor de dx pra pilha
    INC 	CX                       ; incrementa cx para ser usado como contador posteriormente
    OR 		AX,AX                    ; verifica se ax e igual a 0
	JNE 	@REPEAT                    ;caso nao seja pula para divprint

	MOV 	AH, 2                      ; inicializa a funcao de print 

@DISPLAY:                      ; loop label
    POP	 	DX                       ; puxa o ultimo valor da pilha para dx
    OR 		DL, 30H                   ; converte o valor decimal para o codigo ascci
    INT 	21H                      ; printa o numero
	LOOP @DISPLAY                  ; faz o loop ate cx se tornar 0

   RET                            ; retorna para o local de chamada
SCORE	ENDP
;----------------------------------PRINTA INFO ---------------------------------------------------------------------------
INFO	PROC
	MOV 	AH, 02H			;muda o cursor de posição
	MOV 	DH, 0
	MOV 	DL, 0 
	INT 	10H
	
	MOV 	AH, 9H			;printa a string contida na msg2
	LEA 	DX, MSG2
	INT 	21H	

	MOV		BX,PONTOS	
	CALL	SCORE
	MOV 	AH, 02H			;move o cursor de posicao;
	MOV 	DH, 0
	MOV 	DL, 28
	INT 	10H
	
	MOV AH, 9H			; printa a string contida em MSG3
	LEA DX, MSG3
	INT 21H
	
	MOV		X,270		;indica a cordenada que o desenho de coracao sera printado
	MOV		Y,0
	CALL	PRINT_VIDA	; chama a funcao que ira printa a vida
	
	CMP		INDICA_VIDA2,0
	JE		FIMVIDA
	
	MOV		X,290		;indica a cordenada que o desenho de coracao sera printado
	MOV		Y,0
	CALL	PRINT_VIDA	; chama a funcao que ira printa a vida
		
	CMP		INDICA_VIDA3,0
	JE		FIMVIDA
	
	MOV		X,308		;indica a cordenada que o desenho de coracao sera printado
	MOV		Y,0
	CALL	PRINT_VIDA	; chama a funcao que ira printa a vida
FIMVIDA:RET
INFO	ENDP
;----------------------------------FORMACAO ---------------------------------------------------------------------------
FORMACAO	PROC
	
	MOV		X,20			;indica a cordenada que a barreira sera printado
	MOV		Y,140
	CMP		INDP1,0
	JE		PP0
	
	CMP		INDP1,1
	JE		PP1
	
	CMP		INDP1,2
	JE		PP2
	
	CMP		INDP1,3
	JE		PP3
	
	CMP		INDP1,4
	JE		PP4
	
	JMP     CPPP2
PP0:CALL	PRINT_BARREIRA	; chama a funcao que ira printa a barreira
	JMP		CPPP2
	
PP1: CALL	PRINT_BARREIRA22	; chama a funcao que ira printa a barreira
	JMP		CPPP2

PP2: CALL	PRINT_BARREIRA33	; chama a funcao que ira printa a barreira
	JMP		CPPP2
	
PP3: CALL	PRINT_BARREIRA44	; chama a funcao que ira printa a barreira
	JMP		CPPP2

PP4: CALL	PRINT_BARREIRA55	; chama a funcao que ira printa a barreira

CPPP2:
	MOV		X,100			;indica a cordenada que a barreira sera printado
	MOV		Y,140
	
	CMP		INDP2,0
	JE		PPP0
	
	CMP		INDP2,1
	JE		PPP1
	
	CMP		INDP2,2
	JE		PPP2
	
	CMP		INDP2,3
	JE		PPP3
	
	CMP		INDP2,4
	JE		PPP4
	
	JMP		CPPP3
	
PPP0:CALL	PRINT_BARREIRA	; chama a funcao que ira printa a barreira
	JMP		CPPP3
	
PPP1: CALL	PRINT_BARREIRA22	; chama a funcao que ira printa a barreira
	JMP		CPPP3

PPP2: CALL	PRINT_BARREIRA33	; chama a funcao que ira printa a barreira
	JMP		CPPP3

PPP3: CALL	PRINT_BARREIRA44	; chama a funcao que ira printa a barreira
	JMP		CPPP3

PPP4: CALL	PRINT_BARREIRA55	; chama a funcao que ira printa a barreira

CPPP3:
	MOV		X,180			;indica a cordenada que a barreira sera printado
	MOV		Y,140
	CMP		INDP3,0
	JE		PPPP0
	
	CMP		INDP3,1
	JE		PPPP1
	
	CMP		INDP3,2
	JE		PPPP2
	
	CMP		INDP3,3
	JE		PPPP3
	
	CMP		INDP3,4
	JE		PPPP4
	
	JMP		CPPP4
	
PPPP0:CALL	PRINT_BARREIRA	; chama a funcao que ira printa a barreira
	JMP		CPPP4
	
PPPP1: CALL	PRINT_BARREIRA22	; chama a funcao que ira printa a barreira
	JMP		CPPP4

PPPP2: CALL	PRINT_BARREIRA33	; chama a funcao que ira printa a barreira
	JMP		CPPP4

PPPP3: CALL	PRINT_BARREIRA44	; chama a funcao que ira printa a barreira
	JMP		CPPP4

PPPP4: CALL	PRINT_BARREIRA55	; chama a funcao que ira printa a barreira

CPPP4:
	MOV		X,260			;indica a cordenada que a barreira sera printado
	MOV		Y,140
	
	CMP		INDP4,0
	JE		PPPPP0
	
	CMP		INDP4,1
	JE		PPPPP1
	
	CMP		INDP4,2
	JE		PPPPP2
	
	CMP		INDP4,3
	JE		PPPPP3
	
	CMP		INDP4,4
	JE		PPPPP4
	
	JMP		CPPPF
	
PPPPP0:CALL		PRINT_BARREIRA	; chama a funcao que ira printa a barreira
	JMP		CPPPF
	
PPPPP1: CALL	PRINT_BARREIRA22	; chama a funcao que ira printa a barreira
	JMP		CPPPF

PPPPP2: CALL	PRINT_BARREIRA33	; chama a funcao que ira printa a barreira
	JMP		CPPPF
	
PPPPP3: CALL	PRINT_BARREIRA44	; chama a funcao que ira printa a barreira
	JMP		CPPPF

PPPPP4: CALL	PRINT_BARREIRA55	; chama a funcao que ira printa a barreira

CPPPF:RET
FORMACAO	ENDP
;----------------------------------PRINTA VIDA ---------------------------------------------------------------------------
PRINT_VIDA	PROC 
	XOR		SI,SI			; zera si
	LEA		SI,PRINT_VIDA1	; passa o endereço que esta em print_vida1
	MOV		N2,0			
	MOV		N4,0
	MOV		COUNT,0	
INICIOPV:MOV	CX,X		
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]			
	CMP		BL,0			; compara se si em offset e igual a zero caso seja ira pular para apv, e ira continuar sem printar nenhum pixel
	JE		APV
	
	MOV		AH,0CH			; Printa o pixel de cor vermelha
	MOV		AL,100B
	INT		10H
	
APV:INC		SI			
	INC		COUNT
	CMP		N2,11
	JL		OPV
	
	MOV		N2,0
	INC		N4

OPV:CMP		COUNT,121	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOPV
	RET
PRINT_VIDA	ENDP
;----------------------------------PRINTA BARREIRA ---------------------------------------------------------------------------
PRINT_BARREIRA	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_BARREIRA1	; passa o endereço que esta em print_barreira1
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOBA:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI] ; compara se si em offset e igual a zero caso seja ira pular para aba, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		ABA
	
	MOV		AH,0CH
	MOV		AL,0010B	; Printa o pixel de cor verde
	INT		10H
	
ABA:	INC		SI
	INC		COUNT
	CMP		N2,31
	JL		OBA
	
	MOV		N2,0
	INC		N4

OBA:	CMP		COUNT,620	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOBA
	RET
PRINT_BARREIRA	ENDP
;----------------------------------PRINTA BARREIRA2 ---------------------------------------------------------------------------
PRINT_BARREIRA22 PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_BARREIRA2	; passa o endereço que esta em print_barreira2
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOBBA:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI] ; compara se si em offset e igual a zero caso seja ira pular para aba, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		ABBA
	
	MOV		AH,0CH
	MOV		AL,0010B	; Printa o pixel de cor verde
	INT		10H
	
ABBA:INC		SI
	INC		COUNT
	CMP		N2,31
	JL		OBBA
	
	MOV		N2,0
	INC		N4

OBBA:	CMP		COUNT,620	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOBBA
	RET
PRINT_BARREIRA22 ENDP

;----------------------------------PRINTA BARREIRA3 ---------------------------------------------------------------------------
PRINT_BARREIRA33 PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_BARREIRA3	; passa o endereço que esta em print_barreira2
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOBCBA:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI] ; compara se si em offset e igual a zero caso seja ira pular para aba, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		ABCBA
	
	MOV		AH,0CH
	MOV		AL,0010B	; Printa o pixel de cor verde
	INT		10H
	
ABCBA:INC		SI
	INC		COUNT
	CMP		N2,31
	JL		OBBAA
	
	MOV		N2,0
	INC		N4

OBBAA:	CMP		COUNT,620	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOBCBA
	RET
PRINT_BARREIRA33 ENDP
;----------------------------------PRINTA BARREIRA4 ---------------------------------------------------------------------------
PRINT_BARREIRA44 PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_BARREIRA4	; passa o endereço que esta em print_barreira2
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOBCBAA:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI] ; compara se si em offset e igual a zero caso seja ira pular para aba, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		ABCBAA
	
	MOV		AH,0CH
	MOV		AL,0010B	; Printa o pixel de cor verde
	INT		10H
	
ABCBAA:INC		SI
	INC		COUNT
	CMP		N2,31
	JL		OBBAAA
	
	MOV		N2,0
	INC		N4

OBBAAA:	CMP		COUNT,620	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOBCBAA
	RET
PRINT_BARREIRA44 ENDP
;----------------------------------PRINTA BARREIRA4 ---------------------------------------------------------------------------
PRINT_BARREIRA55 PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_BARREIRA5	; passa o endereço que esta em print_barreira2
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOBCBAVA:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI] ; compara se si em offset e igual a zero caso seja ira pular para aba, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		ABCBAVA
	
	MOV		AH,0CH
	MOV		AL,0010B	; Printa o pixel de cor verde
	INT		10H
	
ABCBAVA:INC		SI
	INC		COUNT
	CMP		N2,31
	JL		OBBAAAV
	
	MOV		N2,0
	INC		N4

OBBAAAV:	CMP		COUNT,620	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOBCBAVA
	RET
PRINT_BARREIRA55 ENDP
;----------------------------------PRINTA ALIEN 1 ---------------------------------------------------------------------------
PRINT_ALIEN_1	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_ALIEN1	; passa o endereço que esta em print_alien1
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOAL1:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]	; compara se si em offset e igual a zero caso seja ira pular para aal1, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		AAL1
	
	MOV		AH,0CH
	MOV		AL,1111B	; Printa o pixel de cor branca
	INT		10H
	
AAL1:	INC		SI
	INC		COUNT
	CMP		N2,14
	JL		OAL1
	
	MOV		N2,0
	INC		N4

OAL1:	CMP		COUNT,154	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOAL1	
	RET
PRINT_ALIEN_1	ENDP
;----------------------------------PRINTA ALIEN 2 ---------------------------------------------------------------------------
PRINT_ALIEN_2	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_ALIEN2	; passa o endereço que esta em print_alien2
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOAL2:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]
	CMP		BL,0
	JE		AAL2
	
	MOV		AH,0CH
	MOV		AL,1111B	; Printa o pixel de cor branca
	INT		10H
	
AAL2:	INC		SI		; compara se si em offset e igual a zero caso seja ira pular para aal2, e ira continuar sem printar nenhum pixel
	INC		COUNT
	CMP		N2,13
	JL		OAL2
	
	MOV		N2,0
	INC		N4

OAL2:	CMP		COUNT,117	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOAL2
	RET
PRINT_ALIEN_2	ENDP
;----------------------------------PRINTA ALIEN 3 ---------------------------------------------------------------------------
PRINT_ALIEN_3	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_ALIEN3	; passa o endereço que esta em print_alien3
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOAL3:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]		; compara se si em offset e igual a zero caso seja ira pular para aal3, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		AAL3
	
	MOV		AH,0CH
	MOV		AL,1111B	; Printa o pixel de cor branca
	INT		10H
	
AAL3:	INC		SI
	INC		COUNT
	CMP		N2,12
	JL		OAL3
	
	MOV		N2,00
	INC		N4

OAL3:	CMP		COUNT,96	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOAL3
	RET
PRINT_ALIEN_3	ENDP
;----------------------------------PRINTA TIRO ---------------------------------------------------------------------------
PRINT_TIRO	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_TIRO1	; passa o endereço que esta em print_nave1
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIOPT1:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]	; compara se si em offset e igual a zero caso seja ira pular para a, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		APT1	
	
	MOV		AH,0CH
	MOV		AL,1110B	; Printa o pixel de cor amarela
	INT		10H
	
APT1:INC	SI
	INC		COUNT
	CMP		N2,11
	JL		OPT1
	
	MOV		N2,0
	INC		N4

OPT1:	CMP		COUNT,55	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIOPT1
	RET
PRINT_TIRO ENDP
;----------------------------------PRINTA NAVE ---------------------------------------------------------------------------
PRINT_NAVE	PROC ;(320 X 200) 320 = COLUNAS, 200 = LINHAS/ CX= COLUNA , DX = LINHAS
	XOR		SI,SI	; zera si
	LEA		SI,PRINT_NAVE1	; passa o endereço que esta em print_nave1
	MOV		N2,0
	MOV		N4,0
	MOV		COUNT,0
INICIO:MOV	CX,X
	ADD		CX,N2
	INC		N2
	MOV		DX,Y
	ADD		DX,N4
	
	MOV		BL,[SI]	; compara se si em offset e igual a zero caso seja ira pular para a, e ira continuar sem printar nenhum pixel
	CMP		BL,0
	JE		A
	
	CMP		BL,2	; caso bl seja igual a 2 ira pular para v
	JE		V
	
	MOV		AH,0CH
	MOV		AL,100B		; Printa o pixel de cor vermelha
	INT		10H
	JMP 	A
	
V:	MOV		AH,0CH
	MOV		AL,1110B	; Printa o pixel de cor amarela
	INT		10H
	
A:	INC		SI
	INC		COUNT
	CMP		N2,11
	JL		O
	
	MOV		N2,0
	INC		N4

O:	CMP		COUNT,165	; compara para ver se o tamanho de posicoes de memoria percorrido e igual ao final do desenho, caso seja ira terminar a funcao
	JL		INICIO
	RET
PRINT_NAVE	ENDP
END 	MAIN
