"use strict";

/* =========================================================================
   Mermaid diagram sources
   Palette matches css/style.css: field green (validated), cured-leaf brown
   / rust (flagged), antique brass (the server, held as the sole record).
   ========================================================================= */

const DIAGRAMS = {
  journey: `
flowchart LR
  classDef good fill:#2f6b45,stroke:#1e4d33,color:#fbf7ec,font-weight:600;
  classDef bad fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:600;
  classDef neutral fill:#6b5a44,stroke:#4a3d2e,color:#fbf7ec;
  classDef alarm fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:700;

  subgraph STAGE0["STAGE 0 &middot; INTAKE &mdash; handheld device"]
    direction LR
    A0["Bale arrives<br/>at intake"] --> A1["Operator identifies<br/>the bale"]
    A1 --> A2["Bale #, grade, farm,<br/>farmer, truck &amp; declared<br/>weight recorded"]
    A2 --> A3["Registered as<br/>ASSIGNED"]
  end

  subgraph STATION1["STATION 1 &middot; CHECKPOINT &mdash; fixed reader, antenna 1"]
    direction LR
    B1["Bale reaches<br/>the checkpoint"] --> B2["Identified &rarr;<br/>SCANNED"]
    B2 --> B3["Bale is<br/>weighed"]
    B3 --> B4{"Within tolerance of the<br/>declared weight?"}
    B4 -->|yes| B5["VALIDATED"]
    B4 -->|no| B6["FLAGGED"]
  end

  subgraph DOWNSTREAM["DOWNSTREAM CHECK &mdash; fixed reader, antenna 3"]
    direction LR
    C1["Bale passes the<br/>second antenna"] --> C2{"Was a discrepancy<br/>found?"}
    C2 -->|no| C3["Proceeds<br/>down the line"]
    C2 -->|yes| C4["Alarm sounds &mdash;<br/>bale withdrawn"]
  end

  A3 --> B1
  B5 --> C1
  B6 --> C1

  class A3 neutral
  class B2 neutral
  class B5 good
  class B6 bad
  class C4 alarm

  click A0 call mtsShowDetail("journey","A0")
  click A1 call mtsShowDetail("journey","A1")
  click A2 call mtsShowDetail("journey","A2")
  click A3 call mtsShowDetail("journey","A3")
  click B1 call mtsShowDetail("journey","B1")
  click B2 call mtsShowDetail("journey","B2")
  click B3 call mtsShowDetail("journey","B3")
  click B4 call mtsShowDetail("journey","B4")
  click B5 call mtsShowDetail("journey","B5")
  click B6 call mtsShowDetail("journey","B6")
  click C1 call mtsShowDetail("journey","C1")
  click C2 call mtsShowDetail("journey","C2")
  click C3 call mtsShowDetail("journey","C3")
  click C4 call mtsShowDetail("journey","C4")
`,

  architecture: `
flowchart TB
  classDef app fill:#efe4cc,stroke:#7a4a23,color:#241a10;
  classDef server fill:#a9812e,stroke:#7a5c1f,color:#241a10,font-weight:600;
  classDef hw fill:#e8ddc4,stroke:#5c4a37,color:#241a10,stroke-dasharray: 3 3;

  SCANNER["Intake Device<br/>handheld application<br/>Stage 0 &mdash; Registration"]
  ANT1["Checkpoint Reader<br/>antenna port 1<br/>weighing station"]
  ANT3["Checkpoint Reader<br/>antenna port 3<br/>downstream check"]
  SERVER["Central Server<br/>records of authority<br/>sole holder of state"]
  SCALE["Weighing Indicator<br/>certified scale hardware"]
  BUZZER["Reader Alarm<br/>physical signal"]

  SCANNER -- "register bale<br/>list &amp; amend records" --> SERVER
  ANT1 -- "report identification" --> SERVER
  SCALE -- "continuous weight<br/>reading" --> SERVER
  ANT3 -- "enquire outcome<br/>read-only" --> SERVER
  SERVER -. "outcome: discrepancy" .-> ANT3
  ANT3 -- "signal" --> BUZZER

  class SCANNER,ANT1,ANT3 app
  class SERVER server
  class SCALE,BUZZER hw

  click SCANNER call mtsShowDetail("architecture","SCANNER")
  click ANT1 call mtsShowDetail("architecture","ANT1")
  click ANT3 call mtsShowDetail("architecture","ANT3")
  click SERVER call mtsShowDetail("architecture","SERVER")
  click SCALE call mtsShowDetail("architecture","SCALE")
  click BUZZER call mtsShowDetail("architecture","BUZZER")
`,

  messages: `
sequenceDiagram
  participant Op as Intake Operator
  participant Srv as Central Server
  participant Ant1 as Checkpoint (Ant. 1)
  participant Scale as Weighing Indicator
  participant Ant3 as Downstream (Ant. 3)
  participant Alarm as Reader Alarm

  Op->>Srv: Register bale (number, grade, declared weight)
  Srv-->>Op: Confirmed - status ASSIGNED

  Note over Ant1,Srv: later, the bale reaches the checkpoint
  Ant1->>Srv: Report identification
  Srv-->>Ant1: Confirmed - status SCANNED

  Scale->>Srv: Continuous weight reading
  Srv->>Srv: Match stable reading to the most recently identified bale
  Srv->>Srv: Compare against declared weight - VALIDATED or FLAGGED

  Note over Ant3,Srv: bale reaches the downstream reader
  Ant3->>Srv: Enquire outcome (read-only)
  Srv-->>Ant3: Outcome

  alt outcome is FLAGGED
    Ant3->>Alarm: Sound alarm, brief signal
  else outcome is VALIDATED
    Note over Ant3: No response - bale proceeds
  end
`,

  residual: `
stateDiagram-v2
  [*] --> Tracking
  Tracking: Tracking residual - no bale expected
  Frozen: Held fixed - bale is being weighed

  Tracking --> Frozen: new bale identified
  Frozen --> Tracking: weight matched to the bale
  Frozen --> Tracking: no match within 5s (self-correcting)
`,
};

