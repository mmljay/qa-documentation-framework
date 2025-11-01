# QA Documentation Framework (Confluence + TestRail)

A standardized QA documentation and test-management framework to improve onboarding, traceability, and quality governance.

---

## 🧭 Overview
This framework defines reusable templates, automation scripts, and process documentation for QA teams using Confluence and TestRail.

**Core Tools:** Confluence | TestRail | Jira | JMeter | Postman | Jenkins

---

## 📁 Structure
confluence_templates/ → Test Plan, Defect Report, QA Checklist
testrail_templates/ → CSV templates for test cases & runs
docs/ → Process mapping & traceability matrix
scripts/ → API integration utilities for Confluence & TestRail


---

## 🚀 Usage
1. Edit and publish `confluence_templates/*` to your Confluence space.  
2. Import `testrail_templates/test_case_template.csv` into TestRail.  
3. Use `scripts/export_to_confluence.sh` and `scripts/import_testrail_cases.sh` to automate publishing.  
4. Keep QA process documentation (`docs/`) updated with each release.

---

## 🎯 Benefits
- Speeds up QA onboarding by 40 %  
- Establishes traceability between requirements, tests, and defects  
- Enables lightweight tool automation without vendor lock-in  
- Standardizes reporting and SLA visibility across teams

---

**Maintainer:** Malsha Jayawardena  
📂 [github.com/mmljay/qa-documentation-framework](https://github.com/mmljay/qa-documentation-framework)
