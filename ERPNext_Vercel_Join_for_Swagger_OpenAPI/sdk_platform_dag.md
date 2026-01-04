# SDK Platform - DAG Execution Plan

## Legenda
- **Task ID**: Identificator unic pentru referinta
- **Depends On**: Taskuri care trebuie completate inainte (DAG edges)
- **Paralel cu**: Taskuri care pot rula simultan
- **Budget Est.**: Estimare buget in EUR (freelancer rate)
- **Skill**: Competente necesare

---

## LAYER 0: INFRASTRUCTURE FOUNDATION

### T0.1 - Setup Vercel Account & Project Structure
- **Depends On**: (none - START)
- **Paralel cu**: T0.2, T0.3
- **Budget Est.**: €200-400
- **Skill**: DevOps, Vercel
- **Output**: Vercel org, project template, env vars configured

### T0.2 - Setup ERPNext Instance (Development)
- **Depends On**: (none - START)
- **Paralel cu**: T0.1, T0.3
- **Budget Est.**: €300-500
- **Skill**: ERPNext/Frappe, Linux sysadmin
- **Output**: ERPNext dev instance running, API accessible

### T0.3 - Setup Airflow Instance
- **Depends On**: (none - START)
- **Paralel cu**: T0.1, T0.2
- **Budget Est.**: €300-500
- **Skill**: Airflow, Docker/K8s
- **Output**: Airflow running, UI accessible, basic DAG working

### T0.4 - CI/CD Pipeline Base
- **Depends On**: T0.1
- **Paralel cu**: T0.2, T0.3
- **Budget Est.**: €200-300
- **Skill**: GitHub Actions, DevOps
- **Output**: Auto-deploy to Vercel on push, testing pipeline

### T0.5 - Shared Python Package Structure
- **Depends On**: T0.1
- **Paralel cu**: T0.2, T0.3, T0.4
- **Budget Est.**: €200-300
- **Skill**: Python packaging, Poetry/setuptools
- **Output**: Monorepo structure, shared libs, pyproject.toml

---

## LAYER 1: FASTAPI GATEWAY (Core)

### T1.1 - FastAPI Base Project
- **Depends On**: T0.5
- **Paralel cu**: T1.2
- **Budget Est.**: €300-500
- **Skill**: FastAPI, Python
- **Output**: FastAPI app with OpenAPI auto-generation, health endpoints

### T1.2 - Authentication System Design
- **Depends On**: T0.5
- **Paralel cu**: T1.1
- **Budget Est.**: €400-600
- **Skill**: Security, OAuth2, JWT
- **Output**: Auth design doc, token strategy, role separation (admin vs developer)

### T1.3 - Authentication Implementation
- **Depends On**: T1.1, T1.2
- **Paralel cu**: T1.4
- **Budget Est.**: €500-800
- **Skill**: FastAPI, Security
- **Output**: Auth middleware, API key generation, admin auth separate

### T1.4 - Multi-Tenancy Foundation
- **Depends On**: T1.1, T1.2
- **Paralel cu**: T1.3
- **Budget Est.**: €500-800
- **Skill**: Architecture, Database design
- **Output**: Tenant isolation design, DB schema, request context

### T1.5 - Rate Limiting & Quotas
- **Depends On**: T1.3, T1.4
- **Paralel cu**: (none)
- **Budget Est.**: €300-400
- **Skill**: FastAPI, Redis
- **Output**: Per-tenant rate limits, usage tracking

---

## LAYER 2: NATIONAL MODULE - ROMANIA (MVP)

### T2.1 - cursBNR API
- **Depends On**: T1.1
- **Paralel cu**: T2.2, T2.3
- **Budget Est.**: €200-300
- **Skill**: Python, XML parsing
- **Output**: /ro/curs-bnr endpoint, daily rates, historical

### T2.2 - CUI/CIF Validator
- **Depends On**: T1.1
- **Paralel cu**: T2.1, T2.3
- **Budget Est.**: €200-300
- **Skill**: Python, Romanian fiscal rules
- **Output**: /ro/validate-cui endpoint, checksum validation

### T2.3 - ANAF VIES Integration
- **Depends On**: T1.1
- **Paralel cu**: T2.1, T2.2
- **Budget Est.**: €300-500
- **Skill**: Python, SOAP/REST, ANAF APIs
- **Output**: /ro/vies-check endpoint, TVA validation

### T2.4 - eFactura ANAF (Read)
- **Depends On**: T1.3, T2.3
- **Paralel cu**: T2.5
- **Budget Est.**: €800-1200
- **Skill**: Python, ANAF SPV, XML/UBL
- **Output**: Download received invoices from ANAF

