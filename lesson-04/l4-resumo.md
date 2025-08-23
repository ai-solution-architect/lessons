#### Briefing: Conceitos de Machine Learning I - Regressão
**Data:** 26 de Outubro de 2023
**Fonte:** Excertos de "4 - Machine Learning Concepts 1 - Regression"
**Instrutor:** Faisal Nazir

##### 1. Visão Geral da Aprendizagem Supervisionada vs. Não Supervisionada

A aula começa diferenciando os dois principais paradigmas da aprendizagem de máquina:

*   **Aprendizagem Supervisionada ("Learning with a teacher")**:
    *   **Conceito:** Treina o computador usando exemplos onde as **respostas corretas já são conhecidas** (dados rotulados).
    *   **Objetivo:** "Goal is prediction" – **prever respostas para novos dados**.
    *   **Exemplos Comuns:** Detecção de spam em e-mail, diagnóstico médico, previsão de preços, reconhecimento de voz, previsão de preços de casas, reconhecimento de imagem.
    *   **Paralelo:** "Pense nisso como – Ensinar uma criança a reconhecer animais mostrando-lhes fotos com rótulos".
    *   **Categorias Principais:** **Classificação** (saída de categorias discretas) e **Regressão** (saída de valores contínuos).

*   **Aprendizagem Não Supervisionada ("Learning without a teacher")**:
    *   **Conceito:** Fornece dados ao computador **sem as respostas "certas"**.
    *   **Objetivo:** "Goal is discovery" – **encontrar padrões ocultos, grupos ou estruturas** nos dados que humanos talvez não tenham notado.
    *   **Exemplos Comuns:** Segmentação de clientes, motores de recomendação, detecção de fraude, compressão de dados, detecção de anomalias.
    *   **Paralelo:** "Pense nisso como – Dar a alguém uma caixa de itens misturados e pedir para que a organize como achar melhor".
    *   **Categorias Principais:** Clustering, Redução de Dimensionalidade, Regras de Associação.

A principal diferença no tipo de saída é que a Classificação lida com "Categorias discretas" enquanto a Regressão lida com "Valores contínuos".

##### 2. Regressão vs. Classificação

A aula aprofunda a distinção entre Regressão e Classificação, ambas subcategorias da Aprendizagem Supervisionada:

*   **Regressão:**
    *   **Definição:** "Regression analysis is a statistical method used to **understand relationships between variables**".
    *   **Objetivo:** **Prever resultados contínuos** (como preços, temperaturas, vendas).
    *   **Função:** Ajuda a entender como as mudanças nas entradas afetam as saídas e a quantificar as relações entre as variáveis.
    *   **Exemplos Visuais:** Gráficos de dispersão com uma linha de regressão linear mostrando a relação entre variáveis contínuas.

*   **Classificação:**
    *   **Definição:** "Classification is a supervised learning task where we **predict discrete class labels** for new instances based on training data".
    *   **Objetivo:** Prever **rótulos de classe discretos** (e.g., "cat" vs. "dog").
    *   **Exemplos Visuais:** Gráficos que separam pontos de dados em grupos distintos, cada um representando uma classe.

##### 3. Casos de Uso de Alto Nível para Regressão

A Regressão é uma ferramenta versátil com aplicações em diversas áreas:

*   **Financeiro e Negócios:**
    *   Prever preços de ações.
    *   Estimativa de vendas e receita.
    *   Previsão de valores de propriedades.
    *   Cálculo de prêmios de seguro personalizados.
*   **Consumo e Estilo de Vida:**
    *   Prever demanda de restaurantes.
    *   Previsão de consumo de energia.
    *   Estimativa de tempos de entrega.
    *   Prever classificações de filmes.
*   **Saúde e Ciência:**
    *   Estimativa do tempo de recuperação do paciente.
    *   Cálculo de dosagem de medicamentos.
    *   Previsão de rendimento de colheitas.

##### 4. Conceitos de Regressão: Avaliação do Modelo

Para avaliar a qualidade de um modelo de regressão, são usadas métricas específicas:

*   **R² (R-Quadrado) - Coeficiente de Determinação:**
    *   **Definição:** "Mede o quanto o modelo **explica a variação na variável alvo**".
    *   **Fórmula:** R² = 1 - (SS_res / SS_tot).
    *   **Intervalo:** **0 a 1** (pode ser negativo para modelos muito ruins).
    *   **Significado:** Indica a "Porcentagem da variância da variável alvo que seu modelo captura". Um R² de 0.965, como mostrado em um exemplo, sugere que o modelo explica 96.5% da variância.

*   **RMSE (Root Mean Squared Error):**
    *   **Definição:** "Mede a **magnitude média dos erros de previsão** nas mesmas unidades que a variável alvo".
    *   **Fórmula:** √(1/n x Σ(y_actual - y_predicted)²).
    *   **Intervalo:** **0 a ∞** (menor é melhor).
    *   **Unidades:** Mesmas unidades da variável alvo (e.g., dólares, metros, anos). Um RMSE de 0.678 em um exemplo indica um erro médio de previsão.

##### 5. Técnicas de Regressão Detalhadas

A aula explora três técnicas de regressão:

###### 5.1. Regressão Linear (com Extensão Polinomial)

