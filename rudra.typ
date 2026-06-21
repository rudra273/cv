// ─── Document Metadata ───────────────────────────────────────
#set document(
  title: "Rudrapratap Mohanty - MLOps Engineer Resume",
  author: "Rudrapratap Mohanty",
  keywords: (
    "MLOps", "LangChain", "LangGraph", "AWS", "Azure",
    "Databricks", "Kubernetes", "Docker", "Generative AI",
    "LLM", "Python", "CI/CD", "SageMaker", "MLflow",
    "Terraform", "Airflow", "Helm", "Agentic AI",
  ),
  date: auto,
)

// ─── Page & Typography ───────────────────────────────────────
#set page(
  margin: (x: 0.6in, y: 0.4in),
  paper: "a4",
)
#set text(font: "Avenir Next", size: 8.4pt)
#set par(leading: 0.45em, justify: true)
#set list(indent: 0.5em, body-indent: 0.5em, spacing: 4.8pt)
#set text(hyphenate: false)

// ─── Colors ──────────────────────────────────────────────────
#let clr-primary    = rgb("#0f172a")
#let clr-secondary  = rgb("#1d4ed8")
#let clr-content    = rgb("#1e293b")
#let clr-accent     = rgb("#2563eb")
#let clr-side-label = rgb("#4338ca")
#let clr-subtle     = rgb("#64748b")
#let clr-divider    = rgb("#e2e8f0")

// ─── Icons ───────────────────────────────────────────────────
#let icon(path, color: clr-accent) = {
  box(height: 8.2pt, baseline: 1.4pt)[
    #let svg = read(path)
    #let colored-svg = svg.replace("currentColor", color.to-hex())
    #image(bytes(colored-svg))
  ]
}

// ─── Section Heading ─────────────────────────────────────────
#let section(title) = {
  v(10pt, weak: true)
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.6em,
    align: (left, bottom),
    text(weight: "regular", size: 13.5pt, fill: clr-secondary, title),
    box(width: 100%, baseline: 0pt)[#line(length: 100%, stroke: 2pt + clr-divider)],
  )
  v(3pt)
}

// ─── Header ──────────────────────────────────────────────────
#let header(name, location, phone, email, linkedin, github) = {
  stack(
    dir: ttb,
    spacing: 6pt,
    align(center)[#text(size: 34pt, weight: "regular", fill: clr-primary)[#name]],
    v(10pt),
    align(center)[
      #text(size: 9.5pt, fill: clr-subtle)[
        #icon("icons/map-pin.svg") #location #h(8pt) | #h(8pt)
        #icon("icons/phone.svg") #phone #h(10pt) | #h(10pt)
        #icon("icons/mail.svg") #email
      ]
    ],
    align(center)[
      #text(size: 9.5pt, fill: clr-subtle)[
        #link("https://linkedin.com/in/" + linkedin)[
          #icon("icons/linkedin.svg") #text(fill: clr-secondary)[linkedin.com/in/#linkedin]
        ]
        #h(10pt) | #h(10pt)
        #link("https://github.com/" + github)[
          #icon("icons/github.svg") #text(fill: clr-secondary)[github.com/#github]
        ]
      ]
    ],
  )
}

// ─── Company Block ────────────────────────────────────────────
#let company(name, role-title, date, location, body) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold", size: 10pt, fill: clr-primary)[#name],
    text(fill: clr-subtle, size: 8.2pt)[#date],
  )
  v(1pt)
  text(style: "italic", size: 8.6pt, fill: clr-accent)[#role-title]
  h(4pt)
  text(size: 8pt, fill: clr-subtle)[· #location]
  v(3pt)
  pad(left: 3pt)[
    #block(
      stroke: (left: 1.5pt + gradient.linear(clr-secondary.lighten(40%), white, dir: ttb)),
      inset: (left: 9pt, top: 1pt, bottom: 1pt, right: 0pt),
      body,
    )
  ]
  v(5pt)
}

// ─── Skills Row ───────────────────────────────────────────────
#let skill-row(cate, items) = {
  grid(
    columns: (3.8cm, 1fr),
    gutter: 0.5em,
    text(weight: "bold", size: 8.5pt, fill: clr-side-label)[#cate],
    text(size: 8.4pt, fill: clr-content)[#items],
  )
  v(2.5pt)
}

// ═══════════════════════════════════════════════════════════════
//  RESUME CONTENT
// ═══════════════════════════════════════════════════════════════

#header(
  "Rudrapratap Mohanty",
  "Bengaluru, India",
  "+91-955-693-5805",
  "rudramohanty45@gmail.com",
  "rudra273",
  "rudra273",
)

#v(2pt)