/* =========================================================================
   Node detail content, shown when a flowchart node is selected
   ========================================================================= */

const NODE_INFO = {
  journey: {
    A0: ["Bale arrives", "A bale of tobacco reaches the intake area. No system record exists yet — this is a physical event only."],
    A1: ["Operator identifies the bale", "Using the handheld intake device, the operator reads the bale's identifying tag at close range. The device briefly reduces its reading range so that only a tag held close by is captured."],
    A2: ["Particulars recorded", "The bale number, grade, truck, farm, farmer and declared weight are entered on the handheld device and submitted to the central server."],
    A3: ["Registered as ASSIGNED", "The server records the bale against its identifying tag. There is no separate archive — this record exists only while the server is running, by design."],
    B1: ["Reaches the checkpoint", "The bale physically arrives at the first antenna, mounted at the weighing station."],
    B2: ["Identified — status SCANNED", "The reader reports the bale's identifier to the server, which opens a brief window in which a weight reading may be matched to it."],
    B3: ["Weighed", "The certified scale reports a continuous reading. The server removes any residual weight left on the platform and matches the net reading to this bale."],
    B4: ["Within tolerance?", "The measured weight is compared with the declared weight against a fixed, published tolerance."],
    B5: ["VALIDATED", "The bale is counted toward the running total of validated bales for the shift."],
    B6: ["FLAGGED", "The bale is recorded with a stated reason — for example, the measured discrepancy in kilograms — and set aside for review."],
    C1: ["Passes the second antenna", "Further along the line, a second, physically separate reader identifies the same bale again."],
    C2: ["Was a discrepancy found?", "The reader makes a read-only enquiry of the server. This step cannot alter any record, and so cannot interfere with the checkpoint's own weighing process."],
    C3: ["Proceeds", "No response is generated — this path is silent for any bale without a discrepancy."],
    C4: ["Alarm sounds", "The reader's alarm signals briefly so the bale can be withdrawn from the line before proceeding further."],
  },
  architecture: {
    SCANNER: ["Intake Device", "A dedicated handheld application used at intake to register each bale against its identifying tag. Operates independently of the checkpoint reader."],
    ANT1: ["Checkpoint Reader — Antenna 1", "The antenna positioned at the weighing station. Every bale identified here is reported to the central server to begin the weighing process."],
    ANT3: ["Checkpoint Reader — Antenna 3", "A second antenna, positioned further along the line, used solely to confirm the outcome already determined at the weighing station."],
    SERVER: ["Central Server", "The sole authoritative record of every bale's registration, weighing outcome, and status. Every other system reports to it; no two devices communicate directly with one another."],
    SCALE: ["Weighing Indicator", "The certified scale hardware, connected to the central server by a dedicated link and reporting weight continuously rather than on request."],
    BUZZER: ["Reader Alarm", "A physical, audible signal at the checkpoint. Reserved for discrepancy alerts, independent of the reader's routine identification feedback."],
  },
};

