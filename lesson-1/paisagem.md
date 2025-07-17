# Paisagem AI/ML: Clássico versus Generativo

Este briefing detalhado revisa os temas principais e as ideias/fatos mais importantes dos slides fornecidos, incluindo citações apropriadas, e resume os principais conceitos e metodologias apresentados nos slides "The AI_ML Landscape" de Faisal Nazir, focando nas distinções entre a abordagem Clássica de AI/ML e a abordagem da IA Generativa (Gen AI).

## 1. O Cenário Amplo da Inteligência Artificial

A Inteligência Artificial (IA) é um campo vasto que engloba diversas subdisciplinas. Os slides ilustram isso dividindo a IA em categorias como:

*   **Machine Learning (Aprendizado de Máquina)**:
    *   **Aprendizado Supervisionado**: Inclui Regressão, Classificação, Gradient Boosted Trees (XGBoost) e Recomendações.
    *   **Aprendizado Não Supervisionado**: Abrange PCA, Detecção de Anomalias, Clusterização e Filtragem Colaborativa.
    *   **Self-Supervised Learning (Aprendizado Auto-Supervisionado)**: Contém Gen-AI, Autoencoders e GANs.
    *   **Deep Learning (Aprendizado Profundo)**: Subconjunto do Machine Learning que utiliza Redes Neurais (CNNs, RNNs, Transformers, Graph).
    *   **Reinforcement Learning (Aprendizado por Reforço)**: Focado em otimização de políticas (PPO), Q-Learning e Deep Reinforcement Learning.
*   **Outras Áreas da IA**: Robótica, Bayesiana, Sistemas Especialistas, Processamento de Linguagem Natural, Visão Computacional, Representação de Conhecimento, Algoritmos Genéticos e Reconhecimento de Fala.

Os "Padrões de Inteligência Artificial" (Artificial Intelligence Patterns) também são destacados, mostrando a aplicação de IA em áreas como:

*   **Sistemas Generativos**: Document Summarization, Q&A Assistant, Large Language Models (LLMs), Reasoning, Prompt Engineering, Multi-agents, Diffusion Models (Text-to-Video, Text-to-Image, Video-to-Image, Image Generation, Multi-modal), Synthetic Data Generation, Generative Adversarial Networks (GANs) e De-noising.
*   **Robótica e Automação**: Aprendizado por Reforço, Sensoriamento, Atuação, Closed-Loop Control, Direção Autônoma, Otimização.
*   **Processamento de Linguagem Natural**: Conversational AI, Contact Centre Intelligence, Chatbots, Automatic Speech Recognition, Translation, Sentiment Analysis.
*   **Dados Estruturados**: Regressão, Classificação, Clusterização, Time Series, Forecasting, Multivariate Analysis.
*   **Sistemas de Recomendação**: Personalização, Segmentação, Hiper-personalização.
*   **Visão Computacional**: Facial Recognition, Object Detection, Biometrics, Intelligent Document Processing, Semantic Segmentation, Fault Detection and Monitoring.

## 2. O Método Clássico de AI/ML

O "Classical AIML Method" (Método Clássico de AI/ML) é um processo sequencial e iterativo para o desenvolvimento de soluções de Machine Learning, compreendendo as seguintes fases principais:

*   **Business Understanding (Entendimento do Negócio) - Framing**:
    *   **Definir objetivos de negócios claros e KPIs de sucesso**.
    *   Mapear stakeholders e estabelecer canais de comunicação.
    *   Traduzir problemas de negócios em perguntas analíticas solucionáveis.
    *   Determinar o tipo de tarefa de ML (previsão numérica, categorização, descoberta de estrutura) e a métrica de sucesso.
*   **Data Acquisition & Understanding (Aquisição e Entendimento de Dados) - Data Preparation**:
    *   **Identificar fontes de dados** (internas/externas), estabelecer protocolos de acesso e documentar linhagem.
    *   Visualizar dados para identificar padrões e *outliers*.
    *   Considerar o tamanho da amostra e o *bias-variance tradeoff* (viés-variância).
*   **Data Preparation (Preparação de Dados)**:
    *   **Limpar dados**: padronizar formatos, lidar com duplicatas e inconsistências.
    *   Preencher dados ausentes (imputação).
    *   **Engenharia de Features**: criar features específicas do domínio, transformar variáveis e aplicar técnicas de redução de dimensionalidade.
    *   Divisão Train/Test dos dados, implementando validação cruzada.
*   **Modelling (Modelagem)**:
    *   **Seleção do Modelo**: avaliar a adequação do algoritmo, requisitos de interpretabilidade e restrições computacionais.
    *   **Treinar o Modelo**: implementar pipelines reprodutíveis, monitorar progresso e aplicar mecanismos de parada antecipada.
    *   **Tunar o Modelo**: otimização de hiperparâmetros, abordagens de regularização e métodos de *ensemble*.
