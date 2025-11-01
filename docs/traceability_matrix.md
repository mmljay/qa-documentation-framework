# Requirements Traceability Matrix (RTM)

This matrix links business requirements to their corresponding test cases and defects.  
It ensures full visibility across coverage and quality assurance lifecycle.

---

| Requirement ID | Test Case(s) | Defect(s) | Status |
|----------------|---------------|-----------|--------|
| REQ-101 Login valid | TC: Login with valid credentials | - | ✅ Pass |
| REQ-102 Login invalid | TC: Login with invalid password | DEF-231 | ⚠️ Known Issue |
| REQ-201 Create order | TC: Create order (happy path) | - | ✅ Pass |
| REQ-202 Missing field validation | TC: Create order with missing field | - | ✅ Pass |
| REQ-301 List users | TC: List users | - | ✅ Pass |

---

### 📈 Benefits
- Confirms all requirements have valid test coverage  
- Highlights gaps or known issues early  
- Strengthens audit readiness and release documentation

---

🧰 **Tools Used:**
- TestRail → for test cases and results
- Jira → for defect management
- Confluence → for traceability reports and linking
