# ExamRevise AI: AI Exam Revision & Self-Evaluation System

A production-ready full-stack AI platform designed to help students and professionals prepare for examinations through tailored mock exams, timed simulator test conditions, and instant rubric-based AI self-evaluations with granular knowledge gap diagnostics.

---

## 🌟 Key Features

1. **AI Mock Exam Generator**
   - Synthesizes realistic examination papers across any subject, syllabus chapter, or topic.
   - Configurable difficulty: *Easy (Fundamentals)*, *Medium (Undergraduate)*, *Hard (Advanced)*, and *University / Board Standard*.
   - Question format flexibility: Multiple Choice (MCQs), Conceptual Short Answers, and In-depth Descriptive / Essay prompts with pseudocode or architectural design.

2. **Timed Examination Simulator**
   - Real-time countdown timer with visual pacing indicators.
   - Interactive question palette with status tracking (Answered, Unanswered, Current).
   - Candidate answer capture with live word counter and clean writing canvas.

3. **Rubric-Benchmarked AI Self-Evaluation & Grading**
   - Grades student answers objectively against strict academic marking criteria.
   - Awards fair partial credit for partially complete logic or conceptual coverage.
   - Computes total marks, percentage, and performance mastery tier (*Exemplary*, *Proficient*, *Developing*, *Requires Revision*).

4. **Examiner Knowledge Gap Diagnostics**
   - Executive AI examiner feedback highlighting strengths and key achievements.
   - High-yield revision priorities pointing out missing technical terms, mechanisms, and edge cases.
   - Per-question criteria breakdown matrix and official model answers for self-revision.

5. **Dual-Mode AI Engine (Zero-Config Out-of-the-Box)**
   - **Google Gemini Live Mode**: Connects to `gemini-2.5-flash` for dynamic LLM generation and custom prompt grading.
   - **Smart Simulator Mode**: Activates automatically if no API key is provided, running an intelligent offline heuristic and curriculum knowledge bank for instant, uninterrupted revision.

---

## 🛠️ Technology Stack

- **Backend**: Python 3.12, FastAPI, SQLAlchemy, SQLite, Pydantic v2, HTTPX, Uvicorn.
- **Frontend**: React 19, Vite, Tailwind CSS, Lucide Icons, Canvas Confetti.
- **AI / LLM**: Google Gemini 2.5 Flash REST API + Offline Heuristic Fallback Engine.

---

## 🚀 Quick Start (Windows)

### Option A: 1-Click Launch (Recommended)
Simply double-click the `start.bat` file in this directory, or run from PowerShell:

```powershell
.\start.bat
```

This launches the FastAPI backend on `http://127.0.0.1:8000`, the Vite frontend on `http://localhost:5173`, and automatically opens your web browser.

---

### Option B: Manual Setup & Execution

#### 1. Start the FastAPI Backend
```powershell
cd backend
.\venv\Scripts\activate
python run.py
```
*Backend runs on `http://127.0.0.1:8000` (Interactive API docs at `http://127.0.0.1:8000/docs`).*

#### 2. Start the React Frontend
In a new terminal:
```powershell
cd frontend
npm run dev
```
*Frontend runs on `http://localhost:5173`.*

---

## 🔑 Configuring Your Google Gemini API Key

You can configure your Gemini API key in two ways:
1. **Directly inside the Web UI**: Click the ⚙️ **Settings** button in the top navigation bar, paste your Gemini API key, and click **Verify & Save Key**.
2. **In the Backend `.env` file**:
   ```env
   GEMINI_API_KEY=your_gemini_api_key_here
   GEMINI_MODEL=gemini-2.5-flash
   ```

*Note: If no API key is configured, the application functions in **Smart Simulator Mode** with realistic curriculum questions and diagnostic evaluations.*

---

## 📂 Project Architecture

```
ai-exam-evaluator/
├── backend/
│   ├── app/
│   │   ├── main.py              # FastAPI app & CORS middleware
│   │   ├── config.py            # Environment configuration
│   │   ├── database.py          # SQLite & SQLAlchemy engine
│   │   ├── models.py            # DB Models (Exam, Question, Evaluation, Answer)
│   │   ├── schemas.py           # Pydantic schemas for requests/responses
│   │   ├── ai_service.py        # Gemini API client & rubric grading engine
│   │   ├── sample_data.py       # Pre-seeded starter exams & evaluations
│   │   └── routers/
│   │       ├── exams.py         # Exam generation & library endpoints
│   │       └── evaluations.py   # Grading submissions & diagnostic reports
│   ├── requirements.txt
│   ├── run.py                   # Uvicorn server launcher
│   └── test_service.py          # Backend verification test suite
├── frontend/
│   ├── src/
│   │   ├── api.js               # API client service & key manager
│   │   ├── App.jsx              # Main React orchestrator
│   │   ├── components/
│   │   │   ├── Navbar.jsx
│   │   │   ├── SettingsModal.jsx
│   │   │   ├── ExamGeneratorModal.jsx
│   │   │   ├── ExamRunner.jsx           # Timed test runner & question palette
│   │   │   ├── EvaluationReport.jsx     # Scorecard & rubric breakdown
│   │   │   ├── HistoryView.jsx          # Past test history & analytics
│   │   │   └── ExamsListView.jsx        # Exam paper library
│   │   └── pages/
│   │       └── Dashboard.jsx            # KPI cards & quick-start hub
│   ├── package.json
│   └── tailwind.config.js
├── start.bat                    # 1-click concurrent Windows launcher
└── README.md
```