### T2.5 - eFactura ANAF (Send)
- **Depends On**: T1.3, T2.3
- **Paralel cu**: T2.4
- **Budget Est.**: €1000-1500
- **Skill**: Python, ANAF SPV, Digital signatures, UBL
- **Output**: Generate and send eFactura to ANAF

### T2.6 - RO Module Package
- **Depends On**: T2.1, T2.2, T2.3, T2.4, T2.5
- **Paralel cu**: (none)
- **Budget Est.**: €200-300
- **Skill**: Python packaging
- **Output**: sdk.national.ro module complete, documented

---

## LAYER 3: ERP WRAPPER

### T3.1 - Frappe API Client
- **Depends On**: T0.2, T0.5
- **Paralel cu**: T3.2
- **Budget Est.**: €400-600
- **Skill**: Python, Frappe API
- **Output**: Python client for Frappe REST API, auth handling

### T3.2 - ERPNext Function Inventory
- **Depends On**: T0.2
- **Paralel cu**: T3.1
- **Budget Est.**: €300-500
- **Skill**: ERPNext knowledge
- **Output**: Final list of functions to expose (from CSV, refined)

### T3.3 - Customer/Supplier Wrapper
- **Depends On**: T3.1, T3.2, T1.4
- **Paralel cu**: T3.4, T3.5
- **Budget Est.**: €400-600
- **Skill**: Python, ERPNext
- **Output**: sdk.erp.customers.*, sdk.erp.suppliers.*

### T3.4 - Items/Stock Wrapper
- **Depends On**: T3.1, T3.2, T1.4
- **Paralel cu**: T3.3, T3.5
- **Budget Est.**: €400-600
- **Skill**: Python, ERPNext
- **Output**: sdk.erp.items.*, sdk.erp.stock.*

### T3.5 - Orders/Invoices Wrapper
- **Depends On**: T3.1, T3.2, T1.4
- **Paralel cu**: T3.3, T3.4
- **Budget Est.**: €600-900
- **Skill**: Python, ERPNext
- **Output**: sdk.erp.orders.*, sdk.erp.invoices.*

### T3.6 - Payments Wrapper
- **Depends On**: T3.5
- **Paralel cu**: T3.7
- **Budget Est.**: €400-600
- **Skill**: Python, ERPNext
- **Output**: sdk.erp.payments.*

### T3.7 - Reports Wrapper
- **Depends On**: T3.3, T3.4, T3.5
- **Paralel cu**: T3.6
- **Budget Est.**: €400-600
- **Skill**: Python, ERPNext
- **Output**: sdk.erp.reports.* (basic reports)

### T3.8 - User Provisioning ERPNext
- **Depends On**: T3.1, T1.3, T1.4
- **Paralel cu**: T3.3, T3.4, T3.5
- **Budget Est.**: €500-700
- **Skill**: Python, Frappe User management
- **Output**: Auto-create ERPNext user when SDK user registers

---

## LAYER 4: VERCEL WRAPPER

### T4.1 - Vercel SDK Python Client
- **Depends On**: T0.1, T0.5
- **Paralel cu**: T4.2
- **Budget Est.**: €400-600
- **Skill**: Python, Vercel API
- **Output**: Python wrapper for Vercel REST API

### T4.2 - Vercel Function Inventory
- **Depends On**: T0.1
- **Paralel cu**: T4.1
- **Budget Est.**: €200-300
- **Skill**: Vercel knowledge
- **Output**: Final list of Vercel functions to expose

### T4.3 - Projects Wrapper
- **Depends On**: T4.1, T4.2, T1.4
- **Paralel cu**: T4.4, T4.5
- **Budget Est.**: €400-600
- **Skill**: Python, Vercel
- **Output**: sdk.hosting.projects.*

### T4.4 - Deployments Wrapper
- **Depends On**: T4.1, T4.2, T1.4
- **Paralel cu**: T4.3, T4.5
- **Budget Est.**: €400-600
- **Skill**: Python, Vercel
- **Output**: sdk.hosting.deployments.*

### T4.5 - Domains Wrapper
- **Depends On**: T4.1, T4.2, T1.4
- **Paralel cu**: T4.3, T4.4
- **Budget Est.**: €400-600
- **Skill**: Python, Vercel
- **Output**: sdk.hosting.domains.*

### T4.6 - Environment Variables Wrapper
- **Depends On**: T4.3
- **Paralel cu**: T4.7
- **Budget Est.**: €300-400
- **Skill**: Python, Vercel
- **Output**: sdk.hosting.env.*

