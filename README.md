# Módulo de Simulação

Neste módulo serão realizadas as simulações que retornam informações que serão solicitadas pelo funcionário sobre descontos e adicionais em folha de pagamento.


## Sobre o Programa
No código se encontram duas macrodivisões entre as funções: as que solicitam e as que calculam.


## 1. Funções de Criação de Tela

* **_menu_** 

A função menu, tem como objetivo dar ao usuario 14 opções, sendo 13 funcionais, ou seja, que retornam ao funcionário informações com base em entradas, e uma de saida, permitindo a finalização de programa.. 

* **_solicita_adicional_hora_noturna_**

Recebe informações para o cálculo do adicional de hora noturna.

* **_solicita_adicional_hora_extra_**

Recebe dados relacionados à quantidade extralaboral trabalhada para o cálculo de adicional de hora extra

* **_solicita_adicional_periculosidade_**

Solicita a informação quanto ao ambiente de trabalho, se possui periculosidade ou não.

* **_solicita_beneficio_fgts_**

O solicita_beneficio_fgts, tem como função solicitar ao usuario o seu salário bruto e informalo o valor do beneficio

* **_solicita_custo_beneficio_vale_transporte_**

Recebe alguns parâmetros para ser avaliado o custo benefício do vale transporte e informa se a empresa o recomenda ou não.

* **_solicita_contracheque_**

Descreve informações gerais quanto à folha de pagamento, com base no que é informado.

* **_solicita_direito_ao_seguro_desemprego_**

solicita a quantidade de vezes que foi solicitado o seguro desemprego e o total acomulado durante o periodo de trabalho e retorna se tem direito ou não.

* **_solicita_direito_abono_pis_**

Lê parâmetros pesquisados para se ter o direito ao abono do PIS e retorna se possui o direito, e se sim, também o quanto será depositado.

* **_solicita_ferias_**

O solicita ferias, tem como função solicitar ao usuario o seu salário bruto e informalo o valor adcional de um terso do salario bruto.

* **_solicita_irrf_** 

O solicita irrf, tem como função solicitar ao usuario o seu salário bruto e informalo o valor do inposto de renda

* **_solicita_inss_**

O solicita inss, tem como função solicitar ao usuario o seu salário bruto e informalo o valor descontado.

* **_solicita_multa_fgts_** 

Tem como função solicitar ao usuario o valor do depósito total recebido durante o período e perguntar se houve acordo entre o usuario e empregador.

## 2. Funções que Realizam Cálculos

* **_calculo_adicional_periculosidade_**

Calcula e retorna o valor de adicional de periculosidade.

* **_calculo_abono_pis_**

Calcula e retorna o valor a ser recebido pelo funcionário que possui direito ao abono do PIS.

* **_calculo_adicional_noturno_**

Calcula e retorna o valor a ser depositado pelas horas noturnas trabalhadas.

* **_calculo_beneficio_do_fgts_**

Calcula e retorna o valor a ser depositado de FGTS.

* calculo_desconto_do_inss

Calcula e retorna o valor de desconto do INSS com base somente no salário bruto.

* **_calculo_ferias_**
 
Calcula e retorna o valor a ser depositado adicionalmente ao salário no mês em que se teve as férias.

* **_calculo_hora_extra_**

Calcula e retorna o valor a ser depositado pelas horas extras trabalhadas.

* **_calculo_imposto_de_renda_**

Calcula e retorna o valor de desconto do Imposto de Renda com base no que já foi descontado no INSS.

* **_calculo_multa_fgts_**

Calcula e retorna o valor da multa do FGTS, usando diferentes meios de cálculo caso tenha havido acordo entre empregado e empregador.

* **_calculo_total_adicional_**

Calcula e retorna o valor do salário bruto com todos os adicionais.

* **_calculo_vale_transporte_**

Calcula e retorna o valor a ser descontado no salário pelo vale transporte.

## 3. Funções Auxiliares

* **_deseja_voltar_menu_**

Pergunta ao usuário se ele deseja retornar ao menu e retorna a resposta.

# Módulo de Gestão de Funcionários

Este módulo é destinado a organizar as informações dos funcionários que forem cadastrados.

## 1. Função de Criação de Telas

* **_solicita_cadastro_funcionario_**
 
 Recebe informações do funcionário e os ordena e guarda em um arquivo de texto.

## 2. Função de Realização de Cadastro

* **_cadastro_funcionario_**

Esta função não se encaixa nas categorias que já mencionamos, porquanto ela realiza a ordenação e escrita dos dados dos funcionários informados em um arquivo de texto.

## 3. Funções de Formatação do Texto

Estas funções estão diretamente subordinadas à função cadastro_funcionario, pois é nela que seus resultados fazem efeito.

* **_separa_e_formata_endereco_**

Realiza uma formatação inicial no texto com os dados recebidos pela API ViaCEP.

* **_separa_bairro_**

Separa e retorna a informação que contém o bairro.

* **_separa_cep_**

Separa e retorna a informação que contém o CEP.

* **_separa_complemento_**

Separa e retorna a informação que contém o complemento.

* **_separa_logradouro_**

Separa e retorna a informação que contém o logradouro.

* **_separa_localidade_**

Separa e retorna a informação que contém a localidade.

* **_separa_uf_**

Separa e retorna a informação que contém a unidade federal.

## 4. Funções Auxiliares

* **_deseja_cadastrar_outro_funcionario_**

Pergunta ao usuário se ele deseja cadastrar outro funcionário e retorna a resposta.


# Referências Bibliográficas

* Seguro desemprego: https://www.gov.br/trabalho-e-previdencia/pt-br/servicos/trabalhador/seguro-desemprego/seguro-desemprego-formal


* Abono do PIS: https://economia.uol.com.br/guia-de-economia/pis-como-consultar-o-seu-e-quem-tem-direito-ao-abono-salarial.html


* INSS: https://www.calcule.net/trabalhista/calculo-de-inss/


* IRRF: https://www.calcule.net/trabalhista/calculo-imposto-de-renda-irrf/


* Vale-transporte: https://www.oitchau.com.br/blog/vale-transporte-vt-como-calcular/#:~:text=C%C3%A1lculo%20na%20pr%C3%A1tica%3A&text=Portanto%3A%2022%20dias%20x%20R,R%24120%20em%20sua%20folha.


* FGTS: https://www.calcule.net/trabalhista/calculo-fundo-de-garantia-fgts/


* FGTS (Multa): https://www.oitchau.com.br/blog/multa-rescisoria/#:~:text=Se%20a%20empresa%20e%20o,20%25%20%3D%20R%24%20600.


* Férias: https://www.calcule.net/trabalhista/calculo-de-ferias/#topnav


* Adicional Hora Noturna: https://www.gupy.io/blog/adicional-noturno


* Adicional Hora Extra: https://www.pontotel.com.br/como-calcular-hora-extra/#:~:text=E%20sobre%20o%20c%C3%A1lculo%20do,superior%20%C3%A0%20da%20hora%20normal.%E2%80%9D


* Adicional de Periculosidade: https://forbusiness.vagas.com.br/blog/adicional-de-periculosidade/#:~:text=periculosidade%20e%20insalubridade%3F-,O%20que%20%C3%A9%20adicional%20de%20periculosidade%3F,e%20gratifica%C3%A7%C3%B5es%20pagas%20pelo%20empregador.








 













 
 
 
 
 
 
 
 
