## L12: Resumo - IA em Escala e Pipelines Avançados

##### L12: Resumo - IA em Escala e Pipelines Avançados
Abaixo está um briefing detalhado com base nas fontes fornecidas:
#### Briefing: IA em Escala e Pipelines Avançados
Este documento apresenta os principais temas, ideias e fatos sobre IA em escala e pipelines avançados, conforme detalhado nas "L12: Slides - AI at scale & Advanced Pipelines" de Faisal Nazir.
##### 1. Visão Geral e Agenda da Lição
A lição 12 do curso aborda "IA em Escala e Pipelines Avançados". A agenda principal foca em:
*  Construção de pipelines avançados para LLMs (Large Language Models).
*  Treinamento em larga escala e distribuído.
*  Gerenciamento de modelos em dados e arquitetura.
*  Exploração da integração de modelos matemáticos e estatísticos.

##### 2. Recapitulação de Conceitos Essenciais
**Visualização de Dados em IA:**
*  Transforma dados complexos em insights acionáveis para stakeholders.
*  Essencial em todo o ciclo de vida da IA: exploração, treinamento, avaliação, monitoramento.
*  Conecta equipes técnicas e de negócios de forma eficaz.
*   **Bibliotecas de Visualização:** Matplotlib, Seaborn, Plotly, Streamlit.
*   **Tipos de Gráficos Comuns:** Gráficos de linha, gráficos de barras, gráficos de dispersão, histogramas, box plots.
*   **Visualizações Específicas de IA:** Matrizes de confusão, curvas ROC/PR, curvas de aprendizado, importância de features.
*   **Aplicações Interativas:** Streamlit permite o rápido deployment de aplicações de ciência de dados.

##### 3. Treinamento de Modelos e Escalabilidade
**Processo de Treinamento (tradicional):**
*  Todos os dados de treinamento são carregados na memória da GPU de uma vez.
*  A "forward pass" calcula previsões e perdas.
*  A "backward pass" calcula gradientes para todos os parâmetros.
*  Parâmetros são aplicados diretamente na memória da GPU.
*  Salvamentos periódicos para armazenamento persistente para checkpoints.
**Limitações do Treinamento Tradicional:**
*  "Memory constraints limit model size and batch size" (Restrições de memória limitam o tamanho do modelo e do batch).
*  Não há paralelização em múltiplos dispositivos.
*  Ponto único de falha se a GPU falhar.
*  Escalabilidade limitada para modelos ou datasets grandes.
*  A memória da GPU deve acomodar modelo + dados + gradientes + ativações simultaneamente.

**Soluções de Paralelização:**Para superar as limitações de escalabilidade, são empregadas diversas estratégias de paralelização:
*   **Data Parallel Training (Paralelismo de Dados):** "Distribute batches across multiple GPUs with gradient synchronization" (Distribui batches por múltiplas GPUs com sincronização de gradientes). Cada worker processa um chunk de dados e seus gradientes são agregados para atualizar um modelo centralizado (ou cópias do modelo).
    *   **Ferramentas:** Horovod, PyTorch DDP, TF Distributed, Ray Train.
*   **Model Parallel Training (Paralelismo de Modelo):** "Split model architecture across multiple GPUs" (Divide a arquitetura do modelo por múltiplas GPUs).
    *   **Pipeline Parallelism (Paralelismo de Pipeline):** Estágios sequenciais do modelo são distribuídos por dispositivos, com micro-batching e acumulação de gradientes.
    *   **Tensor Parallelism (Paralelismo de Tensor):** Camadas individuais são divididas por múltiplas GPUs.
    *   **Ferramentas:** Megatron-LM, FairScale, PyTorch FSDP, Mesh TensorFlow.
*   **Hybrid Approaches (Abordagens Híbridas):** Combinam paralelismo de dados, modelo e pipeline para máxima eficiência, como o **3D Parallelism**, que combina os três tipos simultaneamente para treinar modelos muito grandes (ex: GPT-3, PaLM).