function mtsShowDetail(diagramKey, nodeId) {
  const info = NODE_INFO[diagramKey] && NODE_INFO[diagramKey][nodeId];
  if (!info) return;
  const panel = document.getElementById("detail-" + diagramKey);
  if (!panel) return;
  panel.querySelector("h4").textContent = info[0];
  panel.querySelector("p").textContent = info[1];
  panel.classList.add("is-open");
  panel.scrollIntoView({ behavior: "smooth", block: "nearest" });
}
window.mtsShowDetail = mtsShowDetail;

function closeDetail(diagramKey) {
  const panel = document.getElementById("detail-" + diagramKey);
  if (panel) panel.classList.remove("is-open");
}
window.mtsCloseDetail = closeDetail;

/* =========================================================================
   Mermaid theme — one formal palette, matched to css/style.css tokens
   ========================================================================= */

function mermaidThemeVariables() {
  return {
    background: "#f7f2e6",
    primaryColor: "#efe4cc",
    primaryTextColor: "#241a10",
    primaryBorderColor: "#7a4a23",
    lineColor: "#5c4a37",
    secondaryColor: "#efe4cc",
    tertiaryColor: "#f7f2e6",
    fontFamily: "Public Sans, -apple-system, BlinkMacSystemFont, sans-serif",
    fontSize: "14px",
    actorBkg: "#efe4cc",
    actorBorder: "#7a4a23",
    actorTextColor: "#241a10",
    actorLineColor: "#7a4a23",
    signalColor: "#5c4a37",
    signalTextColor: "#241a10",
    labelBoxBkgColor: "#efe4cc",
    labelBoxBorderColor: "#7a4a23",
    labelTextColor: "#241a10",
    loopTextColor: "#241a10",
    noteBkgColor: "#f3e6c8",
    noteBorderColor: "#a9812e",
    noteTextColor: "#241a10",
    activationBorderColor: "#a9812e",
    activationBkgColor: "#efe4cc",
    sequenceNumberColor: "#f7f2e6",
  };
}

/* =========================================================================
   Pan / zoom for rendered diagrams
   ========================================================================= */

function makePanZoomable(viewport) {
  const inner = viewport.querySelector(".pz-inner");
  let scale = 1, x = 0, y = 0;
  let dragging = false, lastX = 0, lastY = 0;

  function apply() {
    inner.style.transform = `translate(${x}px, ${y}px) scale(${scale})`;
  }

  // Mermaid ships each SVG with width="100%" + a max-width style, sized
  // against its parent. .pz-inner is absolutely positioned with no width of
  // its own, so that percentage never resolves and the SVG collapses to the
  // browser's ~300x150 replaced-element fallback. Pin the SVG's box to its
  // own viewBox so it always lays out at its true natural size, and every
  // later measurement (fit-to-view, drag bounds) is measuring something real.
  function pinNaturalSize() {
    const svg = inner.querySelector("svg");
    if (!svg || !svg.viewBox || !svg.viewBox.baseVal) return null;
    const vb = svg.viewBox.baseVal;
    if (!vb.width || !vb.height) return null;
    svg.setAttribute("width", vb.width);
    svg.setAttribute("height", vb.height);
    svg.style.maxWidth = "none";
    svg.style.width = vb.width + "px";
    svg.style.height = vb.height + "px";
    return { width: vb.width, height: vb.height };
  }

  function reset() {
    const natural = pinNaturalSize();
    const vpRect = viewport.getBoundingClientRect();
    if (!natural) {
      scale = 1; x = 12; y = 12;
      apply();
      return;
    }
    const pad = 20;
    scale = Math.min(
      (vpRect.width - pad * 2) / natural.width,
      (vpRect.height - pad * 2) / natural.height,
      1.25
    );
    scale = Math.max(0.1, scale);
    x = (vpRect.width - natural.width * scale) / 2;
    y = (vpRect.height - natural.height * scale) / 2;
    apply();
  }

  function zoomBy(delta, cx, cy) {
    const prevScale = scale;
    scale = Math.min(4, Math.max(0.1, scale + delta));
    if (cx !== undefined) {
      const rect = viewport.getBoundingClientRect();
      const px = cx - rect.left, py = cy - rect.top;
      x = px - ((px - x) * (scale / prevScale));
      y = py - ((py - y) * (scale / prevScale));
    }
    apply();
  }

  viewport.addEventListener("wheel", (e) => {
    e.preventDefault();
    zoomBy(e.deltaY < 0 ? 0.15 : -0.15, e.clientX, e.clientY);
  }, { passive: false });

  viewport.addEventListener("pointerdown", (e) => {
    dragging = true;
    lastX = e.clientX; lastY = e.clientY;
    viewport.classList.add("is-grabbing");
    viewport.setPointerCapture(e.pointerId);
  });
  viewport.addEventListener("pointermove", (e) => {
    if (!dragging) return;
    x += e.clientX - lastX;
    y += e.clientY - lastY;
    lastX = e.clientX; lastY = e.clientY;
    apply();
  });
  ["pointerup", "pointercancel", "pointerleave"].forEach((evt) =>
    viewport.addEventListener(evt, () => {
      dragging = false;
      viewport.classList.remove("is-grabbing");
    })
  );

  return {
    zoomIn: () => zoomBy(0.25),
    zoomOut: () => zoomBy(-0.25),
    reset,
  };
}

