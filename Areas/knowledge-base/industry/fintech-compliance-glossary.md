# Fintech Compliance Glossary

## Overview

This glossary covers the key compliance frameworks and terms that Sari Sari encounters in fintech design work. Understanding these is essential for designing compliant user experiences and for speaking credibly with fintech clients.

## Frameworks

### SOC 2 (System and Organization Controls 2)

An auditing standard developed by the AICPA that evaluates how a company manages customer data. It covers five trust service criteria: security, availability, processing integrity, confidentiality, and privacy. SOC 2 compliance is often a prerequisite for fintech companies selling to enterprises.

**UX implications:** Audit logging, access controls, session management, data encryption indicators, and clear permission models all need to be designed thoughtfully. Users (and auditors) need to see that security controls are in place.

### PCI DSS (Payment Card Industry Data Security Standard)

A set of security standards for organizations that handle credit card information. Maintained by the PCI Security Standards Council. Compliance is required for any company that processes, stores, or transmits cardholder data.

**UX implications:** Card input forms, tokenization flows, payment confirmation screens, and stored payment method management all fall under PCI DSS. Design decisions about what data is displayed (e.g., masked card numbers), how payment forms are structured, and where data entry happens (embedded iframes vs. native forms) are directly affected.

### KYC (Know Your Customer)

The process of verifying the identity of customers. Required by financial regulations to prevent fraud, money laundering, and terrorist financing. KYC typically involves collecting identity documents, verifying them, and screening against watchlists.

**UX implications:** KYC flows are often the highest-friction part of fintech onboarding. Designing these flows to be clear, confidence-building, and as low-friction as possible (while still collecting required information) is one of the most impactful things we do. Multi-step forms, document upload interfaces, verification status indicators, and error recovery flows are all critical.

### AML (Anti-Money Laundering)

Regulations and procedures designed to prevent criminals from disguising illegally obtained funds as legitimate income. AML compliance typically includes transaction monitoring, suspicious activity reporting, and customer due diligence.

**UX implications:** Transaction monitoring dashboards, alert management interfaces, and suspicious activity reporting workflows for compliance teams. These are often internal tools, but they still need thoughtful design.

### GDPR (General Data Protection Regulation)

European Union regulation on data protection and privacy. Applies to any company handling EU citizen data, regardless of where the company is based.

**UX implications:** Cookie consent, data deletion requests, privacy settings, data export functionality, and clear privacy policy presentation.

## Common Terms

- **Onboarding conversion:** The percentage of users who complete the full signup and verification process. A key metric for fintech products.
- **Drop-off rate:** Where users abandon a multi-step flow. Identifying and reducing drop-off in KYC/onboarding flows is a core design optimization.
- **Tokenization:** Replacing sensitive data (like credit card numbers) with non-sensitive placeholders (tokens). Reduces PCI DSS scope.
- **MFA (Multi-Factor Authentication):** Requiring two or more verification methods. Important for high-trust flows.
- **Watchlist screening:** Checking customer identities against government sanction lists and politically exposed persons (PEP) databases.
- **SAR (Suspicious Activity Report):** A report filed with regulators when potentially illegal financial activity is detected.

## Changelog

- 2025: Glossary created covering primary compliance frameworks relevant to fintech UX.
