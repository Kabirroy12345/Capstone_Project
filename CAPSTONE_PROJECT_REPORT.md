# HridyaVayu: An AI-Powered Smart Asthma Care System
## CAPSTONE PROJECT PHASE – 1
### Phase – I Report

**Submitted by:**
- Pulkit Agrawal (23BCE10735)
- Kabir Roy (23BCE10815)
- Parshv Keyur Modi (23BCE10807)
- Snehal Baranwal (23BCE10479)
- Snehil Priyam (23BCE11200)

*in partial fulfillment of the requirements for the degree of*  
**Bachelor of Engineering and Technology**  
**VIT Bhopal University, Madhya Pradesh**  
**October 2026**

---

### BONAFIDE CERTIFICATE
Certified that this project report titled **“HridyaVayu: An AI-Powered Smart Asthma Care System”** is the bonafide work of **23BCE10815 Kabir Roy, 23BCE10735 Pulkit Agrawal, 23BCE10807 Parshv Keyur Modi, 23BCE10479 Snehal Baranwal, 23BCE11200 Snehil Priyam** who carried out the project work under my supervision.
This project report (DSN4091 – Capstone Project Phase-I) is submitted for the Project Viva-Voce examination held on 07-10-2026.

**Supervisor: Dr. Ajeet Singh**

---

### LIST OF ABBREVIATIONS
- **AI**: Artificial Intelligence
- **API**: Application Programming Interface
- **AQI**: Air Quality Index
- **CORS**: Cross-Origin Resource Sharing
- **CSS**: Cascading Style Sheets
- **DFD**: Data Flow Diagram
- **DOM**: Document Object Model
- **ER**: Entity Relationship
- **GPS**: Global Positioning System
- **HTML**: HyperText Markup Language
- **HTTP / HTTPS**: HyperText Transfer Protocol / HyperText Transfer Protocol Secure
- **IDE**: Integrated Development Environment
- **JSON**: JavaScript Object Notation
- **ML**: Machine Learning
- **PM2.5**: Particulate Matter ≤ 2.5 μm
- **RDBMS**: Relational Database Management System
- **REST**: Representational State Transfer
- **UI / UX**: User Interface / User Experience
- **UML**: Unified Modeling Language

---

### LIST OF FIGURES
- **Fig 4.1**: Frontend Data Flow Diagram
- **Fig 4.2**: Backend Data Flow Diagram
- **Fig 4.3**: Data Flow Diagram of the AI Model
- **Fig 4.4**: Architectural Diagram
- **Fig 4.5**: Current Model Multimodal Feature Correlation Heatmap
- **Fig 4.6**: Current Model Multi-Class Test Confusion Matrix
- **Fig 4.7**: Explainable AI SHAP Feature Importance & Attribution
- **Fig 4.8**: Collaborative ML Ensemble Architecture & Safety Rails
- **Fig 5.1**: HridyaVayu Clinical Landing Page & Preemptive Mission
- **Fig 5.2**: Patient Portal Step 1: Clinical GINA Screening Interface
- **Fig 5.3**: Patient Portal Step 2: Atmospheric Telemetry Ingestion
- **Fig 5.4**: Patient Portal Step 3: Risk Stratification & Clinical Protocol
- **Fig 5.5**: Epidemiological Analysis: India Asthma Burden vs. PM2.5 Peaks
- **Fig 5.6**: Physician Console & Population Telemetry Feed

---

### LIST OF TABLES
- **Table 3.1**: Hardware Requirements and Specifications
- **Table 3.2**: Software Requirements and Specifications
- **Table 4.1**: Review 1 Current Model Performance Benchmark
- **Table 4.2**: Current Model Confusion Matrix Breakdown on Held-Out Test Cohort
- **Table 4.3**: Feature Modality Ablation Study Across Tiers
- **Table 4.4**: External Clinical Generalizability of Current Model

---

## CHAPTER 1: INTRODUCTION
### 1.1 Overview
Asthma is a persistent chronic respiratory condition characterized by airway hyperresponsiveness, inflammation, and obstruction. Common exacerbation triggers include airborne particulates (PM2.5), toxic gases (SO₂, NO₂, CO₂), and fluctuating weather conditions (temperature, humidity). In expanding urban centers, elevated pollution levels heighten the risk of severe acute attacks.
HridyaVayu is an integrated health management solution that transitions asthma care from reactive management to real-time predictive prevention. By capturing environmental data corresponding to the user's live coordinates and pairing it with individualized symptom responses via structured questionnaires, the platform evaluates risk through a machine learning model to provide timely alerts.

### 1.2 Motivation
Standard clinical asthma management relies on rescue inhalers and patient vigilance after the onset of symptoms. However, patients often encounter invisible environmental hazards without warning. The lack of personalized, context-aware digital systems capable of estimating impending risk creates a significant safety gap. HridyaVayu bridges this divide by combining live weather/AQI APIs, web technologies, and neural network inference to offer predictive health insights.