/* =========================================================================
   Rendering
   ========================================================================= */

const RENDERED = {}; // key -> { controls }

async function renderDiagram(key) {
  const viewport = document.getElementById("viewport-" + key);
  const inner = viewport.querySelector(".pz-inner");
  const { svg, bindFunctions } = await mermaid.render("svg-" + key + "-" + Date.now(), DIAGRAMS[key].trim());
  inner.innerHTML = svg;
  if (bindFunctions) bindFunctions(inner);

  if (!RENDERED[key]) {
    RENDERED[key] = { controls: makePanZoomable(viewport) };
    document.getElementById("zoom-in-" + key).addEventListener("click", () => RENDERED[key].controls.zoomIn());
    document.getElementById("zoom-out-" + key).addEventListener("click", () => RENDERED[key].controls.zoomOut());
    document.getElementById("zoom-reset-" + key).addEventListener("click", () => RENDERED[key].controls.reset());
    const fsBtn = document.getElementById("fullscreen-" + key);
    if (fsBtn) {
      fsBtn.addEventListener("click", () => {
        document.getElementById("panel-" + key).classList.toggle("is-fullscreen");
        RENDERED[key].controls.reset();
      });
    }
  }
  requestAnimationFrame(() => RENDERED[key].controls.reset());
}

async function renderAllDiagrams() {
  mermaid.initialize({
    startOnLoad: false,
    securityLevel: "loose",
    theme: "base",
    themeVariables: mermaidThemeVariables(),
    flowchart: { htmlLabels: true, curve: "basis" },
  });
  for (const key of Object.keys(DIAGRAMS)) {
    await renderDiagram(key);
  }
}

/* =========================================================================
   Status chip -> reference table highlight
   ========================================================================= */

function initStatusChips() {
  document.querySelectorAll(".chip[data-status]").forEach((chip) => {
    chip.addEventListener("click", () => {
      const status = chip.getAttribute("data-status");
      const rows = document.querySelectorAll('tr[data-status="' + status + '"]');
      if (!rows.length) return;
      rows[0].scrollIntoView({ behavior: "smooth", block: "center" });
      rows.forEach((row) => {
        row.classList.remove("is-flashed");
        void row.offsetWidth; // restart animation
        row.classList.add("is-flashed");
      });
    });
  });
}

/* =========================================================================
   Running header + scrollspy
   ========================================================================= */

function initNav() {
  const links = Array.from(document.querySelectorAll(".topnav-links a"));
  const sections = links
    .map((a) => document.querySelector(a.getAttribute("href")))
    .filter(Boolean);

  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        const link = links.find((a) => a.getAttribute("href") === "#" + entry.target.id);
        if (!link) return;
        if (entry.isIntersecting) {
          links.forEach((a) => a.classList.remove("is-active"));
          link.classList.add("is-active");
        }
      });
    },
    { rootMargin: "-40% 0px -50% 0px" }
  );
  sections.forEach((s) => observer.observe(s));
}

/* =========================================================================
   Boot
   ========================================================================= */

window.addEventListener("DOMContentLoaded", () => {
  initNav();
  initStatusChips();
  renderAllDiagrams();
});