// ─── Summary ─────────────────────────────────────────────────
#section("Summary")
#text(fill: clr-content)[
  MLOps Engineer with a strong focus on *end-to-end ML systems* — from data pipelines and distributed training to model serving, drift monitoring, and automated retraining. Currently building *production agentic AI systems* using LangChain and LangGraph, combining LLM orchestration with robust MLOps practices across AWS, Azure, and Databricks. Passionate about closing the gap between experimentation and reliable production ML.
]

// ─── Skills ──────────────────────────────────────────────────
#section("Skills")
#skill-row("Agentic AI & LLMs", "LangChain, LangGraph, Langfuse, RAG, Prompt Engineering, ChromaDB, LLMOps, Azure AI Foundry")
#skill-row("MLOps & Production ML", "MLflow, SageMaker, Ray, ZenML, Databricks, Drift Detection")
#skill-row("Cloud & DevOps", "AWS, Azure, Docker, Kubernetes, Helm, Terraform, GitHub Actions, Azure DevOps, EventBridge, Lambda")
#skill-row("Web & Databases", "Django, FastAPI, Next.js, Tailwind CSS, PostgreSQL, MongoDB, Redis, Celery")
#skill-row("Programming & Core CS", "Python, JavaScript, SQL, DSA, Linux, Git")

// ─── Experience ──────────────────────────────────────────────
#section("Work Experience")

#company(
  "Sigmoid (Astar Data LLP)",
  "MLOps Engineer",
  "Feb 2024 – Present",
  "Bengaluru, India",
)[
  - Architecting and deploying *production-grade agentic AI systems* using LangChain and LangGraph with custom tool integrations; implemented Langfuse for full observability, tracing, and cost monitoring across all LLM interactions.
  - Orchestrated *end-to-end MLOps workflows* on AWS SageMaker covering data preprocessing, distributed model training, and automated ECS deployments; implemented drift-triggered retraining via EventBridge, Lambda, and SNS alerting.
  - Integrated *MLflow* for complete lifecycle management of LLM and deep learning models (PyTorch, Transformers, MBART, embedding models) within Databricks — experiment tracking, model versioning, and serving.
  - Built a *SQL rule generator* using Azure AI Foundry's GPT-4o-mini that auto-generates context-aware data validation rules from schema metadata and profiling results, backed by ChromaDB as the vector store.
  - Deployed a *two-tier application on AKS* using Helm charts with Ingress routing and API Gateway for secure access; maintained CI/CD via Azure DevOps and ADF Dev–Prod environment synchronisation.
  - Provisioned *AWS infrastructure with Terraform* and deployed Apache Airflow on AKS, authoring DAGs capable of processing multilingual scripts and orchestrating complex multi-step workflows.
  - Designed a *scalable MLOps framework* using MLflow and Ray enabling parallel training and 4× faster experimentation across ingestion, training, and deployment stages.
  - Integrated *Databricks Asset Bundles (DAB)* to fully automate model deployment pipelines, reducing release time by 50% across dev, staging, and production environments.
  - Developed a *multi-cloud billing ingestion module* using FastAPI, PostgreSQL, and Celery to fetch, transform, and store 10M+ monthly records from AWS, Azure, and GCP cost/usage APIs.
]

#company(
  "Test Yantra",
  "Associate Software Engineer",
  "Mar 2023 – Feb 2024",
  "Bengaluru, India",
)[
  - Built an *HR management application* using Django and Django REST Framework with RESTful APIs and a student–company matching and filtering system.
  - Implemented *JWT authentication* with role-based access control for admin, company, and student personas.
  - Designed the complete *PostgreSQL schema* ensuring normalised relations and query-optimised structure.
  - Added *Redis caching* and Celery task queues for background processing and scheduled job execution.
  - Wrote pytest test suites and *containerised the full application* with Docker for consistent deployments.
]

// ─── Education ───────────────────────────────────────────────
#section("Education")
#grid(
  columns: (1fr, auto),
  align: (left, right),
  text(weight: "bold", size: 9.5pt, fill: clr-primary)[Biju Patnaik University of Technology],
  text(fill: clr-subtle, size: 8.2pt)[2018 – 2022],
)
#v(1pt)
#text(style: "italic", size: 8.6pt, fill: clr-accent)[B.Tech in Computer Science & Engineering]
#h(4pt)
#text(size: 8pt, fill: clr-subtle)[· Rourkela, Odisha, India]

// ─── Certifications ───────────────────────────────────────────
#section("Certifications")
#grid(
  columns: (1fr, auto),
  align: (left, right),
  text(weight: "bold", size: 9.5pt, fill: clr-primary)[AWS Certified ML Engineer – Associate],
  text(fill: clr-subtle, size: 8.2pt)[2024],
)
#v(1pt)
#text(size: 8pt, fill: clr-subtle, style: "italic")[MLA-C01 · Validates expertise in designing, building, and deploying *ML solutions on AWS*.]