# Projects

## Sigmoid (Feb 2024 - Current)

### Cloud Meter — Cloud Cost Optimization Platform
- Built a multi-cloud data ingestion pipeline using FastAPI and PostgreSQL, integrating AWS, Azure, and GCP billing/utilization APIs to process 10M+ monthly records with Celery task scheduling.
- Designed Dockerized microservices and deployed them on Kubernetes clusters, reducing deployment time by 40% via Azure DevOps CI/CD pipelines and Helm charts.
- Developed persona-based KPI dashboards by aggregating cost/utilization metrics, leveraging Databricks for analytics to drive a 25% reduction in client cloud spend.

### MLOps Framework for Scalable Model Deployment (Internal)
- Designed and implemented a scalable MLOps framework, integrating end-to-end workflows for data ingestion, preprocessing, model training, and deployment.
- Leveraged Ray for parallelized model training and hyperparameter tuning, achieving a 4x improvement in training speed and reducing infrastructure costs by 30%.
- Integrated MLflow for experiment tracking, model versioning, and performance monitoring.
- Enabled Databricks Asset Bundle (DAB) integration to orchestrate and deploy workflows, reducing deployment time by 50%.


### Sanofi (Jan–Feb 2025) — Scalable Airflow Orchestration on Kubernetes (EKS)
- Deployed and configured a production-grade Apache Airflow instance on Amazon EKS, including VPCs, subnets, NAT Gateways, and Internet Gateway.
- Implemented Ingress controllers and DNS configuration for secure access to the Airflow UI.
- Developed and scheduled example DAGs to execute PySpark scripts for distributed data processing.
- Established a scalable, resilient workflow automation platform for scheduling, monitoring, and managing complex data pipelines.

### Hackathon (Feb 2025) — LLM-Powered SQL Rule Engine for Automated Data Quality Validation
- Developed a FastAPI backend for an LLM-powered SQL rule generator to translate natural-language rules into executable SQL.
- Built a data integration module to connect with Databricks, Snowflake, and PostgreSQL, scraping and storing schemas in a ChromaDB vector DB for contextual LLM input.
- Leveraged LangChain and Azure-hosted GPT-4 Mini with schema and profiling context to generate accurate SQL queries.

### Fiserv (Mar–May 2025) — MLOps Implementation with SageMaker Pipelines & MLflow
- Architected SageMaker Pipelines for end-to-end ML workflows, automating preprocessing, XGBoost training, and deployments via custom Docker containers.
- Integrated MLflow to track experiments, log RMSE/MAE, and register models in the MLflow Model Registry.
- Deployed scalable SageMaker endpoints for real-time inference and implemented batch inference pipelines with cost optimizations.
- Automated deployment of MLflow-registered champion models using SageMaker Pipelines, achieving ~95% reliability.

### P&G (Jun–Jul 2025)
- (Ignore)

## BD — ISC-FCP | Freight Capacity Planning | ML Forecasting Platform
- Designed a SKU-level demand forecasting framework to support freight capacity planning.
- Built ingestion and feature-engineering pipelines on Databricks (Unity Catalog delta tables), joining Shipment and Delivery tables and imputing sparse SKU data.
- Transformed raw weight into `pallet_cnt` as the standardized planning metric using configurable `pallet_kg` capacity.
- Implemented a backtesting framework on 24 months of data with a 3-month holdout, evaluating 7 forecasting models per SKU (Prophet, Exponential Smoothing, MA3/MA6/MA9, XGBoost, LightGBM) using the Darts library.
- Scaled training across 1,200+ parallel runs using Ray on Databricks, enabling per-SKU per-model distributed training across 172+ SKUs.
- Selected champion models per SKU based on wMAPE and generated SKU-level `pallet_cnt` forecasts for container estimation.
- Tracked experiments and metadata with MLflow on Databricks for full run visibility.
- Designed a drift-detection strategy using Population Stability Index (PSI) to flag data drift and trigger retraining (planned for production).
- Deployed and validated in Databricks dev; solution undergoing stakeholder testing prior to production rollout.

## Reckitt (Jul–Dec 2025)
- Delivered a cloud-native data platform for Mead Johnson on Microsoft Azure: React frontend and FastAPI backend on Kubernetes.
- Configured MS SQL Server for transactional and analytical workloads and built CI/CD using Helm charts and Azure DevOps.
- Designed Azure Data Factory pipelines integrated with Databricks and a multi-environment ADF migration pipeline for consistent promotions across Dev/QA/Prod.

## HPE (Nov 2025 — )
- Engineered a multi-agent AI assistant for HPE Support Engineers using LangGraph, with specialized agents for technical troubleshooting, knowledge retrieval, case workflows, and intent-based routing.
- Designed a grounded, multi-source RAG architecture integrating Coveo enterprise search, self-hosted vector search, and structured support APIs to generate source-backed responses with citations.
- Implemented tool-driven agent workflows that require evidence retrieval before answer generation, reducing hallucination risk in customer-impacting support decisions.
- Developed multimodal support capabilities using OCR and vision-model analysis to extract context from screenshots and images before running grounded retrieval workflows.
- Built a semantic GPT caching layer using embedding-based similarity to reuse validated responses for paraphrased and recurring support queries.
- Established AI evaluation workflows covering routing accuracy, retrieval relevance, groundedness, faithfulness, citation quality, and human rubric-based review.


## TestYantra (Mar 2023 - Feb 2024)
- Developed an HR management application using Django and Django REST Framework, building RESTful APIs and a student–company matching and filtering system.
- Implemented JWT-based authentication and role-based access control for administrators, companies, and students.
- Designed a relational PostgreSQL database schema and optimized queries for efficient data retrieval.
- Integrated Redis caching and Celery to support background processing and scheduled tasks.
- Wrote automated test cases using pytest and containerized the application with Docker.