### T4.7 - User Provisioning Vercel
- **Depends On**: T4.1, T1.3, T1.4
- **Paralel cu**: T4.3, T4.4, T4.5
- **Budget Est.**: €400-600
- **Skill**: Python, Vercel Teams API
- **Output**: Auto-create Vercel team member when SDK user registers

---

## LAYER 5: ADMIN FUNCTIONS

### T5.1 - Admin Router Separation
- **Depends On**: T1.3
- **Paralel cu**: T5.2
- **Budget Est.**: €300-400
- **Skill**: FastAPI
- **Output**: /admin/v1/* routes, separate auth

### T5.2 - Offer Schema Design
- **Depends On**: T0.5
- **Paralel cu**: T5.1
- **Budget Est.**: €300-500
- **Skill**: OpenAPI, Architecture
- **Output**: YAML/JSON schema for unified offer

### T5.3 - updateERPNextOffer
- **Depends On**: T5.1, T5.2, T3.1
- **Paralel cu**: T5.4
- **Budget Est.**: €500-800
- **Skill**: Python, Frappe introspection
- **Output**: Admin endpoint to regenerate erpnext_offer.yaml

### T5.4 - updateVercelOffer
- **Depends On**: T5.1, T5.2, T4.1
- **Paralel cu**: T5.3
- **Budget Est.**: €500-800
- **Skill**: Python, Vercel SDK parsing
- **Output**: Admin endpoint to regenerate vercel_offer.yaml

### T5.5 - updateOffer (Merge)
- **Depends On**: T5.3, T5.4
- **Paralel cu**: (none)
- **Budget Est.**: €300-500
- **Skill**: Python, OpenAPI merge
- **Output**: Merge all offers into unified_offer.yaml

### T5.6 - getOffer (Public)
- **Depends On**: T5.5
- **Paralel cu**: (none)
- **Budget Est.**: €200-300
- **Skill**: FastAPI
- **Output**: Public endpoint returning unified OpenAPI spec

---

## LAYER 6: ORCHESTRATION (AIRFLOW)

### T6.1 - User Provisioning DAG
- **Depends On**: T0.3, T3.8, T4.7
- **Paralel cu**: T6.2, T6.3
- **Budget Est.**: €500-700
- **Skill**: Airflow, Python
- **Output**: DAG: on user register -> create in ERPNext + Vercel

### T6.2 - Daily Rates DAG
- **Depends On**: T0.3, T2.1
- **Paralel cu**: T6.1, T6.3
- **Budget Est.**: €300-400
- **Skill**: Airflow
- **Output**: DAG: daily fetch BNR rates, cache

### T6.3 - Offer Sync DAG
- **Depends On**: T0.3, T5.5
- **Paralel cu**: T6.1, T6.2
- **Budget Est.**: €400-500
- **Skill**: Airflow
- **Output**: DAG: scheduled offer regeneration

### T6.4 - Monitoring & Alerting
- **Depends On**: T6.1, T6.2, T6.3
- **Paralel cu**: (none)
- **Budget Est.**: €400-600
- **Skill**: Airflow, monitoring tools
- **Output**: Alerts on DAG failures, SLA tracking

---

## LAYER 7: NATIONAL MODULE - ITALY

### T7.1 - FatturaPA Schema
- **Depends On**: T1.1
- **Paralel cu**: T7.2
- **Budget Est.**: €400-600
- **Skill**: Italian fiscal, XML
- **Output**: FatturaPA XML generation

### T7.2 - Codice Fiscale Validator
- **Depends On**: T1.1
- **Paralel cu**: T7.1
- **Budget Est.**: €200-300
- **Skill**: Python, Italian fiscal rules
- **Output**: /it/validate-cf endpoint

### T7.3 - SDI Integration
- **Depends On**: T1.3, T7.1
- **Paralel cu**: (none)
- **Budget Est.**: €1500-2500
- **Skill**: Italian eInvoicing, SDI, certificates
- **Output**: Send/receive FatturaPA via SDI

### T7.4 - IT Module Package
- **Depends On**: T7.1, T7.2, T7.3
- **Paralel cu**: (none)
- **Budget Est.**: €200-300
- **Skill**: Python packaging
- **Output**: sdk.national.it module complete

---

## LAYER 8: PRODUCTION READINESS

### T8.1 - Security Audit
- **Depends On**: ALL previous layers
- **Paralel cu**: T8.2
- **Budget Est.**: €1500-3000
- **Skill**: Security specialist
- **Output**: Vulnerability report, fixes

### T8.2 - Load Testing
- **Depends On**: ALL previous layers
- **Paralel cu**: T8.1
- **Budget Est.**: €500-800
- **Skill**: Performance testing
- **Output**: Load test results, bottleneck fixes

### T8.3 - SDK Documentation
- **Depends On**: T2.6, T3.7, T4.6, T5.6
- **Paralel cu**: T8.1, T8.2
- **Budget Est.**: €800-1200
- **Skill**: Technical writing
- **Output**: docs.sdk.com, tutorials, examples

### T8.4 - Billing Integration
- **Depends On**: T1.4, T1.5
- **Paralel cu**: T8.1, T8.2
- **Budget Est.**: €800-1200
- **Skill**: Stripe/payment integration
- **Output**: Subscription billing, usage metering

### T8.5 - Staging Environment
- **Depends On**: T0.1, T0.2, T0.3
- **Paralel cu**: T8.1, T8.2
- **Budget Est.**: €400-600
- **Skill**: DevOps
- **Output**: Staging env mirroring production

### T8.6 - Production Deploy
- **Depends On**: T8.1, T8.2, T8.5
- **Paralel cu**: (none)
- **Budget Est.**: €500-800
- **Skill**: DevOps
- **Output**: Production environment live

---

## DAG VISUALIZATION

```
START
  |
  +--[T0.1]--+--[T0.4]--+--[T0.5]--+--[T1.1]--+--[T1.3]--+--[T1.5]
  |          |                     |          |          |
  +--[T0.2]--+                     +--[T1.2]--+--[T1.4]--+
  |          |                                |
  +--[T0.3]--+                                |
                                              |
  +-------------------------------------------+
  |
  +--[T2.1]--+
  +--[T2.2]--+--[T2.6]
  +--[T2.3]--+--[T2.4]--+
             +--[T2.5]--+
  |
  +--[T3.1]--+--[T3.3]--+
  +--[T3.2]--+--[T3.4]--+--[T3.6]--+--[T3.8]
             +--[T3.5]--+--[T3.7]--+
  |
  +--[T4.1]--+--[T4.3]--+--[T4.6]--+
  +--[T4.2]--+--[T4.4]--+          +--[T4.7]
             +--[T4.5]--+
  |
  +--[T5.1]--+--[T5.3]--+
  +--[T5.2]--+--[T5.4]--+--[T5.5]--+--[T5.6]
  |
  +--[T6.1]--+
  +--[T6.2]--+--[T6.4]
  +--[T6.3]--+
  |
  +--[T7.1]--+--[T7.3]--+--[T7.4]
  +--[T7.2]--+
  |
  +--[T8.1]--+
  +--[T8.2]--+--[T8.6]--END
  +--[T8.3]--+
  +--[T8.4]--+
  +--[T8.5]--+
```

---

## SUMMARY

| Layer | Tasks | Budget Range | Parallelism |
|-------|-------|--------------|-------------|
| L0 Infrastructure | 5 | €1,200-2,000 | 3 parallel |
| L1 Gateway | 5 | €2,000-3,100 | 2 parallel |
| L2 Romania | 6 | €2,700-4,100 | 3 parallel |
| L3 ERP | 8 | €3,400-5,100 | 4 parallel |
| L4 Vercel | 7 | €2,500-3,700 | 3 parallel |
| L5 Admin | 6 | €2,100-3,300 | 2 parallel |
| L6 Airflow | 4 | €1,600-2,200 | 3 parallel |
| L7 Italy | 4 | €2,300-3,700 | 2 parallel |
| L8 Production | 6 | €4,500-7,600 | 4 parallel |
| **TOTAL** | **51 tasks** | **€22,300-34,800** | max 4 parallel |

---

## EXECUTION STRATEGY

### Phase 1: Foundation + MVP (Tasks: 16)
T0.* + T1.* + T2.1, T2.2, T2.3
- **Budget**: €6,000-9,000
- **Freelancers**: 3-4 in parallel
- **Result**: Working cursBNR + basic gateway

### Phase 2: ERP + Vercel Wrappers (Tasks: 15)
T3.* + T4.*
- **Budget**: €6,000-9,000
- **Freelancers**: 4 in parallel
- **Result**: Full SDK functionality

### Phase 3: Admin + Orchestration (Tasks: 10)
T5.* + T6.*
- **Budget**: €3,700-5,500
- **Freelancers**: 2-3 in parallel
- **Result**: Admin controls, automation

### Phase 4: Italy + Production (Tasks: 10)
T7.* + T8.*
- **Budget**: €6,800-11,300
- **Freelancers**: 3-4 in parallel
- **Result**: Second country, production ready

---

## NOTES

1. Budget estimates assume Eastern European freelancer rates (€25-50/hr)
2. Tasks can be posted as separate Freelancer projects
3. Each task has clear input dependencies and output deliverables
4. Parallelism limited by dependencies, not resources
5. Add 20% buffer for integration/debugging between tasks
