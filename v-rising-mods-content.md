# V Rising Mods

V Rising has a small but active modding scene built on BepInEx, and it is the fastest way to fix the game's sharpest edges: a real third-person camera, auto-stack, admin tools, and even custom world bosses. The catch is that mods break every time Stunlock pushes a patch, so "which mods still work" matters more than "which mods exist." This guide covers the best V Rising mods that run on the current 1.1 "Invaders of Oakveil" build, how to install them on solo and dedicated servers, and how to configure them once they are running.

Here's what this page covers:

- The best V Rising mods for servers and solo players
- How to install V Rising mods with the mod manager or manually
- The best quality-of-life and server/admin mods
- A V Rising mod configuration and troubleshooting guide

## Best V Rising Mods for Servers and Solo Players

Everything here runs on **BepInEx** (the Unity plugin loader) and **Wetstone** (the framework most V Rising mods build on). Install both first — every mod below assumes they are already in place.

### V Rising mods download

Two sites hold essentially all of the V Rising mods worth installing:

- **Thunderstore** (thunderstore.io/c/v-rising) — the primary hub. Almost every active mod lives here, and it pairs with the r2modman mod manager for one-click installs.
- **Nexus Mods** (nexusmods.com/vrising) — a smaller selection, plus the standalone **Generic Mod Loader** framework for players who want an alternative to BepInEx.

Download from these two and nowhere else. Random "free mod" sites repackage old plugins or bundle malware, and a mod last updated for Gloomrot will not load on the current Oakveil build.

### V Rising gameplay mods

These change how the game actually plays rather than just smoothing the edges:

- **BloodyBoss** (by Trodi) — a full V Blood world-boss system with dynamic scaling, custom mechanics, ability discovery, and a companion desktop tool called BloodyBossConfig. If you want to remix existing bosses or build your own, this is the centerpiece. It pairs naturally with knowing the [V Rising boss order](/boss-order.html).
- **RetroCamera** — the current camera mod for 2026, replacing the older camera mod that was abandoned. It turns V Rising from its isometric view into first- or third-person: press `[` to toggle the mod, `]` to toggle the action camera, and the scroll wheel to zoom. Excellent for solo PvE and walking through a [castle](/castle/) you spent hours building; disable it for competitive PvP.
- **KindredPortals** and **KindredArenas** — player teleportation portals and custom arenas, mostly useful if you run a community server.
- **KindredSchematics** — a castle-schematic mod for blueprinting builds, useful alongside our [castle layout guide](/castle/layouts/).

| Mod | What it does | Solo | Server |
|---|---|---|---|
| BloodyBoss | Custom world bosses + config tool | Yes | Yes |
| RetroCamera | First/third-person camera | Yes | Avoid in PvP |
| KindredPortals | Teleportation portals | Optional | Yes |
| KindredArenas | Custom PvP arenas | No | Yes |
| KindredSchematics | Castle building schematics | Yes | Yes |

## How to Install V Rising Mods

There are two install paths: the mod manager (easiest, best for solo play) and a manual install (required for dedicated servers). Both start with BepInEx.

### V Rising mod manager

The easiest way is **r2modman**, also branded as the Thunderstore Mod Manager. It is a desktop application that handles profiles, dependencies, and launching the game modded for you.

1. Download r2modman from Thunderstore and run the setup. Do not install it inside the game folder — it is an app, not a mod.
2. Open r2modman, select **V Rising**, and create a profile.
3. In the **Get Mods / Online** tab, install the **BepInExPack_V_Rising** dependency first.
4. Browse and install mods, choosing **Download with dependencies** so required packages come along automatically.
5. Click **Start modded** to launch V Rising with everything loaded.

r2modman also ships a built-in **Config editor**, which is the fastest way to tweak mod settings without touching raw files.

### How to install V Rising mods

For a dedicated server — or if you simply prefer manual control — install BepInEx by hand. This is the step most first-time server admins get wrong, so follow the order exactly.

1. Download **BepInExPack_V_Rising (x64)** from Thunderstore and extract it. You will get a `BepInEx` folder plus two files: `winhttp.dll` and `doorstop_config.ini`.
2. For a server, upload all three to the server root, directly next to `VRisingServer.exe`. For solo play, place them in `Steam\steamapps\common\VRising`. The `winhttp.dll` file must sit at the root or BepInEx will not inject.
3. Start the game or server once to generate the `BepInEx/plugins` and `BepInEx/config` folders. Look for `BepInEx 5.x - Initialized` and `Chainloader started` in the log.
4. Drop each mod's `.dll` directly into `BepInEx/plugins` — not raw ZIP files and not inside subfolders. If a mod ships a `patchers` folder, place it in `BepInEx/patchers`.
5. Restart and confirm each mod logs `[BepInEx] Loading [ModName]`.

Three habits that prevent most mod disasters:

- Back up your save (or server files) before installing anything — a bad mod can corrupt a world.
- Add mods one at a time and launch between each, so when something breaks you know exactly which one did it.
- If you use r2modman, always launch through **Start modded** — launching from Steam normally skips BepInEx and none of your mods load.
- Know which side a mod runs on: **server-side** mods only need installing on the server; **client-side** mods (camera, UI) need every player to install them too.