*   **Model Evaluation (Avaliação do Modelo)**:
    *   **Comparar métricas com os KPIs alvo**.
    *   **Análise de Erros e Verificações de Imparcialidade (*Fairness Checks*)**: analisar padrões de erro, implementar métricas de imparcialidade e testar impactos díspares.
    *   **Testes de Sensibilidade e Robustez**: validar estabilidade do modelo sob perturbações e condições adversas.
*   **Insight (Geração de Insights)**:
    *   **Traduzir os resultados do modelo de volta para o problema de negócio**, contextualizando saídas e mapeando previsões para decisões acionáveis.
    *   Criar uma narrativa para explicar o modelo para audiências não técnicas.
    *   Explicar **recomendações acionáveis**, priorizando por impacto de negócio e definindo limites de decisão claros.
*   **Deploy (Implantação)**:
    *   **Empacotar o Modelo** (API, Batch Job, Embedded Edge): projetar arquitetura de implantação, implementar contêineres e escalabilidade.
    *   **Monitorar**: Rastrear desvio (*drift*), latência, custo e impacto de negócio.
    *   **Disparar o pipeline de retreinamento** quando os limites são violados.
*   **Improve (Melhoria Contínua)**:
    *   **Coletar novos dados** e implementar *feedback loops*.
    *   **Reexecutar o treinamento** conforme necessário ou se o modelo falhar em performar.

## 3. O Método da IA Generativa (Gen AI Method)

O "Gen AI Method" (Método da IA Generativa) apresenta um fluxo de trabalho adaptado às particularidades dos projetos de IA Generativa:

*   **Use Case Definition (Definição do Caso de Uso)**:
    *   **"What is the Problem?" (Qual é o Problema?)**: Definir desafios de negócio, identificar pontos de dor e estabelecer objetivos.
    *   **"What is the Data?" (Quais são os Dados?)**: Inventariar fontes de dados, avaliar qualidade e acessibilidade, identificar bases de conhecimento proprietárias.
    *   **"Is Gen AI useful?" (A Gen AI é útil?)**: Avaliar se o problema requer capacidades generativas, comparar com abordagens ML tradicionais, e considerar implicações éticas.
*   **Design (Projeto)**:
    *   **Embedding Data into Model - Fine-Tuning** (Incorporar Dados no Modelo - Ajuste Fino).
    *   **Frontier v Open Source**: Comparar modelos proprietários (GPT-4, Claude) versus *open-source* (Mistral, Llama), avaliando custos e desempenho.
    *   **In Context Learning v Fine Tuning**: Projetar *prompts* eficazes para aprendizado em contexto e determinar quando o *fine-tuning* é necessário.
    *   **Cost - Cost per Invocation v Hosting Own Model**: Calcular TCO (Custo Total de Propriedade) e otimizar custos.
    *   **Agents (Agentes)**: Projetar arquitetura de agentes, componentes de planejamento e raciocínio, e capacidades de uso de ferramentas.
    *   **Reasoning (Raciocínio)**: Implementar técnicas de "Chain-of-Thought" e mecanismos de auto-crítica.
*   **Data (Dados)**:
    *   **Data Ingestion (Ingestão de Dados)**: Estabelecer pipelines de coleta e processos de limpeza.
    *   **Data Retrieval (Recuperação de Dados)**: Projetar estratégias de indexação e soluções de banco de dados vetoriais.
    *   **Data Search - Retrieval Augmented Generation (RAG)**: Implementar capacidades de busca semântica e estratégias de *chunking*.
*   **Model Selection (Seleção do Modelo)**:
    *   **Frontier Model**: Avaliar modelos comerciais.
    *   **Open Source Model**: Comparar modelos *open-source*.
    *   **Embedding Model**: Selecionar modelos de *embedding* apropriados.
    *   **Reasoning Model**: Avaliar modelos com fortes capacidades de raciocínio.
*   **Prompt Engineering (Engenharia de Prompts)**:
    *   **Zero Shot**: Projetar instruções claras e abrangentes.
    *   **Few Shot**: Selecionar exemplos representativos para aprendizado *few-shot*.
    *   **Chain of Thought**: Projetar *prompts* que incentivam o raciocínio passo a passo.
    *   **Multiple Techniques**: Combinar estratégias complementares de *prompting*.
*   **Agentic Design (Projeto de Agentes)**:
    *   Quebrar tarefas complexas em subtarefas discretas.
    *   Projetar agentes especializados e definir ferramentas e APIs.
    *   Avaliar *frameworks* de agentes (LangChain, AutoGPT).
*   **Fine-Tuning (Ajuste Fino) - Optional**:
    *   Determinar se o desempenho do modelo base é suficiente.
    *   Avaliar ROI de investimentos em *fine-tuning*.
    *   **"Do I have enough data?"**: Calcular o tamanho mínimo viável do conjunto de dados e avaliar a qualidade e diversidade dos dados.