**Soluções de Escalabilidade:**
*   **Distributed Training Frameworks:** PyTorch DDP, Horovod, ou DeepSpeed para escalonamento multi-GPU.
*   **Cloud-Based Training:** Recursos de computação elásticos que escalam sob demanda.
*   **Model Compression:** Poda (pruning), quantização e destilação para reduzir o tamanho do modelo.
*   **Efficient Architectures:** MobileNets, EfficientNets, ou outros modelos otimizados por recursos.
*   **Incremental Training:** Fine-tuning de modelos pré-treinados em vez de treinar do zero.
**Parameter Server Architecture:** Um servidor (ou cluster de servidores) dedicado armazena os parâmetros globais do modelo, atuando como fonte única de verdade e gerenciando atualizações. Permite adicionar ou remover nós workers dinamicamente e melhora a tolerância a falhas.

##### 4. Modelos na Edge e Aprendizado Federado
**Modelos @ Edge:** Refere-se à otimização e deployment de modelos de IA diretamente em dispositivos "edge" (ex: smartphones, dispositivos IoT), minimizando a latência e o uso de largura de banda.
*   **Model Compilation for Target Hardware:** TensorRT para NVIDIA GPUs, OpenVINO para Intel, CoreML para Apple Silicon, ONNX Runtime para deployment multiplataforma.
*   **Edge-Specific Deployment Patterns:** Particionamento de modelo entre edge e nuvem, aprendizado incremental no dispositivo, estratégias de cache, otimização de processamento de batch.
*   **Power-Aware Inference:** Escalamento dinâmico de voltagem e frequência, gerenciamento térmico, agendamento de computação ciente da bateria, arquiteturas de modelo eficientes em energia.

**Federated Learning (Aprendizado Federado):** "a distributed machine learning paradigm that enables training models across decentralized data sources without centralizing the data" (um paradigma de aprendizado de máquina distribuído que permite treinar modelos em fontes de dados descentralizadas sem centralizar os dados). Preserva a privacidade ao alavancar a inteligência coletiva de múltiplos participantes.
*   **Componentes Principais:** Servidor central/coordenador, clientes federados (dispositivos locais), protocolo de comunicação, algoritmo de agregação (FedAvg, FedProx).
*   **Características Chave:**
    *   **Data Locality:** Dados nunca saem do ambiente local.
    *   **Privacy Preservation:** Somente parâmetros do modelo são compartilhados, não dados brutos.
    *   **Heterogeneity:** Clientes podem ter diferentes distribuições de dados e capacidades computacionais.
    *   **Intermittent Participation:** Clientes podem entrar/sair do processo de treinamento dinamicamente.

**Preservação da Privacidade no Aprendizado Federado:**
*   **Differential Privacy:** Adiciona ruído calibrado às atualizações do modelo para fornecer garantias matemáticas de privacidade.
*   **Secure Aggregation:** Protocolos criptográficos para agregação segura de parâmetros, prevenindo que o servidor veja atualizações de clientes individuais (ex: secret sharing, homomorphic encryption).
*   **Homomorphic Encryption:** Permite computação em dados criptografados.
*   **Multi-Party Computation (MPC):** Computação distribuída sem revelar inputs, múltiplas partes computam a agregação em conjunto sem ponto único de confiança.

##### 5. Estratégias Avançadas de Deployment
*   **A/B Testing Frameworks:** Comparação de modelos champion/challenger, testes de significância estatística, otimização multi-armed bandit, estratégias de mudança gradual de tráfego.
*   **Canary Deployments:** Lançamento gradual com monitoramento, gatilhos de rollback automatizados, validação de métricas de performance, estratégias de mitigação de risco.
*   **Blue-Green Deployment:** Atualizações de modelo com zero tempo de inatividade, isolamento e validação de ambiente, capacidades de rollback instantâneo, gerenciamento de infraestrutura como código.
*   **Shadow Mode Deployment:** Validação de modelo sem risco, replicação de tráfego de produção, análise de comparação de performance, construção de confiança antes do deployment completo.

##### 6. Gerenciamento do Ciclo de Vida do Modelo (MLOps)
MLOps abrange todo o ciclo de vida do modelo, desde a coleta de dados até o deployment e monitoramento.
*   **Centralized Model Registry:** Versionamento de modelo, rastreamento de linhagem e gerenciamento de dependência, gerenciamento de metadados, controle de acesso e políticas de governança.
*   **Model Lifecycle Automation:** Orquestração automatizada de pipelines de treinamento, validação e gate de qualidade, automação de deployment com rollback, processos de desativação e arquivamento.
*   **Performance Monitoring:** Coleta de métricas de performance em tempo real, sistemas de alerta e notificação, otimização de utilização de recursos, rastreamento e otimização de custos.