One server caveat to know up front: a modded server does not appear in the vanilla server browser, so players connect through Direct Connect or a modded-server browser. Our [dedicated server guide](/server/dedicated-server/) walks through the base setup that this builds on top of.

## Best Quality of Life Mods

Quality-of-life mods are the reason most players bother modding at all, and they are the safest place to start because they rarely touch combat balance.

- **OkBruh** — a grab-bag of small quality-of-life fixes.
- **KindredCommands** — the player-facing command pack (give, teleport, weather, time) that goes well beyond admin use.
- Auto-stack and faster-crafting plugins — the two fixes players ask for most, and a huge time-saver if you run large material loops through our [resource farming guide](/resources.html).
- **ServerLaunchFix** — lets you run server-side mods in single-player so you can test before pushing to the live server.

If you play solo, the **RetroCamera** mod above is the single biggest quality-of-life upgrade — the first/third-person camera alone is worth the BepInEx install.

## Best Server Mods for V Rising

### Best V Rising server mods

These are the server-side plugins that make running a community easier, and most of them are hard dependencies for other mods:

- **VampireCommandFramework (VCF)** and **BloodyCore** — foundation libraries that many server mods require; install them even if you never use them directly.
- **TheCheese** — anti-cheat and server utilities for keeping a public server healthy.
- **KindredLogistics** — storage and logistics tooling for admins who manage a lot of player chests.

### V Rising admin mods

Admin tooling is where the modded server experience really separates from vanilla:

- **KindredCommands** — the standard admin command pack. Give, teleport, weather, and time controls are all typed in the **in-game chatbox**, not the server console.
- **BloodCraftHub** — a unified client UI that surfaces KindredCommands and KindredLogistics in one panel.

Two details that trip up new admins: admin-restricted commands need your SteamID added to `adminlist.txt` (one per line, no commas) followed by the `adminauth` command, and all of this lives under `VRisingDedicatedServer\save-data\Settings`. Our [server settings guide](/server/settings/) covers the full list of config options.

## V Rising Mod Configuration Guide

Most mods drop their settings into `BepInEx/config/`, one folder per mod, usually as JSON or INI files. Three things will save you hours:

1. **Use r2modman's Config editor** for solo play — it turns raw files into a form you can change safely.
2. **Validate JSON.** A single malformed JSON config silently stops a mod from loading. If a mod stops working after you edit its config, paste the file into a JSON linter before you touch anything else.
3. **Know your admin files.** For admin mods, `adminlist.txt` holds SteamIDs one per line, and `adminauth` enables the commands in-game.

### Troubleshooting quick reference

| Symptom | Likely cause | Fix |
|---|---|---|
| Mod doesn't load | `.dll` not in `BepInEx/plugins`, or BepInEx never initialized | Put the `.dll` directly in `plugins` (no subfolders, no ZIPs) and check the log for `Chainloader started` |
| Server crashes after adding a mod | Version conflict or missing dependency | Remove the newest `.dll` and retest; add mods one at a time so the culprit is obvious |
| "Fatal error. System.AccessViolationException" | Antivirus blocking BepInEx | Allow the exception in your AV and restart |
| Mod worked before a patch, now broken | Patch changed the systems the mod touches | Check the mod's Thunderstore page for a 1.1-compatible update |

One thing worth internalizing: after a patch, the mods that break first are the ones that touch combat or the UI — small quality-of-life plugins usually survive longer. Check each mod's Thunderstore page for a 1.1-compatible build before you launch, and plan a short maintenance window if you run a modded server.

## FAQ

**Are V Rising mods allowed?**
Stunlock Studios is fine with mods that do not grant explicit PvP advantages, as long as you do not run them on official servers. Keep gameplay-affecting mods to your own server or solo world.

**Do V Rising mods work on the 1.1 "Invaders of Oakveil" update?**
Yes, but only mods updated for the current build. Older mods — like the pre-2026 camera mod — are abandoned and will not load. Always check the mod's "last updated" date against the current patch.

**What is the best V Rising mod manager?**
r2modman, also known as the Thunderstore Mod Manager. It handles profiles, dependencies, and launching the game modded, and it has a built-in config editor.

**Where do I download V Rising mods?**
Thunderstore is the primary hub; Nexus Mods hosts a smaller selection plus the Generic Mod Loader alternative. Avoid third-party download sites.

**Can I run mods on a dedicated server?**
Yes. Use the manual BepInEx install (the `winhttp.dll` + `doorstop_config.ini` method) and place plugin `.dll` files in `BepInEx/plugins`. Remember that a modded server does not show up in the vanilla browser.

**Do mods work in PvP?**
Quality-of-life mods are generally fine, but disable camera and visual mods like RetroCamera in competitive PvP, and never use mods that grant gameplay advantages on shared servers.

**Do I need to reinstall mods after every patch?**
Not necessarily, but you do need to check. Patches often break mods that touch changed systems, so verify each mod's Thunderstore page for a compatible update before launching after a major update.

**Are V Rising mods safe?**
Only when you download from Thunderstore or Nexus Mods. Stick to mods with a recent update and a reasonable number of downloads, and treat anything from an unknown third-party site as untrusted.