*   **Regressão Linear:**
    *   **Prós:** Simples, interpretável, rápida.
    *   **Contras:** "**Assume linearidade**, sensível a *outliers*".
    *   **Código de Exemplo:** Demonstra a criação, ajuste e avaliação de um modelo `LinearRegression` usando `sklearn`.

*   **Regressão Polinomial:**
    *   "A regressão polinomial pode **capturar curvas e padrões não lineares**".
    *   Permite qualquer grau de regressão polinomial.
    *   **Atenção:** "Graus polinomiais mais altos podem levar a *overfitting* (ajuste ao ruído)".
    *   **Comparação:** Um exemplo mostra que a Regressão Linear para dados quadráticos tem R² de 0.888 e RMSE de 1.568, enquanto a Regressão Polinomial (grau=3) atinge R² de 0.963 e RMSE de 0.896, indicando melhor ajuste para dados não lineares.

###### 5.2. Regressão: Árvores de Decisão

*   **Descrição:** "**Divide os dados em regiões com previsões constantes**".
*   **Estrutura da Árvore:**
    *   **Nó Raiz:** Todos os *samples* (ex: 1000 *samples*, preço médio $425,000, alto MSE).
    *   **Nós Internos:** Condições de divisão (ex: "Square Feet <= 1800").
    *   **Nós Folha:** Previsões de preço final (média dos *samples* agrupados).
*   **Como Funciona:** Segue o caminho de decisão com base nas características até atingir um nó folha para obter o preço previsto.
*   **Qualidade:** O **MSE diminui** ao longo da árvore (melhor homogeneidade); menos *samples* nas folhas podem indicar *overfitting*.
*   **Regressão vs. Classificação com Árvores de Decisão:**
    *   Regressão prevê "**valores contínuos** (preços) não classes discretas".
    *   Usa **MSE (Mean Squared Error) para divisões** em vez de Gini impurity.
    *   Valores das folhas são **médias**, não classes majoritárias.
*   **Prós:** "**Lida com não linearidade**, não precisa de escalonamento".
*   **Contras:** "**Propenso a *overfitting*, instável**".
*   **Casos de Uso:** Relações não lineares, regras interpretáveis.
*   **Código de Exemplo:** Demonstra a criação de um `DecisionTreeRegressor` com limite de profundidade e visualização da árvore.

###### 5.3. Regressão: XGBoost

*   **Conceito Principal:** "**XGBoost constrói muitas árvores de decisão 'fracas' sequencialmente, onde cada nova árvore aprende a corrigir os erros de todas as árvores anteriores combinadas**".
*   **Como Funciona:**
    *   **Aprendizagem Sequencial:** As árvores são construídas uma após a outra, corrigindo erros.
    *   **Correção de Erros:** Cada nova árvore foca nos *samples* que as árvores anteriores previram mal.
    *   **Baseado em Gradiente:** Usa gradientes da função de perda para determinar o que a nova árvore deve aprender.
    *   **Previsão por Conjunto (Ensemble Prediction):** A previsão final combina as saídas de todas as árvores com votação ponderada.
*   **Principais Vantagens:**
    *   "**Alto Desempenho:** Frequentemente vence competições de *machine learning*".
    *   "**Lida com Dados Ausentes:** Tratamento integrado para valores ausentes".
    *   "**Regularização:** Previne *overfitting* através de regularização L1/L2".
    *   "**Importância da Característica:** Calcula automaticamente quais características são mais importantes".
    *   "**Flexível:** Funciona para problemas de classificação, regressão e *ranking*".
*   **Prós:** "**Excelente desempenho, lida com valores ausentes, regularização, processamento paralelo**".
*   **Contras:** "**Mais parâmetros para ajustar, pode ser propenso a *overfitting* se não ajustado cuidadosamente**".
*   **Código de Exemplo:** Mostra como criar e ajustar um `XGBRegressor` com diversos parâmetros.

##### 6. Comparação de Algoritmos

A apresentação compara o desempenho dos algoritmos discutidos para diferentes tipos de dados:

*   **Dados Lineares:**
    *   Regressão Linear (OLS), Regressão Polinomial, XGBoost e Árvore de Decisão mostram **R² Score semelhante e alto (próximo a 1.0)**.
    *   **XGBoost e Regressão Polinomial têm os menores RMSE**, indicando os melhores ajustes para dados lineares nesse contexto específico de comparação.
*   **Dados Quadráticos (Não Lineares):**
    *   **Regressão Polinomial e XGBoost se destacam com os mais altos R² Scores (próximos a 1.0) e os menores RMSE**.
    *   A **Regressão Linear (OLS) apresenta o pior desempenho** (R² de 0.888 e RMSE de 1.28, o mais alto entre os comparados para dados quadráticos), confirmando sua limitação para dados não lineares.
    *   Árvore de Decisão mostra um bom desempenho, mas ligeiramente inferior ao Polinomial e XGBoost para os dados quadráticos apresentados.

##### 7. Conclusão e Tarefa

A aula conclui com uma estrutura fundamental dos algoritmos de Machine Learning (Supervisionado -> Regressão/Classificação; Não Supervisionado) e uma tarefa que solicita a **comparação do desempenho de Regressão Linear, XGBoost e Árvores de Decisão em um problema de regressão escolhido**. Os alunos são incentivados a usar ferramentas como o **Gemini** para auxiliar no código de comparação.

---
