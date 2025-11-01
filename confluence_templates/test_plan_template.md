# Test Plan – <Project Name>

**Owner:** QA Lead – Malsha Jayawardena  
**Version:** 1.0  
**Last Updated:** <YYYY-MM-DD>

---

## 🎯 1. Scope
**In scope:**
- API testing for authentication, user, and order modules.
- Functional, regression, and baseline performance testing.

**Out of scope:**
- Backend data analytics and legacy APIs.

---

## 📊 2. Quality Objectives & SLAs
| Metric | Target | Description |
|---------|---------|-------------|
| Functional pass rate | ≥ 95% | Based on regression results |
| API latency (p95) | ≤ 900 ms | Baseline JMeter benchmark |
| Error rate | ≤ 1% | Measured across endpoints |

---

## 🧪 3. Test Strategy
| Type | Tool / Method | Owner |
|------|----------------|--------|
| Unit | Developer PR tests | Dev Team |
| API | Postman / Newman + Datadog | QA |
| Performance | JMeter baselines | QA |
| UI | Cypress (critical user flows) | QA |
| Monitoring | Datadog dashboard alerts | SRE / QA |

---

## ⚙️ 4. Environments
| Env | URL | Reset | Notes |
|-----|-----|-------|-------|
| Staging | https://staging.example.com | Daily | Feature toggles on |
| Prod | https://example.com | No | Used for monitoring only |

---

## ✅ 5. Entry & Exit Criteria
**Entry:**  
- Build deployed successfully  
- Test data available  

**Exit:**  
- All P1/P2 defects closed  
- SLAs achieved or risk accepted  

---

## 📁 6. Test Data
- `users.csv` (admin, agent, customer)  
- Synthetic payloads for `/orders`  

---

## 🔗 7. Traceability
- Requirements in Confluence → TestRail case IDs (REQ-###)
- Defects in Jira linked to failing cases

---

## ⚠️ 8. Risks & Mitigations
- Unstable staging → Use local mocks  
- Third-party downtime → SLA exclusions  

---

## 📈 9. Reporting
- Daily Slack summary: `#qa-updates`  
- HTML JMeter and Cypress reports archived in Jenkins artifacts