**MLOps+ e Tipos de Modelos:**O MLOps se estende para além dos modelos ML tradicionais, incluindo:
*   **ML Models:** Treinam um modelo usando dados e pesquisa de hiperparâmetros para fazer previsões.
*   **Simulation Models:** Usam funções dinâmicas para evoluir o estado do sistema ao longo do tempo.
*   **Heuristic Models:** Aplicam regras predefinidas para gerar notificações ou alertas.
*   **Math Models:** Combinam input de dados com restrições via funções matemáticas para previsões.
*   **Mechanistic Models:** Usam funções específicas de domínio que representam processos físicos/biológicos.
*   **Statistical Models:** Aplicam funções estatísticas para produzir previsões probabilísticas e quantificar incerteza.

A arquitetura MLOps para inferência, especialmente com conteinerização, permite pré-processamento, modelo treinado, pós-processamento e monitoramento dentro de um serviço container, acessível via API.
##### 7. Generative AI @ Scale
A IA Generativa em escala envolve uma arquitetura multicamadas para gerenciar a complexidade e a interação de agentes de IA:
*   **Interface Layer (1):** Interfaces humanas (chat, voz, web UI) para interação, validação de input, autenticação, gerenciamento de sessão, formatação de resposta.
*   **Orchestration & Coordination Layer (2):** Gerencia workflows e distribuição de tarefas, roteia tarefas para agentes apropriados, balanceamento de carga, alocação de recursos, coordenação de processamento paralelo, gerenciamento de prioridades.
*   **Agent Layer (3):** Agentes de IA especializados com capacidades específicas de domínio (codificação, pesquisa, análise), gerenciamento do ciclo de vida do agente.
*   **Inter-Agent Communication (4):** Facilita comunicação segura entre agentes, serialização de dados, roteamento, garantia de entrega, resolução de conflitos, padrões de comunicação baseados em eventos.
*   **Memory & Context Layer (5):** Mantém memória de curto e longo prazo para conversas e tarefas ativas, integra contexto entre agentes, recuperação de informações históricas relevantes.
*   **Knowledge & RAG Layer (6):** Integra fontes de conhecimento externas e bancos de dados para recuperação de informações, "implements retrieval-augmented generation for factual accuracy" (implementa geração aumentada por recuperação para precisão factual), gerenciamento de base de conhecimento.
*   **Action & Integration Layer (7):** Executa chamadas de API externas e integrações de sistema, gerencia uso de ferramentas e serviços de terceiros, fornece ambientes sandbox para execução segura de código.
*   **Governance & Monitoring Layer (8):** Impõe políticas de segurança, filtragem de conteúdo, monitora performance do sistema, padrões de uso, problemas potenciais, relatórios de auditoria e conformidade, gerenciamento de taxa, custos e quotas de recursos.

Este briefing condensa os pontos mais importantes apresentados nos slides, focando nas tecnologias, desafios e soluções para escalar sistemas de IA e gerenciar seus pipelines de forma eficiente.

---

#### Quiz de Perguntas Curtas
Responda a cada pergunta em 2-3 frases.
1.  **O que são os passos de "forward pass" e "backward pass" no treinamento de um modelo de IA?**
2.  **Liste duas limitações principais do treinamento de modelos de IA sem o uso de paralelização.**
3.  **Qual a diferença fundamental entre Data Parallelism e Pipeline Parallelism?**
4.  **Descreva brevemente o conceito de 3D Parallelism e por que ele é usado.**
5.  **Qual o principal benefício da Aprendizagem Federada em termos de dados e privacidade?**
6.  **O que é o propósito da Criptografia Homomórfica na preservação da privacidade?**
7.  **Explique a diferença entre uma implantação Canary e uma implantação Blue-Green.**
8.  **Qual a importância de um Registro Centralizado de Modelos no gerenciamento do ciclo de vida da IA?**
9.  **O que a Camada de Orquestração e Coordenação faz em uma arquitetura de IA Generativa em escala?**
10.  **Mencione um exemplo de otimização de modelo para hardware alvo e sua função.**

---

