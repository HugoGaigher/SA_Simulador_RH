programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	inclua biblioteca Arquivos --> arq
	inclua biblioteca ServicosWeb --> WS

	const cadeia CAMINHO = "./banco_dados.txt"
	const inteiro AGUARDAR = 1000
	inteiro quantidade_de_funcionarios_cadastrados = 0
	
	funcao inicio()
	{
		escreva(">>>> Olá, Seja Bem-Vindo(a) ao Setor de RH da Fábrica de Softwares")
		u.aguarde(AGUARDAR)
		limpa()
		escreva(">>>> Logo abaixo se encontram algumas informações que você usuário pode nos solicitar\n\n")
		u.aguarde(AGUARDAR)

		menu()
	}
	
	funcao menu()
	{
		cadeia opcao
		
		escreva(" ______________BEM-VINDO AO MENU_____________\n")
		escreva("|                                            |\n")
		escreva("|  [1] - adicional noturno                   |\n")
		escreva("|  [2] - Adicional de hora extra             |\n")
		escreva("|  [3] - Adicional de periculosidade         |\n")
		escreva("|  [4] - Benefício de Depósito de FGTS       |\n")
		escreva("|  [5] - Custo-Benefício do Vale-Transporte  |\n")
		escreva("|  [6] - Imprimir contracheque               |\n")
		escreva("|  [7] - Tenho direito ao Seguro-Desemprego? |\n")
		escreva("|  [8] - Tenho direito ao abono do PIS?      |\n")
		escreva("|  [9] - Cálculo de Férias                   |\n")
		escreva("| [10] - Desconto de IRRF                    |\n")
		escreva("| [11] - Desconto do INSS                    |\n")
		escreva("| [12] - Multa do FGTS                       |\n")
		escreva("| [13] - Cadastrar funcionários              |\n")
		escreva("| [14] - SAIR                                |\n")
		escreva("|____________________________________________|\n")

		escreva("\nDigite o número à esquerda para acessar a informação: ")
		leia(opcao)

		limpa()

		se(opcao == "1")
		{
			solicita_adicional_hora_noturna()
		}
		senao se(opcao == "2")
		{
			solicita_adicional_hora_extra()
		}
		senao se(opcao == "3")
		{
			solicita_adicional_periculosidade()
		}
		senao se(opcao == "4")
		{
			solicita_beneficio_fgts()
		}
		senao se(opcao == "5")
		{
			solicita_custo_beneficio_vale_transporte()
		}
		senao se(opcao == "6")
		{
			solicita_contracheque()
		}
		senao se(opcao == "7")
		{
			solicita_direito_ao_seguro_desemprego()
		}
		senao se(opcao == "8")
		{
			solicita_direito_abono_pis()
		}
		senao se(opcao == "9")
		{
			solicita_contracheque()
		}
		senao se(opcao == "10")
		{
			solicita_irrf()
		}
		senao se(opcao == "11")
		{
			solicita_inss()
		}
		senao se(opcao == "12")
		{
			solicita_multa_fgts()
		}
		senao se(opcao == "13")
		{
			solicita_cadastro_funcionario()
		}
		senao se(opcao == "14")
		{
			escreva(" ____________________ATÉ MAIS_________________\n")
			escreva("|                                             |\n")
			escreva("|    **  Foi muito bom te ter conosco!  **    |\n")
			escreva("|                                             |\n")
			escreva("|           **  VOLTE SEMPRE!  **             |\n")
			escreva("|_____________________________________________|\n\n\n")
		}
		senao
		{
			escreva("Digite uma opção válida!\n\n")
			menu()
		}
		
	}
	
	//MÓDULO DE SIMULAÇÕES
	//-----------------------------------------------------
	funcao solicita_adicional_hora_noturna()
	{
		escreva(" _____________________________________\n")
		escreva("|                                     |\n")
		escreva("|-----ADICIONAL DE HORAS NOTURNAS-----|\n")
		escreva("|_____________________________________|\n\n")
		
		real salario_bruto


		escreva("\n --------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real horas_trabalhadas_no_mes

		escreva("\n|Quantas horas você trabalhou no mês? ")
		leia(horas_trabalhadas_no_mes)

		real horas_noturnas_trabalhadas

		escreva("\n|Quantas horas noturnas você trabalhou? ")
		leia(horas_noturnas_trabalhadas)

		real adicional_horas_noturnas = calculo_adicional_noturno(horas_noturnas_trabalhadas, salario_bruto, horas_trabalhadas_no_mes)

		escreva("\n________________________________________________________________________\n\n")
		escreva("\n|Você receberá pelas horas noturnas trabalhadas: R$", adicional_horas_noturnas,"\n")
		escreva("\n________________________________________________________________________\n")

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_adicional_hora_noturna()
		}

	}
	funcao solicita_adicional_hora_extra()
	{
		escreva(" ___________________________________\n")
		escreva("|                                   |\n")
		escreva("|-----ADICIONAL DE HORAS EXTRAS-----|\n")
		escreva("|___________________________________|\n\n")
		
		real salario_bruto

		escreva("\n  ")
 		escreva("\n -------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real horas_trabalhadas_no_mes

		escreva("\n|Quantas horas você trabalhou no mês? ")
		leia(horas_trabalhadas_no_mes)

		real horas_extras_trabalhadas

		escreva("\n|Quantas horas extras você trabalhou? ")
		leia(horas_extras_trabalhadas)

		real taxa_da_hora_extra
		escreva("\n|Qual a taxa da hora extra? ")
		leia(taxa_da_hora_extra)

		real adicional_horas_extras = calculo_hora_extra( salario_bruto, horas_trabalhadas_no_mes, horas_extras_trabalhadas, taxa_da_hora_extra)

		escreva("\n_______________________________________________________________________\n\n")
		escreva("\n|Você receberá pelas horas extras trabalhadas: R$", adicional_horas_extras)
		escreva("\n\n_______________________________________________________________________\n")


		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_adicional_hora_extra()
		}

	}
	funcao solicita_adicional_periculosidade() 
	{
		escreva(" _____________________________________\n")
		escreva("|                                     |\n")
		escreva("|-----ADICIONAL DE PERICULOSIDADE-----|\n")
		escreva("|_____________________________________|\n\n")
		
		real salario_bruto


		escreva("\n\n ---------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real adicional_periculosidade = calculo_adicional_periculosidade(salario_bruto)


		escreva("\n________________________________________________________________\n")
		escreva("\n|Valor do adicional de periculosidade: R$", adicional_periculosidade)
		escreva("\n")
		escreva("\n|Valor total a receber: R$", salario_bruto + adicional_periculosidade)
		escreva("\n________________________________________________________________\n\n")

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_adicional_periculosidade()
		}
	}
	funcao solicita_beneficio_fgts()
	{
		escreva(" ___________________________\n")
		escreva("|                           |\n")
		escreva("|-----BENEFÍCIO DO FGTS-----|\n")
		escreva("|___________________________|\n")
		
		real salario_bruto

		escreva("\n  ")
		escreva("\n ------------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real beneficio_fgts = calculo_beneficio_do_fgts(salario_bruto)

		escreva("\n ")
		escreva("\n________________________________")
		escreva("\n \n")
		escreva("\n|FGTS: R$", beneficio_fgts,"\n")
		escreva("\n________________________________\n")


		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_beneficio_fgts()
		}
	}
	funcao solicita_custo_beneficio_vale_transporte()
	{
		escreva(" ____________________________________________\n")
		escreva("|                                            |\n")
		escreva("|-----CUSTO BENEFÍCIO DO VALE TRANSPORTE-----|\n")
		escreva("|____________________________________________|\n\n")
		const real VALOR_DA_PASSAGEM = 4.20
		
		real salario_bruto

		escreva("\n ")
		escreva("\n --------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)
		
		real desconto_vale_transporte = calculo_vale_transporte(salario_bruto)

		inteiro usos_de_transporte_no_mes

		escreva("\n|Agora informe a quantidade de vezes que você utiliza transporte público no mês: ")
		leia(usos_de_transporte_no_mes)


		escreva("\n______________________________________________________________________________  ")
		escreva("\n\n|Você gastaria: R$", VALOR_DA_PASSAGEM*usos_de_transporte_no_mes)
		escreva("\n  ")
		escreva("\n\n|Será descontado, caso opte pelo vale-transporte: R$", desconto_vale_transporte,"\n")
		escreva("\n------------------------------------------------------------------------------  \n")

		
		se(VALOR_DA_PASSAGEM*usos_de_transporte_no_mes >= desconto_vale_transporte) 
		{
			escreva("\n\n** Nós recomendamos o uso do vale_transporte! ** ")
			escreva("\n______________________________________________________________________________  ")
		}

		senao
		{
			escreva("\n** Nós não recomendamos o uso do vale_transporte! ** ")
			escreva("\n______________________________________________________________________________  ")
		}

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_custo_beneficio_vale_transporte()
		}

	}
	funcao solicita_contracheque()
	{

		escreva(" ________________________________\n")
		escreva("|                                |\n")
		escreva("|-----SOLICITAR CONTRACHEQUE-----|\n")
		escreva("|________________________________|\n\n")
		
		real salario_bruto
		real horas_noturnas_trabalhadas
		real horas_extras
		real horas_trabalhadas_no_mes
		real taxa_da_hora_extra

		
		escreva("\n --------------------------")
		escreva("\n|Salário Bruto: R$")

		leia(salario_bruto)
		

		escreva("\n|Horas trabalhadas no mês: ")
	
		leia(horas_trabalhadas_no_mes)
		

		escreva("\n|Qual a taxa da hora extra (%)? ")
		
		leia(taxa_da_hora_extra)

		taxa_da_hora_extra /= 100
		
	
		escreva("\n|Horas extras: ")
	
		leia(horas_extras)
		
		real adicional_hora_extra = calculo_hora_extra(salario_bruto, horas_trabalhadas_no_mes, horas_extras, taxa_da_hora_extra)
		
		
		escreva("\n|Noturno: ")
	
		leia(horas_noturnas_trabalhadas)
	
		real adicional_noturno = calculo_adicional_noturno(horas_noturnas_trabalhadas, salario_bruto, horas_trabalhadas_no_mes)

		
		
		logico auxiliar_de_verificacao = verdadeiro

		cadeia apresenta_periculosidade
		real valor_adicional_periculosidade = 0.0
		
		faca
		{
			escreva("\n|Periculosidade: ")
			leia(apresenta_periculosidade)
			
			apresenta_periculosidade = txt.caixa_alta(apresenta_periculosidade)
		
		
			se(apresenta_periculosidade == "S" ou apresenta_periculosidade == "SIM")
			{
				valor_adicional_periculosidade = calculo_adicional_periculosidade(salario_bruto)
				auxiliar_de_verificacao = falso
			}
			senao se(apresenta_periculosidade == "N" ou apresenta_periculosidade == "NÃO")
			{
				auxiliar_de_verificacao = falso
			}
			senao
			{
				escreva("\n** Escreva uma resposta válida! **\n")
			}
		}enquanto(auxiliar_de_verificacao)

		
		
		auxiliar_de_verificacao = verdadeiro

		cadeia deseja_vale_transporte
		real desconto_vale_transporte = 0.0

		faca
		{
			escreva("\n|Vale-transporte: ")
			leia(deseja_vale_transporte)
			
			deseja_vale_transporte = txt.caixa_alta(deseja_vale_transporte)	
		
			se(deseja_vale_transporte == "S" ou deseja_vale_transporte == "SIM")
			{
				desconto_vale_transporte = calculo_vale_transporte(salario_bruto)
				auxiliar_de_verificacao = falso
			}
			
			senao se(deseja_vale_transporte == "N" ou deseja_vale_transporte == "SIM")
			{
				auxiliar_de_verificacao = falso
			}
			senao
			{
				escreva("\n** Escreva uma resposta válida! **\n")
			}
		}enquanto(auxiliar_de_verificacao)

		limpa()
		
		escreva("----------DETALHAMENTO----------")
		escreva("\n\n|Salário base:            R$", salario_bruto)
		escreva("\n\n|Horas extras:          + R$", adicional_hora_extra)
		escreva("\n\n|Noturno:               + R$", adicional_noturno)
		escreva("\n\n|Periculosidade:        + R$", valor_adicional_periculosidade)

		real beneficio_fgts = calculo_beneficio_do_fgts(salario_bruto)

		salario_bruto += calculo_total_adicional(salario_bruto, horas_noturnas_trabalhadas, horas_trabalhadas_no_mes, horas_extras, taxa_da_hora_extra)

		escreva("\n\n|FGTS:                  + R$", beneficio_fgts, " (depósito)")
		escreva("\n\n|Vale Transporte:       - R$", desconto_vale_transporte)

		real desconto_inss = calculo_desconto_do_inss(salario_bruto)

		escreva("\n\n|INSS:                  - R$", desconto_inss)

		real desconto_irrf = calculo_imposto_de_renda(salario_bruto - desconto_inss)

		escreva("\n\n|IRRF:                  - R$", desconto_irrf)

		escreva("\n\n------------RESULTADO-----------")

		real total_adicional = salario_bruto
		escreva("\n\n|Total adicionais:        R$", total_adicional)

		real total_descontos = desconto_inss + desconto_irrf + desconto_vale_transporte
		escreva("\n\n|Total descontos:         R$", mat.arredondar(total_descontos, 2))

		escreva("\n\n--------------------------------")


		real salario_liquido = salario_bruto- total_descontos
		escreva("\n\n|Salário líquido:         R$", salario_liquido)
		escreva("\n_____________________________________________\n\n")
		
		
		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_contracheque()
		}
		
	}
	funcao solicita_direito_ao_seguro_desemprego()
	{
		escreva(" _____________________________________________________\n")
		escreva("|                                                     |\n")
		escreva("|-----VERIFICAÇÃO DO DIREITO AO SEGURO_DESEMPREGO-----|\n")
		escreva("|_____________________________________________________|\n\n")

		inteiro quantidade_de_solicitacoes

		real salario_bruto
		
		real salario_acumulado

		const real SALARIO_MINIMO_ATUAL = 1302.0
		escreva("\n ")
		escreva("\n ----------------------------------------------------")
		escreva("\n|Quantas vezes você já solicitou o benefício? ")
		leia(quantidade_de_solicitacoes)

		
		se(quantidade_de_solicitacoes > 0)
		{
			escreva("\n|Informe seu salário bruto: ")
			leia(salario_bruto)
		
			se(quantidade_de_solicitacoes == 1)
			{
	
				salario_acumulado = salario_bruto*18
				
				se(salario_acumulado/SALARIO_MINIMO_ATUAL >= 12)
				{
					escreva("\n ______________________________________\n")
					escreva("|                                      |\n")
					escreva("|Você tem direito ao Seguro_Desemprego!|\n")
					escreva("|______________________________________|\n")
				}
				senao
				{
					escreva("\n __________________________________________\n")
					escreva("|                                          |\n")
					escreva("|Você não tem direito ao Seguro_Desemprego!|\n")
					escreva("|__________________________________________|\n")
				}
			}
	
			senao se(quantidade_de_solicitacoes == 2)
			{
				salario_acumulado = salario_bruto*12
	
				se(salario_acumulado/SALARIO_MINIMO_ATUAL >= 9)
				{
					escreva("\n ______________________________________\n")
					escreva("|                                      |\n")
					escreva("|Você tem direito ao Seguro_Desemprego!|\n")
					escreva("|______________________________________|\n")
				}
				senao
				{
					escreva("\n __________________________________________\n")
					escreva("|                                          |\n")
					escreva("|Você não tem direito ao Seguro_Desemprego!|\n")
					escreva("|__________________________________________|\n")
				}
			}
			
			senao se(quantidade_de_solicitacoes >= 3)
			{
				salario_acumulado = salario_bruto*6
	
				se(salario_acumulado/SALARIO_MINIMO_ATUAL >= 6)
				{
					escreva("\n ______________________________________\n")
					escreva("|                                      |\n")
					escreva("|Você tem direito ao Seguro_Desemprego!|\n")
					escreva("|______________________________________|\n")
				}
				senao
				{
					escreva("\n __________________________________________\n")
					escreva("|                                          |\n")
					escreva("|Você não tem direito ao Seguro_Desemprego!|\n")
					escreva("|__________________________________________|\n")
				}
			}
		}

		senao
		{
			limpa()
			escreva("\n** Escreva uma opção válida! ** \n\n")
			solicita_direito_ao_seguro_desemprego()
		}

		
		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_direito_ao_seguro_desemprego()
		}
	}
	funcao solicita_direito_abono_pis()
	{
		escreva(" __________________________________\n")
		escreva("|                                  |\n")
		escreva("|-----SOLICITAR DIREITO AO PIS-----|\n")
		escreva("|__________________________________|\n\n")

		logico auxiliar_de_verificacao = verdadeiro

		inteiro quantidade_de_anos_trabalhados

		faca{
			escreva("\n ----------------------------------------------------------")
			escreva("\n|Há quanto tempo você trabalha de carteira assinada? ")
			
			leia(quantidade_de_anos_trabalhados)

			se(quantidade_de_anos_trabalhados > 5)
			{
				real salario_bruto
				const real SALARIO_MINIMO_ATUAL = 1302.0
			
				faca
				{
				escreva("\n|Qual o seu salário bruto? ")
				leia(salario_bruto)

				se(salario_bruto/SALARIO_MINIMO_ATUAL <= 2)
				{
					faca
					{
						const inteiro QUANTIDADE_DE_DIAS_NO_MES = 30
					
						escreva("\n|Você trabalhou quantos dias no ano-base? ")
	
						inteiro dias_trabalhados_no_ano_base
	
						leia(dias_trabalhados_no_ano_base)
	
						se(dias_trabalhados_no_ano_base >= QUANTIDADE_DE_DIAS_NO_MES e dias_trabalhados_no_ano_base <= 12*QUANTIDADE_DE_DIAS_NO_MES)
						{
							faca
							{
								escreva("\n|Você informou corretamente os seus dados ao Relatório Anual de Informações Sociais? ")
		
								cadeia segunda_resposta
		
								leia(segunda_resposta)
		
								segunda_resposta = txt.caixa_alta(segunda_resposta)
		
								se(segunda_resposta == "S" ou segunda_resposta == "SIM")
								{
									auxiliar_de_verificacao = falso
									
									inteiro meses_trabalhados = dias_trabalhados_no_ano_base/QUANTIDADE_DE_DIAS_NO_MES
									
									real abono_pis = calculo_abono_pis(meses_trabalhados)

									escreva("\n\n___________________________\n\n")
									escreva("** TEM DIREITO AO PIS **\n")
									escreva("\n---------------------------\n")
									escreva("\n|VOCÊ RECEBERÁ: R$", abono_pis)
									escreva("\n___________________________\n")
									
								}
								senao se(segunda_resposta == "NÃO" ou segunda_resposta == "N")
								{
									auxiliar_de_verificacao = falso

									escreva("\n\n____________________________\n")
									escreva("\n** Não tem direito ao PIS **")
									escreva("\n____________________________\n")
								}
								senao
								{
									escreva("\n\n_______________________________\n")
									escreva("\n** Escreva uma opção válida! **\n")
									escreva("\n_______________________________\n")
								}
							}enquanto(auxiliar_de_verificacao)
						}
						
						senao
						{
							auxiliar_de_verificacao = falso
							escreva("\n\n____________________________\n")
							escreva("\n** Não tem direito ao PIS **")
							escreva("\n____________________________\n")
						}
					}enquanto(auxiliar_de_verificacao)
				}

				senao
				{
					auxiliar_de_verificacao = falso
					escreva("\n\n____________________________\n")
					escreva("\n** Não tem direito ao PIS **")
					escreva("\n____________________________\n")
				}

			
			}enquanto(auxiliar_de_verificacao)
			
			}
			
			senao
			{
				auxiliar_de_verificacao = falso
				escreva("\n\n____________________________\n")
				escreva("\n** Não tem direito ao PIS **")
				escreva("\n____________________________\n")
			}
			
		}enquanto(auxiliar_de_verificacao)

			
		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_direito_abono_pis()
		}
	}
	funcao solicita_ferias()
	{
		escreva(" _____________________________\n")
		escreva("|                             |\n")
		escreva("|-----ADICIONAL DE FÉRIAS-----|\n")
		escreva("|_____________________________|\n")
		
		real salario_bruto

		escreva("\n \n")
		escreva("\n ------------------------------------")
		escreva("\n|Informe seu salário bruto: R$")
		leia(salario_bruto)

		real adicional_ferias = calculo_ferias_adicional(salario_bruto)

		escreva("\n ")
		escreva("\n_____________________________________________________________________________\n")
		escreva("\n ")
		escreva("\n|Você receberá R$", adicional_ferias," a mais pelo mês que esteve de férias.\n")
		escreva("\n_____________________________________________________________________________\n")

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_ferias()
		}

	}
	funcao solicita_irrf()
	{
		escreva(" __________________________\n")
		escreva("|                          |\n")
		escreva("|-----DESCONTO DO IRRF-----|\n")
		escreva("|__________________________|\n\n")
		
		real salario_bruto

		escreva("\n ")
		escreva("\n ------------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real imposto_de_renda = calculo_imposto_de_renda(salario_bruto)

		escreva("\n ")
		escreva("\n___________________________________\n")
		escreva("\n|IRRF: R$", imposto_de_renda)
		escreva("\n___________________________________\n")

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_irrf()
		}
	}
	funcao solicita_inss()
	{
		escreva(" __________________________\n")
		escreva("|                          |\n")
		escreva("|-----DESCONTO DO INSS-----|\n")
		escreva("|__________________________|\n")
		real salario_bruto

		escreva("\n")
		escreva("\n -----------------------------------")
		escreva("\n|Informe seu salário bruto: ")
		leia(salario_bruto)

		real desconto_inss = calculo_desconto_do_inss(salario_bruto)
		escreva("\n___________________________________\n")
		escreva("\n|INSS: R$", desconto_inss)
		escreva("\n___________________________________\n")
		

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_inss()
		}

	}
	funcao solicita_multa_fgts()
	{
		escreva(" _______________________\n")
		escreva("|                       |\n")
		escreva("|-----MULTA DO FGTS-----|\n")
		escreva("|_______________________|\n\n")
		
		real deposito_total

		escreva("\n")
		escreva("\n --------------------------------------------------------------")
		escreva("\n|Informe qual foi o depósito total recebido no período: ")
		leia(deposito_total)
	
		real multa_fgts = calculo_multa_fgts(deposito_total)

		
		escreva("\n ")
		escreva("\n______________________________\n")
		escreva(" ")
		escreva("\n|MULTA FGTS: R$", multa_fgts)
		escreva("\n______________________________\n")

		se(deseja_voltar_menu())
		{
			menu()
		}
		senao
		{
			solicita_multa_fgts()
		}
	}
	
	funcao real calculo_adicional_periculosidade(real salario_bruto)
	{
		real adicional_periculosidade = 0.0

		adicional_periculosidade = salario_bruto*0.3

		retorne mat.arredondar(adicional_periculosidade, 2)
	}
	funcao real calculo_abono_pis(inteiro meses_trabalhados)
	{
		const real SALARIO_MINIMO_ATUAL = 1302.0
		
		real abono_pis = 0.0

		abono_pis = SALARIO_MINIMO_ATUAL*meses_trabalhados/12

		retorne abono_pis
		
	}
	funcao real calculo_adicional_noturno(real horas_noturnas_trabalhadas, real salario_bruto, real horas_trabalhadas_no_mes)
	{
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real taxa_noturna = 0.2
		real adicional_noturno = 0.0
		real horas_noturnas = 60*horas_noturnas_trabalhadas/52.5
		
		adicional_noturno = taxa_noturna*valor_hora_trabalhada*horas_noturnas

		retorne mat.arredondar(adicional_noturno, 2)
	}
	funcao real calculo_beneficio_do_fgts(real salario_bruto)
	{
		real beneficio_fgts = 0.0

		beneficio_fgts = 0.08*salario_bruto

		retorne beneficio_fgts
	}
	funcao real calculo_desconto_do_inss(real salario_bruto)
	{
		real desconto_inss = 0.0

		const real PISO_SALARIAL_1 = 1302.0
		const real PISO_SALARIAL_2 = 2571.29
		const real PISO_SALARIAL_3 = 3856.94
		const real PISO_SALARIAL_4 = 7507.49

		se(salario_bruto <= PISO_SALARIAL_1)
		{
			desconto_inss = salario_bruto*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_2)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_3)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_4)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_3)*0.14 + (PISO_SALARIAL_3 - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao
		{
			desconto_inss = (PISO_SALARIAL_4 - PISO_SALARIAL_3)*0.14 + (PISO_SALARIAL_3 - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}

		retorne mat.arredondar(desconto_inss, 2)
	}
	funcao real calculo_ferias_adicional(real salario_bruto)
	{
		real adicional_ferias = 0.0

		adicional_ferias = salario_bruto/3

		retorne mat.arredondar(adicional_ferias, 2)
	}
	funcao real calculo_hora_extra(real salario_bruto, real horas_trabalhadas_no_mes, real horas_extras, real taxa_da_hora_extra)
	{
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real adicional_hora_extra = 0.0
		real valor_hora_extra = valor_hora_trabalhada + taxa_da_hora_extra*valor_hora_trabalhada

		adicional_hora_extra = valor_hora_extra*horas_extras

		retorne mat.arredondar(adicional_hora_extra, 2)
	}
	funcao real calculo_imposto_de_renda(real salario_bruto)
	{
		real desconto_ir = 0.0
		real desconto_inss = calculo_desconto_do_inss(salario_bruto)
		real salario_base = salario_bruto - desconto_inss
		const real FAIXA_01 = 1903.98
		const real FAIXA_02 = 2826.65
		const real FAIXA_03 = 3751.06
		const real FAIXA_04 = 4664.68

		const real ALIQUOTA_01 = 142.80
		const real ALIQUOTA_02 = 354.80
		const real ALIQUOTA_03 = 636.13
		const real ALIQUOTA_04 = 869.36

		se(salario_base <= FAIXA_01)
		{
			desconto_ir = 0.0
		}
		senao se(salario_base <= FAIXA_02)
		{
			desconto_ir = salario_base*0.075 - ALIQUOTA_01
		}
		senao se(salario_base <= FAIXA_03)
		{
			desconto_ir = salario_base*0.15 - ALIQUOTA_02
		}
		senao se(salario_base <= FAIXA_04)
		{
			desconto_ir = salario_base*0.225 - ALIQUOTA_03
		}
		senao
		{
			desconto_ir = salario_base*0.275 - ALIQUOTA_04
		}
		
		retorne mat.arredondar(desconto_ir, 2)
	}
	funcao real calculo_multa_fgts(real deposito_total)
	{
		real valor_multa_fgts= 0.0

		cadeia houve_acordo

		escreva("\nHouve acordo entre você e o empregador? ")

		leia(houve_acordo)

		houve_acordo = txt.caixa_alta(houve_acordo)

		se(houve_acordo == "SIM" ou houve_acordo == "S")
		{
			valor_multa_fgts = 0.2 * deposito_total
		}
		senao se(houve_acordo == "NÃO" ou houve_acordo == "N")
		{
			valor_multa_fgts = 0.4 * deposito_total
		}
		

		retorne mat.arredondar(valor_multa_fgts, 2)
	}
	funcao real calculo_total_adicional(real salario_bruto, real horas_noturnas_trabalhadas, real horas_trabalhadas_no_mes, real horas_extras, real taxa_da_hora_extra)
	{
		real total_adicional = 0.0

		real adicional_periculosidade = calculo_adicional_periculosidade(salario_bruto)
		real adicional_hora_noturna = calculo_adicional_noturno(horas_noturnas_trabalhadas, salario_bruto, horas_trabalhadas_no_mes)
		real adicional_hora_extra = calculo_hora_extra(salario_bruto, horas_trabalhadas_no_mes, horas_extras, taxa_da_hora_extra)

		total_adicional = adicional_periculosidade + adicional_hora_extra + adicional_hora_noturna

		retorne total_adicional
	}
	funcao real calculo_vale_transporte(real salario_bruto)
	{
		real valor_vale_transporte = 0.0
		
		valor_vale_transporte = 0.06*salario_bruto

		retorne valor_vale_transporte
	}

	//MÓDULO DE GESTÃO E CADASTRO DE FUNCIONÁRIOS
	//-------------------------------------------------------
	funcao solicita_cadastro_funcionario()
	{
		escreva(" ________________________________\n")
		escreva("|                                |\n")
		escreva("|TELA DE CADASTRO DE FUNCIONÁRIOS|\n")
		escreva("|________________________________|\n\n")
		
		const inteiro QUANTIDADE_MAXIMA_DE_CADASTROS = 10

		inteiro banco_dados
		
		cadeia nome


		escreva("\n --------------------------")
		escreva("\n|NOME: ")
		leia(nome)

		nome = txt.caixa_alta(nome)

		cadeia telefone

		escreva("\n|TELEFONE: ")
		leia(telefone)

		cadeia email

		escreva("\n|E-MAIL: ")
		leia(email)

		email = txt.caixa_alta(email)

		cadeia idade

		escreva("\n|IDADE: ")
		leia(idade)

		cadeia cep = "XXXXXXXX"
		
		logico auxiliar_de_verificacao = verdadeiro
		
		enquanto(auxiliar_de_verificacao)
		{
			escreva("\n|CEP: ")
			leia(cep)
			escreva("\n \n")

			const inteiro QUANTIDADE_DE_CARACTERES_CEP = 8

			inteiro quantidade_de_caracteres = txt.numero_caracteres(cep)

			se(quantidade_de_caracteres == QUANTIDADE_DE_CARACTERES_CEP)
			{
				auxiliar_de_verificacao = falso
			}
			senao
			{
				escreva("\n|Digite um CEP válido!\n")
			}
		}

		logico verifica_arquivo_existe = arq.arquivo_existe(CAMINHO) 
		
		se(verifica_arquivo_existe)
		{
			banco_dados = arq.abrir_arquivo(CAMINHO, arq.MODO_ACRESCENTAR)
			cadastro_funcionario(banco_dados, nome, telefone, email, idade, cep)
		}
		senao se(auxiliar_de_verificacao == falso)
		{
			banco_dados = arq.abrir_arquivo(CAMINHO, arq.MODO_ESCRITA)
			cadastro_funcionario(banco_dados, nome, telefone, email, idade, cep)
		}
	}
	
	funcao cadastro_funcionario(inteiro banco_dados, cadeia nome, cadeia telefone, cadeia email, cadeia idade, cadeia cep)
	{
		cadeia endereco = separa_e_formata_endereco(cep)

		cadeia cep_separado = separa_cep(endereco)

		cadeia logradouro_separado = separa_logradouro(endereco)

		cadeia complemento_separado = separa_complemento(endereco)

		cadeia bairro_separado = separa_bairro(endereco)

		cadeia localidade_separado = separa_localidade(endereco)

		cadeia uf_separado = separa_uf(endereco)

		arq.escrever_linha("----------------------------------", banco_dados)
		arq.escrever_linha("NOME: " + nome, banco_dados)
		arq.escrever_linha("TELEFONE: " + telefone, banco_dados)
		arq.escrever_linha("E-MAIL: " + email, banco_dados)
		arq.escrever_linha("IDADE: " + idade, banco_dados)
		arq.escrever_linha(cep_separado, banco_dados)
		arq.escrever_linha(logradouro_separado, banco_dados)
		arq.escrever_linha(complemento_separado, banco_dados)
		arq.escrever_linha(bairro_separado, banco_dados)
		arq.escrever_linha(uf_separado, banco_dados)
		arq.escrever_linha("----------------------------------", banco_dados)
		
		arq.escrever_linha("\n", banco_dados)
		arq.escrever_linha("\n", banco_dados)

		quantidade_de_funcionarios_cadastrados++


		deseja_cadastrar_outro_funcionario(banco_dados)
		
	}
	
	funcao cadeia separa_e_formata_endereco(cadeia cep)
	{
		cadeia endereco = WS.obter_dados("https://viacep.com.br/ws/" + cep + "/json/")
		inteiro quantidade_de_caracteres = txt.numero_caracteres(endereco)

		inteiro posicao_de_corte = txt.posicao_texto("ibge", endereco, 0) - 1
		
		endereco = txt.extrair_subtexto(endereco, 0 , posicao_de_corte)
		endereco = txt.substituir(endereco, ",", "\n")
		endereco = txt.substituir(endereco, "{", "")
		endereco = txt.substituir(endereco, "\"", "")
		endereco = txt.caixa_alta(endereco)

		retorne endereco
	}
	funcao cadeia separa_bairro(cadeia endereco)
	{
		inteiro posicao_inicial_do_bairro = txt.posicao_texto("BAIRRO", endereco, 0)
		inteiro posicao_final_do_bairro = txt.posicao_texto("LOCALIDADE", endereco, 0)

		cadeia bairro_separado = txt.extrair_subtexto(endereco, posicao_inicial_do_bairro, posicao_final_do_bairro)

		retorne bairro_separado
	}
	funcao cadeia separa_cep(cadeia endereco)
	{
		inteiro quantidade_de_caracteres = txt.numero_caracteres(endereco)
		
		inteiro posicao_final_do_cep = txt.posicao_texto("LOGRADOURO", endereco, 0)

		cadeia cep_separado = txt.extrair_subtexto(endereco, 2, posicao_final_do_cep)

		retorne cep_separado
	}
	funcao cadeia separa_complemento(cadeia endereco)
	{
		inteiro posicao_inicial_do_complemento = txt.posicao_texto("COMPLEMENTO", endereco, 0)
		inteiro posicao_final_do_complemento = txt.posicao_texto("BAIRRO", endereco, 0)

		cadeia complemento_separado = txt.extrair_subtexto(endereco, posicao_inicial_do_complemento, posicao_final_do_complemento)

		retorne complemento_separado
	}
	funcao cadeia separa_logradouro(cadeia endereco)
	{
		inteiro posicao_inicial_do_logradouro = txt.posicao_texto("LOGRADOURO", endereco, 0)
		inteiro posicao_final_do_logradouro = txt.posicao_texto("COMPLEMENTO", endereco, 0)

		cadeia logradouro_separado = txt.extrair_subtexto(endereco, posicao_inicial_do_logradouro, posicao_final_do_logradouro)

		retorne logradouro_separado
	}
	funcao cadeia separa_localidade(cadeia endereco)
	{
		inteiro posicao_inicial_da_localidade = txt.posicao_texto("LOCALIDADE", endereco, 0)
		inteiro posicao_final_da_localidade = txt.posicao_texto("UF", endereco, 0)

		cadeia localidade_separado = txt.extrair_subtexto(endereco, posicao_inicial_da_localidade, posicao_final_da_localidade)

		retorne localidade_separado
	}
	funcao cadeia separa_uf(cadeia endereco)
	{
		inteiro posicao_inicial_da_uf = txt.posicao_texto("UF", endereco, 0)
		inteiro quantidade_de_caracteres = txt.numero_caracteres(endereco)

		cadeia uf_separado = txt.extrair_subtexto(endereco, posicao_inicial_da_uf, quantidade_de_caracteres - 1)

		retorne uf_separado
	}

	//FUNÇÕES AUXILIARES
	//--------------------------------------------------------
	funcao deseja_cadastrar_outro_funcionario(inteiro banco_dados)
	{
		escreva("\nDeseja cadastrar mais um funcionário? ")
		
		cadeia novo_cadastro

		leia(novo_cadastro)

		novo_cadastro = txt.caixa_alta(novo_cadastro)

		se(novo_cadastro == "SIM" ou novo_cadastro == "S")
		{
			limpa()
			
			arq.fechar_arquivo(banco_dados)
			
			solicita_cadastro_funcionario()
		}

		senao se(novo_cadastro == "NÃO" ou novo_cadastro == "N")
		{
			arq.fechar_arquivo(banco_dados)

			limpa()
			
			menu()
		}

		senao
		{
			limpa()
			escreva("\nDIGITE UMA OPÇÃO VÁLIDA!\n")
			deseja_cadastrar_outro_funcionario(banco_dados)
		}
	
	
	}
	funcao logico deseja_voltar_menu()
	{
		escreva("\n\nDeseja retornar ao menu? ")
		
		cadeia opcao
		
		leia(opcao)

		opcao = txt.caixa_alta(opcao )

		se(opcao == "SIM" ou opcao == "S")
		{
			limpa()
			retorne verdadeiro
		}
		senao se(opcao == "NÃO" ou opcao == "N")
		{
			limpa()
			retorne falso
		}
		senao
		{
			escreva("\nEscreva uma resposta válida!\n\n")
			deseja_voltar_menu()
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4075; 
 * @DOBRAMENTO-CODIGO = [12, 23, 155, 187, 217, 249, 281, 385, 437, 477, 522, 554, 709, 835, 910, 942, 950, 988, 996, 1020, 1028, 1039, 1049, 1057, 1068, 1081, 1129, 1144, 1154, 1163, 1172, 1181, 1190, 1200, 1237];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
