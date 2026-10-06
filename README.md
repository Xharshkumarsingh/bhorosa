# Bharosa Digital — Modern Digital Growth Agency Platform

> **Build. Brand. Grow.**  
> *Your Digital Growth Partner • Aurangabad, Bihar, India • Serving Businesses Across India*

---

## 🌟 Overview

**Bharosa Digital** is a digital growth agency web application and production platform built for modern Indian businesses (coaching institutes, clinics, restaurants, real estate, retailers, startups, and manufacturers).

The platform transforms local businesses into powerful digital brands with:
- Blazingly fast, mobile-first website experiences
- Meta Ads, Google Ads, and full-funnel lead generation
- Google Business Profile and Local SEO 3-Pack optimization
- Official WhatsApp Business API automations & CRM synchronization
- A SaaS-grade Admin Portal for lead lifecycle tracking, service customization, and analytics.

---

## 🎨 Design System & Palette

- **Deep Navy**: `#07152F` (Background & Header)
- **Primary Blue**: `#126BFF` (Buttons & Highlights)
- **Electric Blue**: `#2F80FF` (Gradients & Glows)
- **Light Surface**: `#F6F9FF` (Content Background)
- **White**: `#FFFFFF` (Card surfaces & contrast)
- **WhatsApp Green**: `#25D366` (Direct instant chat actions)
- **Typography**: Plus Jakarta Sans / Inter

---

## 🏗️ Architecture & File Structure

```
bharosa_digital/
├── app/                              # Next.js 14 App Router
│   ├── admin/page.tsx                # SaaS Admin Dashboard & Login
│   ├── services/[slug]/page.tsx      # Dynamic Reusable Service Detail Pages
│   ├── globals.css                   # Premium CSS Design System
│   ├── layout.tsx                    # Root Layout & LocalBusiness JSON-LD Schema
│   ├── page.tsx                      # Main Landing Page
│   ├── not-found.tsx                 # Branded 404 Page
│   ├── sitemap.ts                    # Dynamic XML Sitemap
│   ├── robots.ts                     # Search Engine Robots Configuration
│   └── icon.tsx                      # Dynamic Favicon Generator
├── components/
│   ├── ui/
│   │   ├── Navbar.tsx                # Glassmorphic Sticky Navigation
│   │   ├── Footer.tsx                # Multi-column Premium Footer
│   │   ├── WhatsAppButton.tsx        # Pulsing Persistent WhatsApp Floating CTA
│   │   └── AnimatedCounter.tsx       # Scroll-triggered Number Counters
│   └── sections/
│       ├── HeroSection.tsx           # Full-screen Hero with 3D Tech Composition
│       ├── TrustSection.tsx          # 4 Animated Benefit Cards
│       ├── ServicesSection.tsx       # 12 Digital Growth Service Cards
│       ├── WhyChooseUsSection.tsx    # 6 Trust & Local Understanding Cards
│       ├── IndustriesSection.tsx     # 10 Interactive Industry Custom Stacks
│       ├── ProcessSection.tsx        # 6-Step Methodology Timeline
│       ├── PortfolioSection.tsx      # Filterable Realistic Case Studies & Modal
│       ├── ResultsSection.tsx        # Dark Milestone Statistics Section
│       ├── TestimonialsSection.tsx   # Carousel with Auto-slide & Pause on Hover
│       ├── FAQSection.tsx            # Animated 10-Question Accordion
│       └── ContactSection.tsx        # High-Converting Lead Consultation Form
├── server/                           # Node.js + Express + TypeScript Backend
│   ├── controllers/
│   │   ├── authController.ts         # JWT Authentication
│   │   ├── leadsController.ts        # Lead Submissions & Status Transitions
│   │   ├── contactController.ts      # Contact Form Messages
│   │   ├── servicesController.ts     # Services CRUD
│   │   ├── portfolioController.ts    # Portfolio Projects CRUD
│   │   ├── testimonialsController.ts # Testimonials CRUD
│   │   └── statsController.ts        # Metrics & Counters
│   ├── middleware/
│   │   ├── auth.ts                   # JWT Bearer Token Verification
│   │   ├── rateLimiter.ts            # Sliding Window Anti-Spam Rate Limiter
│   │   └── errorHandler.ts           # Centralized Error Interceptor
│   ├── routes/                       # Express Route Handlers
│   ├── utils/
│   │   ├── db.ts                     # Prisma ORM + Resilient Local Store
│   │   ├── jwt.ts                    # JWT Token Utilities
│   │   ├── mailer.ts                 # Nodemailer Email Notifications
│   │   └── seedData.ts               # 12 Services, 7 Projects, 6 Testimonials, 10 FAQs
│   └── server.ts                     # Express Server Entrypoint (Port 5000)
├── prisma/
│   ├── schema.prisma                 # PostgreSQL Schema (User, Lead, Contact, etc.)
│   └── seed.ts                       # Database Population Script
└── package.json
```

