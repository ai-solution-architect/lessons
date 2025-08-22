
# L05: Guia - Machine Learning: Classificação, Agrupamento e Dimensionalidade

Este guia de estudo foi elaborado para revisar sua compreensão sobre os conceitos de classificação e agrupamento em Machine Learning, bem como técnicas relacionadas, como Redução de Dimensionalidade.

## Fundamentos de Machine Learning

### Aprendizado Supervisionado vs. Não Supervisionado

*   **Aprendizado Supervisionado**: Um tipo de Machine Learning onde o modelo é treinado em dados que incluem tanto as entradas quanto as saídas desejadas (rótulos). Ele lida com dados rotulados para prever categorias (classificação) ou valores contínuos (regressão).
*   **Aprendizado Não Supervisionado**: Um tipo de Machine Learning onde o modelo é treinado em dados sem rótulos, buscando encontrar padrões e estruturas por conta própria. Ele trabalha com dados não rotulados para encontrar padrões ocultos, como agrupar dados (clustering) ou reduzir a dimensionalidade.

### Regressão vs. Classificação

*   **Regressão**: Um método estatístico usado para entender as relações entre variáveis e prever um **valor contínuo**.
*   **Classificação**: Uma tarefa de aprendizado supervisionado para prever **rótulos de classes discretas** para novas instâncias com base em dados de treinamento.

## Classificação

A Classificação é uma tarefa de aprendizado supervisionado cujo objetivo é prever rótulos de classes discretas para novas instâncias. Um exemplo de caso de uso é a detecção de spam de e-mail, onde os e-mails são classificados como "spam" ou "não spam".

### Conceito e Características Chave

### Tipos de Classificação

*   **Classificação Binária**: Envolve a escolha entre exatamente duas opções (por exemplo, "spam" ou "não spam").
*   **Classificação Multi-classe**: O modelo escolhe uma **única opção** de múltiplas categorias (por exemplo, classificar imagens como "gato", "cachorro" ou "pássaro").
*   **Classificação Multi-rótulo**: Permite atribuir **múltiplas categorias** a um único item (por exemplo, um filme pode ser "Comédia", "Romance" e "Drama" ao mesmo tempo).

### Algoritmos de Classificação

#### Regressão Logística

*   **O que faz e como funciona**: A Regressão Logística é uma técnica de classificação que ajuda a prever resultados de sim/não ou a probabilidade de algo acontecer. Ela funciona desenhando uma **curva em forma de "S" (função sigmoide)** para separar dois grupos. A função sigmoide mapeia qualquer valor real para um valor entre 0 e 1, representando uma probabilidade.
*   **Quando usar**: É um bom ponto de partida para muitos problemas de previsão binários.
*   **Prós e Contras**:
*   **Métricas de Avaliação**: Utiliza a Matriz de Confusão, Acurácia, Precisão, Recall e F1-Score.

#### Árvores de Decisão

*   **Como funciona**: As Árvores de Decisão classificam novos dados seguindo um caminho de respostas "sim/não" de cima para baixo, com base em divisões dos dados. Ela modela decisões como uma estrutura em forma de árvore, dividindo os dados com base em recursos para chegar a uma classificação.
*   **Vantagens principais**: Uma de suas vantagens principais é a **interpretabilidade**, pois é fácil entender a lógica por trás de uma decisão seguindo o caminho da árvore.

#### XGBoost (Extreme Gradient Boosting)

*   **Conceito central**: O XGBoost constrói sequencialmente muitas **árvores de decisão "fracas"**, onde cada nova árvore aprende a corrigir os erros das árvores anteriores combinadas. Isso o torna um algoritmo de boosting que geralmente supera uma única árvore de decisão em precisão.
*   **Processo de Classificação**:

#### K-Nearest Neighbours (K-NN)

*   **O que é**: O K-NN é um algoritmo de classificação "preguiçoso".
*   **Como funciona**: Ele é "preguiçoso" porque não tem uma fase de treinamento explícita; ele apenas armazena todos os dados de treinamento. Para fazer uma previsão para um novo ponto, ele encontra os "k" exemplos de treinamento mais próximos e atribui a classe majoritária desses vizinhos como previsão.
*   **Parâmetros Chave**: Incluem o valor de 'k', a métrica de distância e o escalonamento de features. O **escalonamento de features** é um passo de pré-processamento de dados onde as variáveis numéricas de um conjunto de dados são ajustadas para estarem em uma escala comum, importante para muitos algoritmos como K-NN.
*   **Prós e Contras**:

