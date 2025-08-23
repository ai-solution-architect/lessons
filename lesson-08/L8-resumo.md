
# Deep Learning: Processamento de Linguagem Natural (NLP), Visão Computacional e Séries Temporais

Este documento aborda as **técnicas avançadas de Deep Learning**, com foco em três áreas principais: Processamento de Linguagem Natural (NLP), Visão Computacional (CV) e Análise de Séries Temporais. Ele destaca conceitos fundamentais, arquiteturas de modelos, pipelines de processamento e aplicações práticas em cada domínio.

## Visão Geral e Conceitos Fundamentais

A lição "Advanced Deep Learning Techniques" está inserida no currículo de "AI Solution Architecture". A agenda da lição cobre os seguintes tópicos:

*   **Natural Language Understanding (NLU)**: Tokenização, Modelos de Embedding, Redes Neurais Recorrentes (RNN, LSTM, GRU).
*   **Inovações em Análise de Séries Temporais**: Previsão, Classificação, Prophet, RNN, Transformers.
*   **Visão Computacional**: Detecção de Objetos e Classificação de Imagens usando Redes Neurais Convolucionais (CNN).

Uma rápida recapitulação de conceitos essenciais de Machine Learning inclui:

*   **Arquitetura de Deep Learning**: Redes neurais utilizam camadas de entrada, ocultas e de saída com conexões ponderadas e funções de ativação.
*   **Matemática Essencial de ML**: O ML fundamentalmente usa operações de matriz com pesos e vieses em equações do tipo y=mx+b.
*   **Loop de Treinamento de Rede Neural**: Envolve passagem direta (forward pass), cálculo de perda, retropropagação (backpropagation) e otimização de pesos.
*   **Otimização por Gradiente Descendente**: As redes minimizam a perda usando algoritmos de gradiente descendente com hiperparâmetros ajustáveis.
*   **Estrutura de Aprendizagem por Reforço**: Agentes de RL interagem com ambientes, tomam ações, recebem recompensas e aprendem políticas ótimas.

## Processamento de Linguagem Natural (NLU)

NLU, uma parte do Processamento de Linguagem Natural (NLP), foca em **capacitar computadores a entender, interpretar e gerar linguagem humana de forma significativa**. O processo envolve ensinar máquinas a compreender texto e fala e responder em linguagem natural.

### Pipeline de NLP

O pipeline de NLP é um processo sequencial para transformar texto bruto em representações utilizáveis por modelos de ML:

1.  **Coleta de Dados**: Coleta de texto de várias fontes.
2.  **Pré-processamento de Texto**: Limpeza e normalização de dados de texto, que inclui:
    *   **Tokenização**: Divide o texto em tokens individuais (palavras, subpalavras ou caracteres), formando a base de todo o processamento de texto. Exemplo: "Hello World! I'm learning NLP techniques." se torna ['Hello', 'World!', 'I\'m', 'learning', 'NLP', 'techniques.'].
    *   Minusculização, remoção de pontuação, stop words e lematização/stemming.
3.  **Engenharia de Características**: Conversão de texto para representações numéricas.
4.  **Treinamento de Modelo**: Aplicação de algoritmos de machine learning.
5.  **Avaliação e Implantação**: Teste e implantação do modelo final.

### Embedding

São **representações vetoriais densas que capturam relações semânticas entre palavras**. A inovação chave é capturar relações semânticas em um espaço vetorial contínuo, tipicamente com 50-1024 dimensões por palavra.

*   **Modelos de Embedding**:
    *   **Word2Vec**: Modelos Skip-gram e CBOW. Treinamento rápido, bom para relações semânticas básicas. Embeddings estáticos - um vetor por palavra.
    *   **Glove**: Estatísticas globais de co-ocorrência de palavras-palavras. Combina informações locais e globais. Melhor desempenho em tarefas de analogia de palavras.
    *   **FastText**: Informação de subpalavras com n-gramas de caracteres. Lida com palavras fora do vocabulário (OOV). Melhor para linguagens morfologicamente ricas.
    *   **BERT/Transformers**: Embeddings contextuais usando mecanismos de atenção. A mesma palavra obtém vetores diferentes com base no contexto. Desempenho de ponta.

### Recurrent Neural Networks (RNNs)

RNNs são uma classe de redes neurais artificiais onde as conexões entre os nós formam um grafo direcionado ao longo de uma sequência temporal. Isso permite que elas exibam comportamento dinâmico temporal.

