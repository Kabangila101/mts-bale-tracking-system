"use strict";

const DIAGRAMS = {
  "dg-manual": `
flowchart LR
  classDef flagNode fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:600;
  A["Truck arrives<br/>at the conveyor"] --> B["Operator scans<br/>the bale barcode"]
  B --> C["Scale weighs<br/>the bale"]
  C --> D{"Within<br/>tolerance?"}
  D -->|yes| E["Bale continues"]
  D -->|no| F["Second worker<br/>removes bale by hand"]
  class F flagNode
`,

  "dg-vision": `
flowchart TB
  classDef line fill:#efe4cc,stroke:#7a4a23,color:#241a10;
  classDef server fill:#a9812e,stroke:#7a5c1f,color:#241a10,font-weight:600;
  classDef trunk fill:#e8ddc4,stroke:#5c4a37,color:#241a10;
  classDef offload fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:600;

  C1["Line 1<br/>Ant.1 + Scale"]
  C2["Line 2<br/>Ant.1 + Scale"]
  C3["Line 3<br/>Ant.1 + Scale"]
  C4["Line 4<br/>Ant.1 + Scale"]
  C5["Line 5<br/>Ant.1 + Scale"]
  C6["Line 6<br/>Ant.1 + Scale"]
  C7["Line 7<br/>Ant.1 + Scale"]
  SERVER["Central Server<br/>&amp; Live Monitoring"]
  RT["Right Trunk<br/>three lines converge"]
  LT["Left Trunk<br/>four lines converge"]
  RA["Antenna 3 + Alarm<br/>Right Offload Point"]
  LA["Antenna 3 + Alarm<br/>Left Offload Point"]

  C1 --> RT
  C2 --> RT
  C3 --> RT
  C4 --> LT
  C5 --> LT
  C6 --> LT
  C7 --> LT
  RT --> RA
  LT --> LA

  C1 -.-> SERVER
  C2 -.-> SERVER
  C3 -.-> SERVER
  C4 -.-> SERVER
  C5 -.-> SERVER
  C6 -.-> SERVER
  C7 -.-> SERVER
  SERVER -.->|flag status| RA
  SERVER -.->|flag status| LA

  class C1,C2,C3,C4,C5,C6,C7 line
  class SERVER server
  class RT,LT trunk
  class RA,LA offload
`,

  "dg-journey": `
flowchart LR
  classDef good fill:#2f6b45,stroke:#1e4d33,color:#fbf7ec,font-weight:600;
  classDef bad fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:600;
  classDef neutral fill:#6b5a44,stroke:#4a3d2e,color:#fbf7ec;
  classDef alarm fill:#8a3b28,stroke:#5c2718,color:#fbf7ec,font-weight:700;

  subgraph STAGE0["STAGE 0 &middot; INTAKE &mdash; handheld device"]
    direction LR
    A0["Bale arrives<br/>at intake"] --> A1["Operator identifies<br/>the bale"]
    A1 --> A2["Particulars<br/>recorded"]
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
`,

  "dg-architecture": `
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

  SCANNER -- "register bale" --> SERVER
  ANT1 -- "report identification" --> SERVER
  SCALE -- "continuous weight<br/>reading" --> SERVER
  ANT3 -- "enquire outcome<br/>read-only" --> SERVER
  SERVER -. "outcome: discrepancy" .-> ANT3
  ANT3 -- "signal" --> BUZZER

  class SCANNER,ANT1,ANT3 app
  class SERVER server
  class SCALE,BUZZER hw
`,

  "dg-sequence": `
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

  "dg-residual": `
stateDiagram-v2
  [*] --> Tracking
  Tracking: Tracking residual - no bale expected
  Frozen: Held fixed - bale is being weighed

  Tracking --> Frozen: new bale identified
  Frozen --> Tracking: weight matched to the bale
  Frozen --> Tracking: no match within 5s (self-correcting)
`,

  "dg-pipeline": `
flowchart LR
  A["Vendor APK<br/>no source available"] --> B["Decompile<br/>apktool + jadx"]
  B --> C["Identify the shared<br/>callback hook"]
  C --> D["Hand-write the patch<br/>in smali"]
  D --> E["Rebuild the package<br/>apktool"]
  E --> F["Zipalign &amp; sign<br/>dedicated key"]
  F --> G["Install &amp; verify<br/>on device"]
`,
};

async function renderAll() {
  mermaid.initialize({
    startOnLoad: false,
    securityLevel: "loose",
    theme: "base",
    themeVariables: {
      background: "#fefdfb",
      primaryColor: "#efe4cc",
      primaryTextColor: "#241a10",
      primaryBorderColor: "#7a4a23",
      lineColor: "#5c4a37",
      secondaryColor: "#efe4cc",
      tertiaryColor: "#fefdfb",
      fontFamily: "Public Sans, -apple-system, BlinkMacSystemFont, sans-serif",
      fontSize: "13px",
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
      sequenceNumberColor: "#fefdfb",
    },
    flowchart: { htmlLabels: true, curve: "basis" },
  });

  for (const [id, src] of Object.entries(DIAGRAMS)) {
    const el = document.getElementById(id);
    if (!el) continue;
    const { svg } = await mermaid.render(id + "-svg", src.trim());
    el.innerHTML = svg;
    const svgEl = el.querySelector("svg");
    if (svgEl) {
      svgEl.removeAttribute("height");
      svgEl.style.maxWidth = "100%";
      svgEl.style.height = "auto";
    }
  }
  document.body.setAttribute("data-diagrams-ready", "true");
}

renderAll();