### Métricas de Avaliação de Classificação

A **Matriz de Confusão** é uma tabela usada para avaliar o desempenho de um algoritmo de classificação, mostrando os resultados previstos em comparação com as classes verdadeiras. Seus quatro termos principais são:

*   **Verdadeiro Positivo (TP)**: Casos positivos corretamente previstos.
*   **Falso Positivo (FP)**: Casos negativos incorretamente previstos como positivos.
*   **Falso Negativo (FN)**: Casos positivos incorretamente previstos como negativos.
*   **Verdadeiro Negativo (TN)**: Casos negativos corretamente previstos.

Outras métricas importantes incluem:

*   **Acurácia**: A proporção de previsões corretas em relação ao total de previsões. É mais apropriada para conjuntos de dados balanceados com custos de erro de classificação iguais.
*   **Precisão**: A proporção de previsões positivas corretas em relação ao total de previsões positivas feitas pelo modelo. Foca na qualidade das previsões positivas e é crítica quando os falsos positivos são custosos (por exemplo, detecção de spam).
*   **Recall (Sensibilidade)**: A proporção de casos positivos reais que foram corretamente identificados pelo modelo. Foca em capturar todos os casos positivos e é crítica quando os falsos negativos são custosos (por exemplo, diagnóstico médico).
*   **F1-Score**: A média harmônica da Precisão e do Recall, fornecendo um equilíbrio entre as duas métricas. É usada para encontrar um equilíbrio entre Precisão e Recall, especialmente com dados desbalanceados ou quando ambas as métricas são importantes.

## Agrupamento (Clustering)

*   **O que é**: O agrupamento é uma tarefa de aprendizado não supervisionado para encontrar grupos ocultos ou padrões naturais nos dados que você não conhecia previamente, com base em sua similaridade.
*   **Como funciona**: O computador mede a similaridade entre os itens e os agrupa em "clusters". É considerado aprendizado não supervisionado porque você não fornece rótulos ou "respostas certas" ao algoritmo; ele descobre os agrupamentos por conta própria.

### Algoritmo K-Means

*   **O que é**: O K-Means é um algoritmo de agrupamento não supervisionado que particiona dados em "k" clusters, minimizando as distâncias dentro de cada cluster.
*   **Como funciona (passos principais)**:
    1.  Começa escolhendo o número de clusters (**k**) antecipadamente.
    2.  Coloca "k" **centroides** aleatoriamente. O centroide é o ponto central de um cluster no algoritmo K-Means, representando a média de todos os pontos de dados nesse cluster.
    3.  Atribui cada ponto de dados ao centroide mais próximo.
    4.  Move os centroides para o centro (média) de todos os pontos atribuídos ao seu cluster.
    5.  Repete os passos 3 e 4 até que os centroides não se movam significativamente, indicando que os clusters se estabilizaram.
*   **Parâmetros Chave**: Incluem o valor de 'k', a métrica de distância, o método de inicialização e as iterações máximas.
*   **Prós e Contras**:

## Redução de Dimensionalidade

*   **O que é**: A Redução de Dimensionalidade é o processo de redução do número de features/variáveis em um conjunto de dados, mantendo as informações importantes.
*   **Por que precisamos (Maldição da Dimensionalidade)**: É necessária para lidar com a **"maldição da dimensionalidade"**, onde um número excessivo de recursos leva a um desempenho ruim do algoritmo e dificulta a visualização dos dados. Além disso, permite visualização de dados com mais de três dimensões, otimiza armazenamento e velocidade de processamento, e reduz ruído.
*   **Benefícios práticos**: Um benefício prático é permitir algoritmos mais rápidos e usar menos memória, além de reduzir o overfitting.

### Principal Component Analysis (PCA)

*   **Como funciona**: O PCA é uma técnica de redução de dimensionalidade que transforma dados de alta dimensão em um espaço de dimensão inferior. Ele funciona encontrando novos eixos (componentes principais) que capturam a maior parte da variação dos dados, projetando os dados nesses componentes principais.
*   **Aplicações Práticas**: Incluem compressão de imagem, análise genética, sistemas de recomendação e visualização de dados.
*   **Compensações**: Há um trade-off entre o ganho em algoritmos mais rápidos e melhor visualização versus o custo de alguma perda de informação e redução na interpretabilidade.

## Desenvolvimento de um Mapa Mental de Tomada de Decisão

Este guia busca ajudar a aprender a selecionar os métodos apropriados para problemas de negócio.