*   **Evaluation & Security (Avaliação e Segurança)**:
    *   **LLM as a Judge (LLM como Juiz)**: Implementar técnicas de autoavaliação.
    *   **Automated Reasoning (Raciocínio Automatizado)**: Projetar validação automática da consistência lógica.
    *   **Manual Rules (Regras Manuais)** e **Quorum of Models (Quórum de Modelos)** para governança e decisão.
    *   **Guardrails (Grades de Proteção)**: Mecanismos de segurança abrangentes e detecção de tópicos sensíveis.
    *   **Benchmarks of Model Performance (Benchmarks de Desempenho do Modelo)**: Estabelecer métricas de avaliação específicas do domínio.
*   **Application Development (Desenvolvimento da Aplicação)**:
    *   **Build UI** (Construir Interface de Usuário) e **Build Conversational Interface** (Construir Interface Conversacional).
*   **Deployment (Implantação)**:
    *   Application, Own Mode, Prompts, APIs, Datastores.
    *   Implementar arquitetura escalável e estratégias de cache.
*   **Monitoring (Monitoramento)**:
    *   **Track Costs** (Rastrear Custos).
    *   **Human in Loop Verification** (Verificação Humana no Loop).
    *   **Track Guardrails Safety** (Rastrear Segurança das Grades de Proteção).
    *   **Randomised Testing** (Testes Aleatórios).

## 4. Papéis em um Projeto de IA e Diferenças entre Clássico e Gen AI

Os slides detalham os papéis essenciais em projetos de IA, comparando as responsabilidades e desafios entre as abordagens Clássica e Generativa:

**Papéis Comuns**:

*   **Solution Architect (Arquiteto de Soluções)**: Um papel **crítico e de liderança** em ambos os tipos de projeto. Para Gen AI, ele "Designs complex integrations & system architecture".
*   **Data Scientist (Cientista de Dados)**: Mais proeminente no Clássico, construindo modelos personalizados do zero.
*   **ML Engineer (Engenheiro de ML)**: Implementa e otimiza algoritmos no Clássico. No Gen AI, é o "AIML Engineer" que faz "Fine-tunes & adapts models".
*   **Data Engineer (Engenheiro de Dados)**: Cria pipelines de dados em ambos, mas no Gen AI, "Manages smaller training datasets".
*   **Software Engineer (Engenheiro de Software)**: Integra modelos em aplicações. No Gen AI, "Creates wrapper applications".
*   **Domain Expert (Especialista de Domínio)**: Fornece conhecimento em ambos, mas no Gen AI "Validates outputs & guides development".
*   **Project Manager (Gerente de Projeto)**: Coordena atividades em ambos.
*   **UX Designer (Designer de UX)**: Projeta interfaces de usuário em ambos, mas no Gen AI "Designs human-AI interactions".
*   **Ethics Specialist (Especialista em Ética)**: Aborda preocupações éticas, viés e segurança em ambos, sendo um **"Critical Role"** em Gen AI.
*   **Prompt Engineer (Engenheiro de Prompt)**: Um **papel novo e "Critical Role" específico para Gen AI**, "Designs effective prompts".

**Comparação de Responsabilidades do Arquiteto de Soluções**:

| Aspecto | Classical AI/ML | Generative AI |
| :------ | :------ | :------ |
| **Tipo de Dados** | Dados tabulares estruturados. | Texto não estruturado, imagens, ou áudio. |
| **Foco Central** | Engenharia de *features* e seleção de modelos. | Engenharia de *prompts* e filtragem de saída. |
| **Custo** | Custos de treinamento iniciais mais altos, inferência mais barata. | Custos *pay-per-token* ou por assinatura. |
| **Monitoramento** | Desvio de precisão e métricas de desempenho. | Qualidade da saída, segurança e custos. |
| **Desafios** | Gerenciamento de grandes conjuntos de dados, otimização de latência. | Gerenciamento de custos de *tokens*, mitigação de alucinações, implementação de *guardrails*. |

As responsabilidades do Arquiteto de Soluções em Gen AI incluem: "Design system architecture for LLM integrations", "Create prompt management and versioning workflows", e "Establish guardrails and safety measures".

Em resumo, enquanto o método Clássico de AI/ML se concentra na construção de modelos a partir do zero com grandes conjuntos de dados rotulados e dados estruturados, o método da IA Generativa se inclina para o uso e ajuste de modelos de fundação, priorizando a engenharia de *prompts*, o gerenciamento de contexto, a integração de APIs e a garantia da segurança e qualidade das saídas geradas. A **engenharia de *prompts* e o design de agentes** emergem como **habilidades críticas para a IA Generativa**.
