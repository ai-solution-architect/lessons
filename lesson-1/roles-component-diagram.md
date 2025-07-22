# Mermaid Sample
## Overview

This document contains a Mermaid diagram illustrating the components and roles involved in AI/ML and Generative AI projects.

## Mermaid Diagram

```mermaid
graph TD
    A[Projeto de IA/ML] --> C(Clássico de IA/ML)
    A --> G(IA Generativa)

    subgraph Clássico de IA/ML
        direction LR
        C_ROLES[Papéis]
        C_COMPONENTS[Componentes Chave]

        C_ROLES --> CR_ARC(Arquiteto de Soluções: Projeta arquitetura de implantação de ML)
        C_ROLES --> CR_DSC(Cientista de Dados: Constrói modelos personalizados do zero)
        C_ROLES --> CR_MLE(Engenheiro de ML: Implementa e otimiza algoritmos)
        C_ROLES --> CR_DE(Engenheiro de Dados: Constrói pipelines de dados)
        C_ROLES --> CR_SWE(Engenheiro de Software: Integra modelos em aplicações)
        C_ROLES --> CR_DEX(Especialista de Domínio: Fornece conhecimento do domínio)
        C_ROLES --> CR_PM(Gerente de Projeto: Coordena atividades da equipe)
        C_ROLES --> CR_UX(UX Designer: Projeta interfaces de usuário)
        C_ROLES --> CR_ETH(Especialista em Ética: Aborda preocupações éticas)

        C_COMPONENTS --> CC_PT(Pipelines de Treinamento: Gerenciam o processo de treino do modelo)
        C_COMPONENTS --> CC_DT(Serviços de Transformação de Dados: Limpam e preparam os dados)
        C_COMPONENTS --> CC_FS(Feature Stores: Repositórios de características reutilizáveis)
        C_COMPONENTS --> CC_MR(Registro de Modelo: Catálogo de modelos treinados e suas versões)
        C_COMPONENTS --> CC_API(APIs de Previsão: Interfaces para o modelo fazer inferências)
        C_COMPONENTS --> CC_ML(Monitoramento e Registro: Ferramentas para acompanhar o modelo)
        C_COMPONENTS --> CC_BPI(Infraestrutura de Processamento em Lote: Para processar grandes volumes de dados)
    end

    subgraph IA Generativa
        direction LR
        G_ROLES[Papéis]
        G_COMPONENTS[Componentes Chave]

        G_ROLES --> GR_ARC(Arquiteto de Soluções: Projeta arquitetura para integrações LLM)
        G_ROLES --> GR_PRE(Engenheiro de Prompt: Projeta prompts eficazes)
        G_ROLES --> GR_AIMLE(Engenheiro de IA/ML: Realiza fine-tuning e adapta modelos)
        G_ROLES --> GR_SWE(Engenheiro de Software: Cria aplicações wrapper para LLMs)
        G_ROLES --> GR_DEX(Especialista de Domínio: Valida saídas e auxilia guardrails)
        G_ROLES --> GR_ETH(Especialista em Ética: Aborda imparcialidade, risco e segurança)
        G_ROLES --> GR_UX(UX Designer: Projeta interações humano-IA)
        G_ROLES --> GR_DE(Engenheiro de Dados: Gerencia datasets de fine-tuning menores)
        G_ROLES --> GR_PM(Gerente de Projeto: Coordena atividades da equipe)

        G_COMPONENTS --> GC_PM(Sistemas de Gerenciamento de Prompt: Para criar e versionar prompts)
        G_COMPONENTS --> GC_REC(Componentes de Recuperação: Incluem DBs vetoriais e chunkers para RAG)
        G_COMPONENTS --> GC_EP(Pipelines de Incorporação: Criam embeddings para busca semântica)
        G_COMPONENTS --> GC_CS(Serviços de Montagem de Contexto: Gerenciam a "memória" do LLM)
        G_COMPONENTS --> GC_FR(Módulos de Filtragem de Resposta: Para garantir saídas seguras)
        G_COMPONENTS --> GC_CI(Infraestrutura de Caching: Armazena respostas para rapidez)
        G_COMPONENTS --> GC_UFCS(Sistemas de Coleta de Feedback: Capturam feedback para melhorar o modelo)
    end
```
