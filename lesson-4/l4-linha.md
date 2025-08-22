
# L4: Linha do Tempo - Conceitos de Machine Learning I: Regressão

#### Linha do Tempo Detalhada

*   **Evento Inicial (Sem data específica, mas representa o início da lição 04)**
    *   **Apresentação da Lição 04:** O instrutor, **Faisal Nazir**, inicia a lição intitulada "Machine Learning Concepts I - Regression" como parte do curso "AI Solution Architecture" da **Elvtr**.
    *   **Regras da Casa:** São apresentadas as regras para a sessão, incluindo a recomendação de **manter a câmera ligada**, o pedido para **se mutar para não interromper** o instrutor, e as instruções para usar o recurso "**Raise hand**" e "**Q&A**" no Zoom para fazer perguntas.

#### Introdução aos Conceitos Fundamentais de Machine Learning

*   **Visão Geral da Agenda:** A agenda da lição é apresentada, cobrindo "Visão Geral do Aprendizado Supervisionado vs. Não Supervisionado" e "Técnicas de Regressão" (Regressão Linear, XGBoost Regressor, Árvores de Decisão).
*   **Aprendizado Supervisionado:**
    *   É introduzido como "Learning with a teacher".
    *   O computador é treinado com exemplos que possuem as **respostas corretas**.
    *   O objetivo é a **previsão**.
    *   Exemplos incluem **detecção de spam, diagnóstico médico e previsão de preços**.
*   **Aprendizado Não Supervisionado:**
    *   É introduzido como "Learning without a teacher".
    *   O computador recebe dados **sem as respostas corretas** para descobrir padrões.
    *   O objetivo é a **descoberta**.
    *   Exemplos incluem **segmentação de clientes e motores de recomendação**.
*   **Comparação Supervisionado vs. Não Supervisionado:** Uma tabela detalhada compara os dois tipos de aprendizado em termos de categorias principais (**Classificação, Regressão** vs. **Clustering, Redução de Dimensionalidade, Regras de Associação**), tipo de saída, algoritmos comuns, métodos de avaliação e casos de uso.

#### Aprofundando em Regressão

*   **Definição de Regressão:** É um método estatístico para **entender as relações entre variáveis**. É utilizada para **prever resultados contínuos** (como preços, temperaturas, vendas), entender como as mudanças nos *inputs* afetam os *outputs*, e **quantificar as relações** entre variáveis.
*   **Regressão vs. Classificação:** Uma distinção clara é feita:
    *   **Regressão** prevê **valores contínuos**.
    *   **Classificação** prevê **rótulos de classes discretas**.
    *   A distinção é complementada com exemplos visuais e casos de uso.
*   **Casos de Uso de Regressão:**
    *   **Finanças e Negócios:** Previsão de preços de ações, vendas, valores de imóveis, prêmios de seguro.
    *   **Consumo e Estilo de Vida:** Demanda de restaurantes, consumo de energia, tempos de entrega, avaliações de filmes.
    *   **Saúde e Ciência:** Tempo de recuperação de pacientes, dosagem de medicamentos, rendimento de colheitas.
*   **Métricas de Regressão:**
    *   **R² (Coeficiente de Determinação):** Mede o quanto o modelo **explica a variação** na variável alvo.
    *   **RMSE (Root Mean Squared Error):** Mede a **magnitude média dos erros** de previsão.
*   **Regressão Polinomial:** Demonstra que a regressão pode prever **padrões não lineares** com uma pequena extensão. Pode capturar curvas e padrões não lineares.
    *   **Prós da Regressão Linear:** Simples, interpretável, rápido.
    *   **Contras da Regressão Linear:** Assume linearidade, sensível a *outliers*.
*   **Código para Regressão Linear:** Um exemplo de código Python é fornecido para **criar, ajustar, fazer previsões, obter parâmetros e avaliar** um modelo de Regressão Linear usando *sklearn*.

#### Técnicas Específicas de Regressão