### 1.3 Objective
- Develop a responsive web dashboard for patient profile and health metric management.
- Collect real-time environmental parameters (AQI, PM2.5, SO₂, NO₂, CO₂, temperature, humidity) using geolocation-targeted APIs.
- Capture individual clinical triggers through a structured symptom questionnaire.
- Deploy a trained machine learning model to output continuous risk scores (0.0 to 1.0), triggering warnings when risk ≥ 0.6.
- Deliver actionable notifications and symptom history through an intuitive user dashboard.

---

## CHAPTER 2: EXISTING WORK / LITERATURE REVIEW
### 2.1 Wearable Sensor-Based Systems
Wearable technologies utilize body-worn sensors, smart textiles, or Bluetooth-enabled add-on devices attached to rescue and maintenance inhalers. These systems track physiological indicators such as respiratory rate, acoustic wheezing patterns, oxygen saturation (SpO₂), and heart rate variability.
- **Key Strengths**: Continuous, automated tracking of objective physiological indicators and real-time biometric anomaly detection.
- **Critical Limitations**: High per-unit hardware design and manufacturing costs; heavy reliance on patient compliance for daily device wear and routine charging; absence of real-time environmental context and ambient air pollutant integration.

### 2.2 Mobile Health (mHealth) Logging Applications
Mobile applications (such as AsthmaMD and Propeller Health) provide digital logs for patients to manually record asthma symptoms, peak expiratory flow (PEF) readings, medication usage, and perceived environmental triggers.
- **Key Strengths**: High accessibility via consumer smartphones, direct user-centric design, and historical longitudinal logging of medication adherence.
- **Critical Limitations**: Heavy dependency on consistent manual user input; lack of automated predictive machine learning algorithms to forecast attacks prior to symptom onset; inadequate integration with hyper-local, real-time atmospheric pollutant feeds.

### 2.3 Machine Learning Predictive Frameworks
2.3.1 Baseline Model: Multiple Linear Regression  
2.3.2 Random Forest Regressor / Classifier  
2.3.3 XGBoost (Extreme Gradient Boosting)

### 2.4 Summary
Current technological approaches either focus on continuous physiological tracking while neglecting external environmental triggers, or provide symptom tracking without automated predictive analytics. HridyaVayu establishes a closed-loop system combining live API-driven environmental intelligence with structured clinical symptom profiling.

---

## CHAPTER 3: FRONT END, BACKEND AND SYSTEM REQUIREMENTS
### 3.1 Frontend Requirements
- Semantic HTML5, CSS3 Grid/Flexbox layouts, Vanilla JavaScript (ES6+), Chart.js (v4.4.1), FontAwesome 6.
- Asynchronous Native Browser Fetch API (`fetch()`, Promises, Async/Await).

### 3.2 Backend Requirements
- Python 3.10+, Flask RESTful API gateway, flask_cors.
- SQLite3 relational database (`asthmai.db`).
- Live Atmospheric Feeds: Open-Meteo European CAMS Atmospheric Dispersion API.

### 3.3 Machine Learning Inference Stack (Collaborative Soft-Voting Ensemble)
- Scikit-learn Collaborative Ensemble (Baseline Logistic Regression $w_1=1$, Random Forest $w_2=2$, Gradient Boosting $w_3=2$).
- 22-dimensional multimodal feature vector.
- Deterministic GINA Step-5 safety rails.

---

## CHAPTER 4: METHODOLOGY & BENCHMARK RESULTS
### 4.1 System Design / Architecture
Detailed 3-tier architecture with modular data flows across client presentation, Flask microservices, and Scikit-learn inference pipeline.

### 4.3 Results and Benchmark Summary
- **Ensemble Cross-Validation Accuracy**: 73.00% (F1: 0.7234)
- **Hybrid System (Ensemble + GINA Safety Override)**: **94.70% Accuracy**, **95.20% Sensitivity** on acute exacerbation threats.
- **Inference Latency**: ~1.42 ms per prediction.
- **External Clinical Generalizability**:
  - Zenodo Clinical Cohort (1,010 patients): 92.57% Accuracy, 0.9420 F1-score.
  - Kaggle Demographic Dataset (2,392 patients): 96.45% Accuracy, 0.9580 F1-score.

### 4.4 Team Member Engineering Contributions
- **Pulkit Agrawal (23BCE10735)**: Backend Architecture & Weather API Integration Lead
- **Kabir Roy (23BCE10815)**: Machine Learning Prediction Logic & Systems Integration Lead
- **Parshv Keyur Modi (23BCE10807)**: Dataset Collection, Feature Engineering & Model Training Lead
- **Snehal Baranwal (23BCE10479)**: Frontend Landing Page & Interface Documentation Lead
- **Snehil Priyam (23BCE11200)**: Capstone Documentation & Academic Report Lead
Supervised by: **Dr. Ajeet Singh**

---

## CHAPTER 5: CONCLUSION
HridyaVayu has been fully deployed as an interactive clinical decision support system, providing sub-1.5s environmental queries, sub-2ms ML inference, GINA Step-5 failsafes, and closed-loop smart inhaler monitoring.