#### Gabarito do Quiz
1. **O que são os passos de "forward pass" e "backward pass" no treinamento de um modelo de IA?**O "forward pass" calcula as previsões do modelo e a perda com base nos dados de entrada. O "backward pass" então calcula os gradientes para todos os parâmetros do modelo, que são usados para atualizar os pesos do modelo durante a otimização.
2. **Liste duas limitações principais do treinamento de modelos de IA sem o uso de paralelização.**As limitações incluem restrições de memória que limitam o tamanho do modelo e do batch, e uma escalabilidade limitada para modelos ou conjuntos de dados muito grandes. Além disso, a falha da GPU pode se tornar um único ponto de falha.
3. **Qual a diferença fundamental entre Data Parallelism e Pipeline Parallelism?**Data Parallelism distribui batches de dados entre múltiplas GPUs, onde cada GPU tem uma cópia completa do modelo. Pipeline Parallelism divide o modelo em estágios sequenciais, com diferentes GPUs processando diferentes estágios do modelo, permitindo o processamento de múltiplos batches simultaneamente.
4. **Descreva brevemente o conceito de 3D Parallelism e por que ele é usado.**3D Parallelism combina Data Parallelism, Model (Tensor) Parallelism e Pipeline Parallelism simultaneamente. Ele é usado para treinar modelos extremamente grandes, como LLMs, que são grandes demais para qualquer abordagem de paralelização única.
5. **Qual o principal benefício da Aprendizagem Federada em termos de dados e privacidade?**O principal benefício da Aprendizagem Federada é que os dados nunca saem do ambiente local do cliente, preservando a privacidade. Ela permite que modelos sejam treinados em dados descentralizados, alavancando a inteligência coletiva sem centralizar informações sensíveis.
6. **O que é o propósito da Criptografia Homomórfica na preservação da privacidade?**A Criptografia Homomórfica permite que o servidor realize computações em dados criptografados sem a necessidade de descriptografar as atualizações individuais dos clientes. Isso garante privacidade mais forte, sendo adequada para aplicações altamente sensíveis.
7. **Explique a diferença entre uma implantação Canary e uma implantação Blue-Green.**Uma implantação Canary envolve um rollout gradual do novo modelo para um pequeno subconjunto de usuários, com monitoramento contínuo. Uma implantação Blue-Green envolve a manutenção de dois ambientes idênticos (ativo e inativo), onde o novo modelo é implantado no ambiente inativo, testado e, em seguida, todo o tráfego é alternado instantaneamente.
8. **Qual a importância de um Registro Centralizado de Modelos no gerenciamento do ciclo de vida da IA?**Um Registro Centralizado de Modelos é crucial para o versionamento do modelo, rastreamento de linhagem e gerenciamento de dependências. Ele atua como uma fonte única de verdade para os modelos, facilitando a governança, acesso e busca de metadados.
9. **O que a Camada de Orquestração e Coordenação faz em uma arquitetura de IA Generativa em escala?**A Camada de Orquestração e Coordenação gerencia os fluxos de trabalho do agente e a distribuição de tarefas. Ela é responsável por rotear tarefas para agentes apropriados, gerenciar o balanceamento de carga e coordenar o processamento paralelo.
10. **Mencione um exemplo de otimização de modelo para hardware alvo e sua função.**Um exemplo é o TensorRT para GPUs NVIDIA, que otimiza modelos para inferência de alto desempenho em hardware NVIDIA. Sua função é acelerar a execução do modelo, melhorando a eficiência e reduzindo a latência.

---

#### Perguntas em Formato de Ensaio
1. Discuta os desafios de escalar o treinamento de modelos de Large Language Models (LLMs) e como as diferentes estratégias de paralelização (Data, Model, Pipeline, e 3D) abordam esses desafios. Inclua uma análise de quando cada estratégia é mais eficaz.
2. Explique o conceito de Aprendizagem Federada em detalhes, descrevendo seus componentes principais, características e o fluxo de trabalho. Avalie os compromissos entre privacidade e acurácia do modelo nesse paradigma e as técnicas de preservação da privacidade.
3. Compare e contraste as estratégias avançadas de implantação de modelos de IA: A/B Testing, Canary Deployments, Blue-Green Deployments e Shadow Mode Deployment. Para cada estratégia, descreva seu propósito, vantagens e desvantagens, e cite cenários de uso apropriados.
4. Detalhe o ciclo de vida de gerenciamento de modelos (MLOps) conforme apresentado, cobrindo as fases de registro de modelo, automação do ciclo de vida e monitoramento de desempenho. Explique como a contenção (containerization) se integra a essa arquitetura para facilitar a implantação e o monitoramento.
5. Descreva a arquitetura de uma Gen AI em escala, explicando o papel e a interação de cada uma das oito camadas apresentadas (Interface, Orchestration & Coordination, Agent, Inter-Agent Communication, Memory & Context, Knowledge & RAG, Action & Integration, e Governance & Monitoring).