*   **Árvores de Decisão para Regressão:**
    *   **Estrutura da Árvore:** Explicada a estrutura da árvore (**nó raiz, nós internos, nós folha**) com um exemplo de previsão de preço de casas.
    *   **Funcionamento:** Detalhado como seguir um caminho de decisão com base nas características da casa para obter um preço previsto.
    *   **Indicadores de Qualidade:** O **MSE (Mean Squared Error) diminui** ao longo da árvore (melhor homogeneidade), e **menos amostras nas folhas podem indicar *overfitting***.
    *   **Prós:** Lida com não linearidade, não precisa de escalonamento.
    *   **Contras:** Propenso a *overfitting*, instável.
    *   **Código para Árvores de Decisão:** Um exemplo de código Python é fornecido para criar um `DecisionTreeRegressor` e visualizar a árvore usando *sklearn*.
*   **XGBoost para Regressão:**
    *   **Conceito Central:** Constrói muitas árvores de decisão "**fracas**" sequencialmente, onde cada nova árvore **corrige os erros** das árvores anteriores combinadas.
    *   **Funcionamento:** Detalhado o aprendizado sequencial, correção de erros, abordagem baseada em gradiente e previsão de *ensemble*.
    *   **Vantagens Principais:** Alto desempenho, tratamento de dados ausentes, regularização e flexibilidade.
    *   **Prós:** Excelente desempenho, tratamento de valores ausentes, regularização, processamento paralelo.
    *   **Contras:** Mais parâmetros para ajustar, propenso a *overfitting* se não ajustado cuidadosamente.
    *   **Código para XGBoost:** Um exemplo de código Python é fornecido para criar e ajustar um modelo `XGBRegressor` usando a biblioteca *xgboost*.

#### Comparação de Algoritmos

*   **Comparação para Dados Lineares:** Uma comparação visual do desempenho (**R² Score e RMSE**) entre Regressão Linear (OLS), Regressão Polinomial, XGBoost Regressor e Árvore de Decisão para dados lineares.
*   **Comparação para Dados Quadráticos:** Uma comparação visual do desempenho (**R² Score e RMSE**) entre Regressão Polinomial, XGBoost Regressor, Árvore de Decisão e Regressão Linear (OLS) para dados quadráticos.

#### Conclusão da Lição

*   **Classificação Fundamental de Modelos ML:** Um diagrama resume a segmentação fundamental de modelos de Machine Learning em **supervisionados (regressão, classificação)** e **não supervisionados**.
*   **Tarefa 04 (Assignment #04):**
    *   **Descrição:** Os alunos são instruídos a **escolher um problema de regressão** e **comparar o desempenho de Regressão Linear, XGBoost e Árvores de Decisão**, documentando suas descobertas.
    *   **Ferramentas:** Os alunos podem usar um documento de resumo ou um *notebook* Colab. A ferramenta **Gemini** é sugerida para ajudar a escrever o código de comparação.
    *   **Prazo:** 7 de agosto, 23:59 PM BST.
    *   **Pontuação:** 10 pontos.
*   **Q&A:** Uma seção para perguntas e respostas é apresentada, incentivando **perguntas curtas e concisas**.
*   **Pesquisa de Satisfação:** Os participantes são convidados a preencher uma breve pesquisa no final da sessão para ajudar a **melhorar a experiência de aprendizado**.

#### Elenco de Personagens

*   **Faisal Nazir:** O **instrutor** da lição "4 - Machine Learning Concepts 1 - Regression" no curso "AI Solution Architecture" da Elvtr. Ele é responsável por apresentar e explicar os conceitos de aprendizado supervisionado e não supervisionado, bem como as técnicas de regressão, incluindo Regressão Linear, Árvores de Decisão e XGBoost.
*   **Alunos (implícitos):** Os **participantes da lição**. As regras da casa e a "Assignment #04" indicam uma audiência ativa que deve seguir regras, fazer perguntas e completar tarefas.
*   **Gemini (ferramenta):** Uma ferramenta sugerida na "Assignment #04" para **auxiliar os alunos na escrita de código** de comparação para os modelos de regressão. Sua função é de um assistente de codificação.
*   **Elvtr (organização):** A **plataforma ou instituição** que oferece o curso "AI Solution Architecture" e esta lição específica. Ela fornece a estrutura educacional e os recursos para o aprendizado.