---

## 🚀 Quick Start & Local Execution

### 1. Prerequisites
- Node.js `v18+` or `v20+` or `v24+`
- npm `v9+` or `v11+`
- *(Optional)* PostgreSQL (A persistent zero-config local store is built-in for instant out-of-the-box local testing without requiring external PostgreSQL setup).

### 2. Install Dependencies
```bash
npm install
```

### 3. Generate Prisma Client
```bash
npm run prisma:generate
```

### 4. Configure Environment
Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```

### 5. Start Frontend & Backend Concurrently
```bash
npm run dev
```

- **Frontend Website**: `http://localhost:3000`
- **Backend API**: `http://localhost:5000/api`
- **Admin Dashboard**: `http://localhost:3000/admin`

---

## 🔐 Admin Dashboard Credentials

- **URL**: `http://localhost:3000/admin`
- **Email**: `admin@bharosadigital.in`
- **Password**: `BharosaAdmin2026!#`

*Inside the Admin Dashboard, you can:*
- Monitor lead velocity: **New**, **Contacted**, **Qualified**, **Converted**, **Closed**
- Add / Edit / Delete Services, Portfolio Projects, and Testimonials
- Read & mark contact inquiries
- Direct click-to-chat WhatsApp link for incoming leads

---

## 📡 Backend API Endpoints

### Public Endpoints:
- `POST /api/leads` — Submit lead inquiry (Rate limited, triggers email + WhatsApp prefilled link)
- `POST /api/contact` — General contact message
- `GET /api/services` — List of all 12 services
- `GET /api/services/:slug` — Single service detail
- `GET /api/portfolio` — Filterable portfolio projects (`?category=Websites`)
- `GET /api/testimonials` — Client testimonials
- `GET /api/stats/public` — Milestone counters

### Admin Protected Endpoints (`Authorization: Bearer <JWT>`):
- `POST /api/auth/login` — Authenticate admin & receive JWT
- `GET /api/stats/dashboard` — Overview counts & recent inquiries
- `GET /api/leads` — All leads with optional `?status=New` filter
- `PATCH /api/leads/:id` — Update status or internal notes
- `DELETE /api/leads/:id` — Remove lead
- `GET /api/contact` — View messages
- `PATCH /api/contact/:id/read` — Mark message as read
- `POST /api/services` & `PATCH /api/services/:id` & `DELETE /api/services/:id`
- `POST /api/portfolio` & `PATCH /api/portfolio/:id` & `DELETE /api/portfolio/:id`
- `POST /api/testimonials` & `PATCH /api/testimonials/:id` & `DELETE /api/testimonials/:id`

---

## 🌐 Contact & Agency Information

- **Company**: Bharosa Digital
- **Location**: Aurangabad, Bihar 824101, India
- **Phone**: +91 62027 61571
- **WhatsApp**: +91 62027 61571
- **Email**: [xharshkumarsingh@gmail.com](mailto:xharshkumarsingh@gmail.com)
- **Website**: https://bharosadigital.in