*   **Uso de Memória Interna**: Ao contrário das redes feedforward, as RNNs podem usar seu estado interno (memória) para processar sequências de entrada de comprimento variável.
*   **Conexão Recorrente**: O estado oculto h(t-1) do passo de tempo anterior é realimentado no cálculo atual, criando um loop que permite a memória.
*   **Problema do Gradiente Desvanecente**: RNNs simples lutam com dependências de longo prazo devido a gradientes que diminuem exponencialmente ao longo de muitos passos de tempo.
*   **Casos de Uso**: Melhores para sequências curtas, modelagem de linguagem simples e quando a eficiência computacional é crítica.

### Long Short-Term Memory (LSTM) e Gated Recurrent Unit (GRU)

LSTMs e GRUs são variantes de RNNs que resolvem o problema do gradiente desvanecente.

*   **LSTM**: Soluciona o problema através de um **mecanismo de gating sofisticado que controla o fluxo de informações**. Inclui:
    *   **Forget Gate (F)**: Decide qual informação descartar.
    *   **Input Gate (I)**: Controla qual informação armazenar.
    *   **Output Gate (O)**: Determina qual parte do estado da célula vai para a saída.
    *   **Cell State Highway (C(t))**: Permite que os gradientes fluam inalterados, resolvendo o problema do gradiente desvanecente para sequências longas.

*   **GRU**: Simplificam a arquitetura LSTM mantendo a maioria de seus benefícios. Combina o forget gate e o input gate em um único **"update gate"**, resultando em menos parâmetros e computação mais rápida. Inclui:
    *   **Reset Gate (R)**: Determina quanta informação passada esquecer.
    *   **Update Gate (Z)**: Decide quanto do estado oculto passado manter e quanta informação nova adicionar.

### Resumo de NLP

| Componente       | Modelos                   | Descrição                                                    | Complexidade |
| :--------------- | :------------------------ | :----------------------------------------------------------- | :----------- |
| Word Embeddings  | Word2Vec, GloVe, FastText | Representação de palavras                                    | Média        |
| Transformers     | BERT, GPT, T5             | Modelagem baseada em atenção                                 | Alta         |
| Tokenization     | BPE, WordPiece            | Pré-processamento de texto                                   | Baixa        |
| RNN/LSTM/GRU     | LSTM, GRU, BiLSTM         | Modelagem sequencial                                         | Média        |
| Entity Recognition | spaCy, BERT-NER           | Extração de informação (Reconhecimento de Entidades Nomeadas) | Média        |

## Visão Computacional (CV)

Visão Computacional envolve a capacitação de computadores para **"ver" e interpretar imagens**.

### Pipeline de CV

O pipeline de CV é estruturado para processar e analisar imagens:

1.  **Aquisição de Imagem**: Imagens brutas de várias fontes.
2.  **Pré-processamento de Imagem**: Redimensionamento, normalização, redução de ruído, aumento de dados, conversão de espaço de cor.
3.  **Extração de Características**: Descritores tradicionais (HOG, SIFT, LBP) e técnicas de deep learning.
4.  **Treinamento de Modelo**: Modelos tradicionais de ML a CNNs modernas e Vision Transformers.
5.  **Avaliação**: Métricas de classificação, detecção e segmentação.
6.  **Implantação e Otimização**: Implementação em dispositivos de borda, APIs de nuvem e otimização de modelos.

### Convolutional Neural Networks (CNNs)

CNNs são redes neurais especializadas para processamento de imagens.

*   **Convolução**: O processo central onde um **"Kernel/Filtro"** (ex: 3x3) se move sobre um **"Mapa de Características de Entrada"** (ex: 5x5) para detectar padrões (ex: "Detecção de Bordas"), criando um **"Mapa de Características de Saída"**. As conexões mostram que o cálculo em cada passo de tempo depende da entrada atual e da informação transportada do passo de tempo anterior através do estado oculto.
*   **Pipeline Completo de CNN**: Mostra o fluxo de dados de uma imagem de entrada (ex: 224x224x3) através de camadas convolucionais, Max Pooling, Flatten e Fully Connected, resultando em previsões de 10 classes.

### Resumo de CV

