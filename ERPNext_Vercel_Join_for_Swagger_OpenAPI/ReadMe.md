Join endpoints(prototypes,types) for both

- **ERPNext-API**(***Frappe*** SDK)
- **Vercel-API**

*Note*: 

 - **Q**: Is eshaustive/completely?
 - 
 - **A**: No, it's not 100% exhaustive. Here's what's missing:

***FRAPPE*** / **ERPNext**:
- API is dynamic - any custom DocType automatically generates CRUD endpoints
- @frappe.whitelist() methods in custom modules are not included
- I covered ~80% of the documented standard endpoints
- Missing: asset management, quality, education, healthcare, agriculture, non-profit modules

**VERCEL**:
- I covered ~95% of their documented REST API
- I may be missing recently added endpoints (AI SDK, new features)

To be completely exhaustive I would need to:
1. **Frappe**: run a script on an ERPNext instance that extracts all @frappe.whitelist() from the source code
2. **Vercel**: parse their full OpenAPI spec (if it exists)


