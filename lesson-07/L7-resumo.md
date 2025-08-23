## L07: Resumo - Fundamentos de Deep Learning e Reinforcement Learning

Este documento resume os principais temas e conceitos apresentados nas "L7: Slides - Deep Learning & Reinforcement Learning Fundamentals" por Faisal Nazir, com foco em arquitetura de solução de IA.

### 1. Visão Geral do Deep Learning (Aprendizagem Profunda)

**Deep Learning** é uma subárea do Machine Learning que se baseia em **redes neurais artificiais** para aprender padrões complexos a partir de dados.

#### 1.1. Essenciais do Deep Learning:
*   **Perceptron Multicamadas:** Estrutura fundamental com camadas de entrada, ocultas e de saída, e funções de ativação.
*   **Redes Neurais:** Incluem redes convolucionais (CNNs), camadas de dropout e camadas densas, com aprendizado via **retropropagação (backpropagation)**.

#### 1.2. Como os Algoritmos de Deep Learning Aprendem?
O aprendizado em Deep Learning, e Machine Learning em geral, pode ser descrito pela equação linear básica: **y = mx + b**.
*   **y (Variável Dependente):** O output ou valor que estamos tentando prever.
*   **x (Variável Independente):** O feature de entrada ou variável.
*   **m (Peso):** O coeficiente da variável de entrada, ajustado durante o aprendizado para encontrar os pesos ideais que mapeiam as entradas para as saídas.
*   **b (Bias):** Um termo constante que representa o valor de y quando x é zero, proporcionando flexibilidade ao modelo.
Essas operações são estendidas para o formato de matriz em redes neurais complexas, processando múltiplos inputs, pesos e biases.

#### 1.3. Arquitetura de Redes Neurais:
As redes neurais são compostas por:
*   **Camada de Entrada (Input Layer):** Recebe os dados brutos.
*   **Camadas Ocultas (Hidden Layers):** Realizam a maior parte do processamento, aplicando pesos, biases e funções de ativação. A **profundidade** (número de camadas) e **largura** (neurônios por camada) impactam a capacidade de aprendizado.
*   **Camada de Saída (Output Layer):** Produz a previsão final do modelo.
Cada neurônio individual calcula uma "entrada líquida" (net input) a partir de suas entradas ponderadas e um bias, aplicando então uma "função de ativação" para produzir uma saída.

#### 1.4. Loop da Rede Neural:
O processo de treinamento de uma rede neural segue um ciclo iterativo:
1.  **Passagem Direta (Forward Pass):** Dados de entrada (x) são alimentados através da Rede Neural (Pesos W, Biases b) para gerar Predições (ŷ).
2.  **Cálculo da Perda (Calculate Loss):** A Função de Perda compara as Predições (ŷ) com os Valores Alvo (y) para determinar o Valor da Perda (L), que quantifica o erro.
3.  **Passagem Reversa (Backward Pass):** O Valor da Perda (L) é usado para Calcular Gradientes (Backpropagation), indicando a direção e magnitude para ajustar pesos e biases.
4.  **Otimização (Optimize):** Um Otimizador (e.g., SGD, Adam) usa os gradientes para Atualizar Pesos & Biases, com o objetivo de minimizar a perda.
Este ciclo se repete para cada época de treinamento, ajustando pesos e biases até o modelo atingir um desempenho satisfatório.

#### 1.5. Gradiente Descendente e Otimizadores:
O **Gradiente Descendente** é o algoritmo central para otimização em Deep Learning.
*   **Gradiente Descendente (GD):** Usa o dataset inteiro para calcular gradientes. Oferece um caminho suave, mas pode ser computacionalmente caro.
*   **Gradiente Descendente Estocástico (SGD):** Usa amostras únicas ou mini-batches. Resulta em um caminho ruidoso, mas é mais rápido, escalável e pode escapar de mínimos locais.
*   **Mini-Batch Gradiente Descendente:** Combina a eficiência e redução de ruído usando pequenos batches aleatórios de dados.
*   **Adam (Adaptive Moment Estimation):** Combina momentum e RMSProp, mantendo taxas de aprendizado adaptativas.
*   **Momentum:** Ajuda a acelerar o SGD na direção relevante e amortece oscilações.

#### 1.6. Parâmetros Tunáveis (Hyperparameters):
São configurações que controlam o comportamento do processo de treinamento e dependem do problema, dataset e arquitetura do modelo.
*   **Época:** Número de vezes que o dataset completo é passado pelo modelo.
*   **Taxa de Aprendizagem (η):** Controla o quanto ajustar os pesos em relação ao gradiente.
*   **Tamanho do Batch:** Número de amostras usadas para computar cada atualização dos pesos.
*   **Dropout:** Fração de neurônios aleatoriamente definidos como 0 para prevenir overfitting.
*   **Número de Camadas e Neurônios por Camada:** Definem a profundidade e largura da rede.
*   **Funções de Ativação:** Funções como ReLU, Sigmoid, Tanh aplicadas às saídas dos neurônios.
*   **Escolha do Otimizador:** O algoritmo usado para gradiente descendente (ex: Adam, SGD).
*   **Inicialização dos Pesos:** Método para definir os pesos iniciais.
*   **Força de Regularização (L1/L2):** Controla a penalidade em pesos grandes para prevenir overfitting.