---

#### Glossário de Termos-Chave
*   **API (Application Programming Interface):** Um conjunto de definições e protocolos para construir e integrar software de aplicação.
*   **A/B Testing:** Uma estratégia de implantação onde duas ou mais versões de um modelo são comparadas para determinar qual delas tem melhor desempenho.
*   **Aprendizagem Federada (Federated Learning):** Um paradigma de aprendizado de máquina que treina modelos em múltiplas fontes de dados descentralizadas (clientes locais) sem centralizar os dados, preservando a privacidade.
*   **Batch:** Um subconjunto de dados de treinamento usado para calcular as atualizações dos parâmetros do modelo em uma única iteração de treinamento.
*   **Backward Pass:** A fase do treinamento de redes neurais onde os gradientes da função de perda são calculados em relação aos pesos do modelo usando backpropagation.
*   **Blue-Green Deployment:** Uma estratégia de implantação que minimiza o tempo de inatividade, mantendo dois ambientes idênticos (um ativo, um inativo) e alternando o tráfego entre eles.
*   **Canary Deployment:** Uma estratégia de implantação incremental onde a nova versão de um modelo é liberada para um pequeno subconjunto de usuários antes de ser amplamente disponibilizada, permitindo monitoramento em tempo real.
*   **Checkpoint:** Um ponto de salvamento periódico durante o treinamento do modelo, permitindo a recuperação em caso de falha ou a continuação do treinamento.
*   **CoreML:** Um framework da Apple para integrar modelos de aprendizado de máquina em aplicativos iOS, macOS, watchOS e tvOS, otimizando o desempenho na borda.
*   **CPU (Central Processing Unit):** A principal unidade de processamento de um computador, responsável pela execução de instruções gerais.
*   **Data Parallelism:** Uma estratégia de paralelização em treinamento de ML onde o batch de dados é dividido e distribuído entre múltiplos dispositivos (e.g., GPUs), cada um com uma cópia completa do modelo, e os gradientes são agregados.
*   **DeepSpeed:** Um conjunto de ferramentas de otimização de aprendizado profundo da Microsoft que visa facilitar o treinamento de modelos grandes.
*   **Differential Privacy:** Um método para preservar a privacidade dos dados adicionando ruído calibrado a dados ou consultas, garantindo que a informação individual não possa ser inferida.
*   **Destilação de Modelo (Model Distillation):** Uma técnica de compressão onde um modelo menor (estudante) é treinado para imitar o comportamento de um modelo maior e mais complexo (professor).
*   **FastAPI:** Um framework web moderno e rápido (de alto desempenho) para construir APIs com Python 3.7+, baseado em tipagem padrão do Python.
*   **Forward Pass:** A fase do treinamento de redes neurais onde os dados de entrada são passados através do modelo para gerar previsões (saídas).
*   **FSDP (Fully Sharded Data Parallel):** Uma técnica de paralelismo de dados que distribui os parâmetros do modelo, gradientes e estados do otimizador entre dispositivos, reduzindo o uso de memória.
*   **GPU (Graphics Processing Unit):** Um processador especializado projetado para acelerar o cálculo de imagens, mas que se tornou essencial para o treinamento de modelos de aprendizado de máquina devido à sua capacidade de processamento paralelo.
*   **Gradientes (Gradients):** As derivadas parciais da função de perda em relação aos pesos do modelo, indicando a direção e a magnitude do ajuste de peso para minimizar a perda.
*   **Horovod:** Um framework distribuído de treinamento de aprendizado profundo que simplifica o uso de Data Parallelism.
*   **Criptografia Homomórfica (Homomorphic Encryption):** Uma forma de criptografia que permite computações em dados criptografados, produzindo um resultado criptografado que, quando descriptografado, é o mesmo que o resultado da computação em dados em texto simples.
*   **LLMs (Large Language Models):** Modelos de linguagem baseados em arquiteturas de redes neurais (como Transformers) com um grande número de parâmetros, treinados em grandes volumes de texto para entender e gerar linguagem humana.
*   **Matplotlib:** Uma biblioteca de plotagem 2D em Python que produz figuras de qualidade para publicação em uma variedade de formatos de hardcopy e ambientes interativos.
*   **MLOps (Machine Learning Operations):** Um conjunto de práticas que automatiza e gerencia o ciclo de vida completo de modelos de aprendizado de máquina, desde o desenvolvimento até a implantação e o monitoramento.
*   **Model Parallelism:** Uma estratégia de paralelização onde o modelo de IA é dividido em partes e distribuído entre múltiplos dispositivos, cada um processando uma parte do modelo.
*   **Multi-Party Computation (MPC):** Um protocolo criptográfico que permite que várias partes computem uma função conjunta sobre suas entradas, mantendo as entradas privadas.
*   **NCCL (NVIDIA Collective Communications Library):** Uma biblioteca otimizada pela NVIDIA para comunicação multi-GPU de alto desempenho, comum em treinamento distribuído de aprendizado profundo.
*   **ONNX Runtime:** Um acelerador de inferência de aprendizado de máquina de plataforma cruzada para modelos ONNX, otimizando o desempenho em várias arquiteturas de hardware e sistemas operacionais.
*   **OpenVINO:** Um kit de ferramentas da Intel para otimizar e implantar modelos de inferência de IA, especialmente para hardware Intel.
*   **Parameter Server:** Uma arquitetura de treinamento distribuído onde os parâmetros globais do modelo são armazenados em servidores centrais e os trabalhadores (nós) puxam e empurram atualizações de parâmetros.
*   **Pipeline Parallelism:** Uma estratégia de paralelização onde um modelo é dividido em estágios sequenciais, e diferentes dispositivos (GPUs) são responsáveis por diferentes estágios, processando um fluxo de mini-batches.
*   **Poda de Modelo (Model Pruning):** Uma técnica de compressão de modelo que remove pesos ou neurônios menos importantes para reduzir o tamanho e a complexidade do modelo.
*   **PyTorch DDP (DistributedDataParallel):** Uma funcionalidade do PyTorch para treinamento de modelos de aprendizado profundo em várias GPUs ou máquinas usando Data Parallelism.
*   **Quantização (Quantization):** Uma técnica de compressão de modelo que reduz a precisão numérica dos pesos e ativações (e.g., de ponto flutuante de 32 bits para inteiros de 8 bits) para reduzir o tamanho e acelerar a inferência.
*   **RAG (Retrieval-Augmented Generation):** Uma técnica em IA generativa que combina a geração de linguagem com a recuperação de informações de fontes externas para produzir respostas mais precisas e factuais.
*   **Ray Train:** Uma biblioteca no ecossistema Ray para treinamento distribuído escalável e tolerante a falhas, suportando vários frameworks de ML.
*   **ROC/PR Curves:** Curvas de desempenho usadas para avaliar modelos de classificação. Curva ROC (Receiver Operating Characteristic) plota a taxa de verdadeiros positivos vs. taxa de falsos positivos, enquanto a curva PR (Precision-Recall) plota precisão vs. recall.
*   **Seaborn:** Uma biblioteca de visualização de dados Python baseada em matplotlib que fornece uma interface de alto nível para desenhar gráficos estatísticos atraentes e informativos.
*   **Secure Aggregation:** Um protocolo que permite a múltiplos clientes agregarem suas atualizações de modelo de forma segura, de modo que o servidor não possa ver as contribuições individuais, preservando a privacidade.
*   **Shadow Mode Deployment:** Uma estratégia de implantação onde a nova versão do modelo é executada em paralelo com a versão de produção, recebendo cópias do tráfego de produção, mas sem afetar os usuários finais, permitindo a comparação de desempenho.
*   **Streamlit:** Uma estrutura de código aberto em Python para construir e compartilhar aplicativos da web de ciência de dados interativos de forma rápida.
*   **Tensor Parallelism:** Uma forma de Model Parallelism onde operações de tensor individuais (como multiplicação de matrizes) são divididas e distribuídas entre múltiplas GPUs.
*   **TensorRT:** Um SDK da NVIDIA para inferência de aprendizado profundo de alto desempenho, que inclui um otimizador e um runtime.
*   **Visualização de Dados em IA:** O processo de transformar dados complexos em insights acionáveis por meio de representações visuais, essencial para exploração, treinamento, avaliação e monitoramento de modelos de IA.
