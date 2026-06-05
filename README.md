# YABD: Yep Another Brave Debloater

Deploy the exact **Brave Origin** environment—zero telemetry, zero corporate bloat, and pure rendering performance—on top of your everyday browser instance. 

Why pay a $60 corporate premium for switches and toggles that already exist inside your system registry? **One click, total mitigation.**

---

## What is this?
Brave Origin claims to be a return to roots: a clean, fast Chromium engine running Brave Shields with no commercial bloat. However, those options are natively accessible via administrative templates. 

**YABD** is a premium, lightweight GUI deployment tool that injects corporate-grade hardening policies across all Brave release branches simultaneously.

## Features & Hardening Toggles
Unlike brute-force debloaters, YABD targets only hidden bloatware, telemetry, and background services without touching user preferences (like site preloading or custom extensions):

* **Zero Telemetry:** Suppresses Brave P3A usage statistics, network prediction logging, and automatic safe-browsing survey popups.
* **Feature Mitigation:** Complete restriction of Brave Wallet, built-in VPN initialization, AI Chat (Leo), Brave News, Playlists, Rewards, and background Tor components.
* **Network Optimization:** Disables the local IPFS P2P daemon node to save severe background CPU/RAM cycles, and restricts WebRTC leaks to the default public interface.
* **Render Pipeline Focus:** Bypasses Window Occlusion restrictions to prevent Chromium from freezing background processing threads aggressively.

## Target Instances
YABD dynamically mirrors policies across all Windows registry structures for:
* Brave Browser (Stable / Origin)
* Brave Browser Beta
* Brave Browser Nightly

---

## Quick Execution

1. Download `YABD_Deployer.ps1`.
2. Open PowerShell as **Administrator**.
3. Run the script:
```powershell
   Set-ExecutionPolicy Bypass -Scope Process; .\YABD_Deployer.ps1