#### 1.7. Técnicas de Ajuste de Hyperparâmetros:
*   **Grid Search:** Tenta todas as combinações possíveis de um conjunto predefinido de valores de hyperparâmetros.
*   **Random Search:** Amostragem aleatória de valores de hyperparâmetros de uma distribuição definida.
*   **Bayesian Optimization:** Usa um modelo probabilístico para selecionar os hyperparâmetros mais promissores.
*   **Automated Machine Learning (AutoML):** Ferramentas e frameworks que automatizam o processo de seleção de modelo e ajuste de hyperparâmetros.

### 2. Reinforcement Learning (Aprendizagem por Reforço)

**Reinforcement Learning (RL)** é uma área do Machine Learning onde um "**Agente**" aprende a tomar decisões em um "**Ambiente**" para maximizar uma "**Recompensa**" cumulativa ao longo do tempo.

#### 2.1. Conceitos Chave do Reinforcement Learning:
*   **Agente (Agent):** O aprendiz ou tomador de decisões. Percebe o estado do ambiente e toma ações.
    *   *Exemplo:* Um robô navegando em um labirinto, uma IA jogando xadrez.
*   **Ambiente (Environment):** O mundo externo com o qual o agente interage. Define as regras, dinâmicas e fornece feedback (estados e recompensas).
    *   *Exemplo:* O labirinto em si, o tabuleiro de xadrez.
*   **Estado (State - S):** Uma descrição completa do ambiente em um ponto específico no tempo. É a informação que o agente usa para tomar decisões.
    *   *Exemplo:* Posição atual do robô no labirinto.
*   **Ação (Action - A):** Uma escolha feita pelo agente a partir de um conjunto de ações possíveis, que influencia o estado do ambiente.
    *   *Exemplo:* O robô movendo-se para Norte, Sul, Leste ou Oeste.
*   **Recompensa (Reward - R):** Um sinal de feedback escalar do ambiente que indica a qualidade de uma ação. O objetivo do agente é **maximizar a recompensa cumulativa**.
    *   *Exemplo:* +1 por alcançar a saída do labirinto, -0.1 para cada passo.
*   **Política (Policy - π):** A estratégia do agente ou função de tomada de decisão. Mapeia estados para ações. O objetivo do RL é encontrar uma **política ótima (π*)** que maximize a recompensa.
*   **Função de Valor (Value Function - V ou Q):** Estima a recompensa futura cumulativa esperada que um agente pode alcançar a partir de um determinado estado (State-Value Function, V(s)) ou de tomar uma ação específica em um dado estado (Action-Value Function, Q(s, a)).

#### 2.2. Model-Based vs. Model-Free RL:
*   **Model-Based RL:** O agente aprende um modelo do ambiente (probabilidades de transição e recompensas) e o usa para planejar.
    *   *Vantagens:* Eficiente em amostras, pode planejar com antecedência.
    *   *Desvantagens:* Aprendizado do modelo pode ser complexo, erros do modelo se acumulam.
*   **Model-Free RL:** O agente aprende a política ou a função de valor diretamente da experiência, sem modelar explicitamente o ambiente.
    *   *Vantagens:* Mais simples, sem viés do modelo.
    *   *Desvantagens:* Menos eficiente em amostras.

#### 2.3. Value-Based vs. Policy-Based vs. Actor-Critic:
*   **Value-Based:** Aprende funções de valor (V ou Q) e deriva a política a partir delas.
    *   *Melhor para:* Espaços de ação discretos.
    *   *Exemplos:* Q-Learning, Deep Q-Networks (DQN).
*   **Policy-Based:** Aprende diretamente a função de política.
    *   *Melhor para:* Espaços de ação contínuos, políticas estocásticas.
    *   *Exemplos:* REINFORCE, Proximal Policy Optimization (PPO).
*   **Actor-Critic:** Combina ambas as abordagens - aprende tanto a política (ator) quanto a função de valor (crítico).
    *   *Vantagens:* Menor variância que métodos puramente baseados em política, mais estável que métodos puramente baseados em valor.
    *   *Exemplos:* A3C, PPO, SAC.

#### 2.4. Reinforcement Learning na Construção de LLMs (Grandes Modelos de Linguagem):
O **Reinforcement Learning from Human Feedback (RLHF)** é um passo crucial para alinhar LLMs com as preferências humanas.
*   Apenas a **etapa final (Etapa 4 - RLHF Training)** emprega algoritmos de reinforcement learning.
*   A **modelagem de recompensa (Etapa 3)** cria um modelo de recompensa usando aprendizado supervisionado, que então fornece o "sinal de recompensa" para o RL na Etapa 4.
*   **PPO (Proximal Policy Optimization)** é um algoritmo de RL específico usado para tratar a geração de texto como um processo de tomada de decisão sequencial.
*   "A linguagem do modelo se torna um agente RL" onde ele aprende a escolher tokens/palavras que maximizam as recompensas (altas pontuações de preferência) enquanto é penalizado por desviar muito do seu comportamento original.
*   O feedback humano é indireto; humanos não fornecem recompensas diretamente durante o treinamento de RL. Em vez disso, o modelo de recompensa (treinado com preferências humanas) pontua automaticamente cada resposta.
*   "RL otimiza para alinhamento" ao preencher a lacuna entre "bom na linguagem" e "útil para os humanos".
*   "A maior parte do treinamento ainda é supervisionada", com cerca de 95% do esforço computacional indo para pré-treinamento e fine-tuning, e o RL sendo o "**polimento final de alinhamento**".

**Em suma:** O RL é a etapa crucial final que transforma um modelo fluente em linguagem em um modelo alinhado, mas ele se baseia em uma base de aprendizado supervisionado.