| Tarefa                 | Modelos                | Casos de Uso                                  | Nível      |
| :--------------------- | :--------------------- | :-------------------------------------------- | :--------- |
| Classificação de Imagem | CNN, ResNet, EfficientNet | Imagens médicas, controle de qualidade        | Iniciante  |
| Detecção de Objeto     | YOLO, R-CNN, SSD       | Direção autônoma, segurança                   | Intermediário |
| Segmentação de Imagem  | U-Net, Mask R-CNN      | Análise médica, edição                        | Avançado   |
| Reconhecimento Facial  | FaceNet, DeepFace      | Segurança, mídias sociais                     | Intermediário |
| OCR                    | CRNN, TrOCR            | Processamento de documentos (Reconhecimento Óptico de Caracteres) | Intermediário |

## Análise de Séries Temporais

Análise de Séries Temporais é uma **técnica estatística usada para analisar pontos de dados coletados ou registrados em intervalos de tempo específicos para identificar padrões, tendências e fazer previsões**. O Deep Learning revolucionou a análise de séries temporais com modelos poderosos que podem capturar dependências temporais complexas.

### Conceitos de Séries Temporais

*   **Tendência**: Movimento de longo prazo nos dados (ascendente, descendente, estacionário).
*   **Sazonalidade**: Padrões regulares e previsíveis (ciclos diários, semanais, mensais, anuais).
*   **Cíclico**: Flutuações irregulares de longo prazo (ciclos econômicos, ciclos de negócios).
*   **Ruído**: Variações aleatórias e imprevisíveis (erros de medição, eventos inesperados).

### Métodos de Deep Learning para Séries Temporais

*   **CNN 1D para Séries Temporais**: Filtros convolucionais detectam padrões locais. Pooling reduz a dimensionalidade. Bom para reconhecimento de padrões em sequências.
*   **Classificadores LSTM/GRU**: Processam sequências inteiras. O estado oculto final é usado para classificação. Bons para sequências com dependências de longo prazo.
*   **Híbrido CNN-LSTM**: A CNN extrai características locais, e a LSTM modela dependências temporais. Combina os benefícios de ambas as arquiteturas.
*   **Modelos Baseados em Atenção**: Focam em partes importantes da sequência. Arquiteturas Transformer. Boa interpretabilidade através dos pesos de atenção.
*   **ResNet para Séries Temporais**: Conexões residuais para redes muito profundas. ResNet 1D adaptada para séries temporais. Bom para padrões temporais complexos.
*   **Abordagens Multi-Escala**: Processam séries temporais em diferentes resoluções. Capturam padrões finos e grosseiros.

### Pipeline de Séries Temporais

1.  **Coleta de Dados**: Dados ordenados no tempo de APIs, bancos de dados, mercados financeiros, dispositivos IoT.
2.  **Pré-processamento de Dados**: Tratamento de valores ausentes, detecção de outliers, resampling, suavização, normalização.
3.  **Engenharia de Características**: Características de defasagem (lag features), estatísticas móveis (rolling statistics), decomposição sazonal.
4.  **Seleção e Treinamento de Modelo**: Modelos estatísticos (ARIMA, SARIMA), modelos de ML, deep learning, ensemble.
5.  **Avaliação**: Métricas de erro (MAE, MSE, MAPE), validação cruzada, análise de resíduos.
6.  **Implantação e Monitoramento**: Previsão em tempo real, streaming de dados, detecção de drift do modelo.

### Prophet

**Prophet, do Facebook, é uma ferramenta escalável para previsão**. Seus componentes incluem tendência, sazonalidade e feriados. É robusto a outliers e dados ausentes, fácil de interpretar e ajustar, e segue a API de modelo do sklearn.

### Resumo de Séries Temporais

| Abordagem              | Modelos                       | Descrição                                    | Velocidade |
| :--------------------- | :---------------------------- | :------------------------------------------- | :--------- |
| Estatística Tradicional | ARIMA, Prophet                | Padrões simples, interpretabilidade          | Rápido     |
| Baseada em RNN         | LSTM, GRU, BiLSTM             | Sequências longas, memória                   | Médio      |
| Baseada em CNN         | 1D CNN, ResNet1D              | Padrões locais, velocidade                   | Rápido     |
| Baseada em Transformer | Temporal Fusion Transformer, Informer | Sequências muito longas, atenção             | Lento      |
| Híbrida                | CNN-LSTM, Ensemble            | Padrões complexos, robustez                  | Médio      |
