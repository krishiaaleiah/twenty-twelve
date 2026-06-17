# **TWENTY-TWELVE**

## **1. Project Overview**

### **Project Name**
Twenty-Twelve (internal project name: GAMEDEV_FINALS)

### **Game Genre**
Narrative Horror / Mystery Thriller / Point-and-Click Adventure

### **Game Description**
Twenty-Twelve is a narrative-driven horror experience that combines point-and-click adventure mechanics with psychological horror elements. The game presents players with an investigation-style narrative using found footage aesthetics, digital artifacts, and environmental exploration. The experience is heavily story-focused, emphasizing atmosphere through visual distortion effects (VHS degradation, glitching, chromatic aberration), audio design, and incremental story revelations.

### **Core Gameplay Objective**
Navigate through interconnected scenes to uncover narrative secrets and investigate a mystery central to the storyline. Players collect evidence items, progress through dialogue scenes, and experience tense chase sequences that punctuate the exploration narrative.

### **Intended Gameplay Experience**
- Atmospheric exploration with intentional disorientation and unease
- Point-and-click scene navigation with branching paths
- Evidence collection for narrative progression
- Psychological horror elements featuring jumpscare sequences
- Found-footage aesthetic enhanced through shader-based visual degradation
- Multiple scene types creating pacing variation between calm investigation and intense chase sequences

### **Current Development Status**
**Identifiable from project files:** Functional game with complete scene structure, all core systems implemented and interconnected. The project appears to be at an advanced development stage with approximately 150+ scenes created, comprehensive audio assets integrated, and game-ready build configuration.

---

## **2. Technology Stack**

### **Engine**
- **Godot 4.5** with GL Compatibility rendering backend
- **Godot Version in Project:** 4.5 (as specified in `project.godot` config)

### **Programming Languages**
- **GDScript** - exclusive scripting language used throughout the project
- No C# or other compiled languages detected

### **Plugins and Add-ons**

#### **Installed Godot Add-ons**
- **Godot Git Plugin** (`addons/godot-git-plugin/`)
  - Git version control integration for the editor
  - Available for Linux, macOS, and Windows
  - Configured to autoload on startup

#### **Third-Party Tools**
- None explicitly detected beyond the Git plugin

#### **External Libraries**
- None detected; project uses Godot's native API exclusively

---

## **3. Project Structure**

```
twenty-twelve/
├── Root-Level Autoload Managers
│   ├── CursorManager.gd
│   ├── GlobalManager.gd
│   ├── InventoryManager.gd
│   ├── global_manager.tscn
│   ├── inventory_ui.tscn
│   └── team_presents.tscn
├── Assets/
│   ├── Audio/              # 40+ audio files (MP3, WAV)
│   │   ├── BGM tracks (ambiance, waltz, parable cutscene, etc.)
│   │   ├── SFX (door knock, footsteps, jumpscare sounds, etc.)
│   │   └── AudioManager.tscn
│   ├── Cursor/             # 6 custom cursor PNG images
│   ├── Digicam/            # 50+ JPG images (digicam photographs)
│   ├── Font/               # VCR_OSD_MONO custom font
│   ├── Jumpscares_OGV/     # Video files for jumpscare sequences
│   ├── Pictures/           # Victim/character artwork images
│   └── Video_Clips/        # Introductory and cutscene video clips (OGV format)
├── Scenes/
│   ├── Scripts/            # 150+ individual scene controller scripts
│   │   ├── c_XXX_XX.gd     # Cutscene/character dialogue scenes (~50 scripts)
│   │   ├── d_XXX_XXX.gd    # Dialogue/investigation scenes (~40 scripts)
│   │   ├── f_XXX_XX.gd     # First-person exploration scenes (~50 scripts)
│   │   └── InventoryUI.gd  # Inventory display controller
│   ├── Game/               # 100+ fully instantiated game scenes
│   │   ├── c_*.tscn        # Cutscene/character dialogue scenes
│   │   ├── d_*.tscn        # Dialogue/investigation scenes
│   │   └── f_*.tscn        # First-person exploration scenes
│   ├── Intoduction_Clip/   # Startup and intro scenes
│   │   ├── Script/         # VHS video handling, title, story dialogue
│   │   ├── Shader/         # CRT distortion, VHS warp effects
│   │   ├── title.tscn      # Title screen with distortion effects
│   │   ├── game_root.tscn  # Root intro scene with video playback
│   │   ├── game_select.tscn # Scene selection menu
│   │   └── [Additional intro scenes]
│   ├── Chase Scene/        # Chase sequence scenes
│   │   ├── Script/         # Chase scene logic scripts (15+ scripts)
│   │   ├── chase_1.tscn through chase_31.tscn
│   │   └── [Multiple progression scenes]
│   ├── Dim_Scene/          # Dimensional/psychological horror scenes
│   │   ├── Script/
│   │   │   ├── dim_1.gd through dim_6.gd
│   │   │   └── [Glitch and progressive terror mechanics]
│   │   └── dim_*.tscn
│   ├── ExtraScenes/        # Utility and narrative-critical scenes
│   │   ├── Script/         # Main menu, police reports, transitions, etc.
│   │   ├── main_menu.tscn
│   │   ├── police_report.tscn through police_report4.tscn
│   │   ├── Entity.tscn     # Creature/entity revelation scene
│   │   ├── scene_changer.tscn # Fade transition handler
│   │   └── [Additional utility scenes]
│   ├── Area2D_Scripts/     # Interaction handlers
│   │   ├── kiosk_to_cr.gd
│   │   ├── kiosk_left_button.gd
│   │   ├── kiosk_back_to_dit.gd
│   │   ├── back_f002.gd
│   │   └── Subliminal_Glitch.gd
├── addons/
│   └── godot-git-plugin/   # Git integration
├── project.godot           # Godot engine configuration
└── LICENSE
```

### **Folder Purposes**

| Folder | Purpose | Role |
|--------|---------|------|
| **Scenes/Scripts/** | Master controller scripts for each game scene | Orchestrates scene interactions, audio playback, state transitions |
| **Scenes/Game/** | Compiled scene instances organized by narrative progression | Primary gameplay scenes with visual layouts and node hierarchies |
| **Scenes/Intoduction_Clip/** | Startup and opening sequences | Entry point, establishing aesthetic and narrative tone |
| **Scenes/Chase Scene/** | High-tension chase sequences | Rapid-fire scene progression representing a critical gameplay moment |
| **Scenes/Dim_Scene/** | Psychological horror/dimensional scenes | Progressive horror escalation with glitch effects and sensory overload |
| **Scenes/ExtraScenes/** | UI, transitions, and narrative utility scenes | Menus, scene transitions, police reports, cutscenes |
| **Scenes/Area2D_Scripts/** | Interactive hotspot handlers | Manages clickable regions and kiosk-like interactions |
| **Assets/Audio/** | All sound design | BGM, SFX, environmental audio |
| **Assets/Cursor/** | Custom cursor graphics | Visual feedback for interactive elements |
| **Assets/Digicam/** | Photographic source material | Base imagery for scene construction |
| **Assets/Font/** | Typography asset | VCR-style retro font for UI text |
| **Assets/Video_Clips/** | Animated video sequences | Intro videos, cutscenes, jumpscare content |

---

## **4. Scene Documentation**

### **Major Scene Categories**

#### **Introduction & Menu Scenes**

**Title Screen** (`title.tscn` + `title.gd`)
- **Purpose:** Game entry point with atmospheric opening sequence
- **Visual Features:** VHS distortion shaders, warp effects, chromatic aberration; text reading "twenty-tweIve"
- **Node Structure:**
  - Control root node
  - SubViewportContainer with custom ShaderMaterial (warp_intensity: 4.0, vignette effects)
  - VideoStreamPlayer child with CRT shader effects
  - TextureRect for victim image overlay
- **Functionality:** Plays intro video with progressive distortion; transitions to next scene after completion
- **Dependencies:** Custom shaders (`warp.gdshader`, `game_root.gdshader`), victim artwork

**Game Root** (`game_root.tscn` + `vhs_video.gd`)
- **Purpose:** Root container for intro video playback with real-time glitch simulation
- **Visual Features:** Mandela Catalogue–style glitching with random static spikes, chromatic offset, scanline jitter
- **Node Structure:**
  - Control node with CanvasLayer for post-processing
  - VideoStreamPlayer with dynamic shader updates
  - CRT shader overlay on PostProcessingLayer (layer 50)
- **Key Functionality:**
  - Shader parameters updated per frame based on randomized glitch logic
  - Simulates degraded VHS playback with realistic CRT artifacts
- **Dependencies:** VideoStream assets, custom shaders

**Game Select** (`game_select.tscn` + `game_select.gd`)
- **Purpose:** Selection menu for narrative progression
- **Node Structure:** UI buttons for selecting game mode or difficulty
- **Functionality:** Presents player choices and transitions to appropriate scene
- **Dependencies:** AudioManager for menu clicks

#### **Exploration & Dialogue Scenes**

**Courtroom/Character Dialogue Scenes** (e.g., `c_001_01.tscn` through `c_005_01.tscn`)
- **Purpose:** Character interaction and dialogue exposition
- **Node Structure:** Control root with TextureRect for background images, Area2D nodes for clickable hotspots
- **Typical Pattern:**
  - Forward navigation button (to next scene)
  - Back navigation button (to previous scene)
  - Optional side navigation (e.g., wooden door button)
- **Gameplay:** Click-to-advance dialogue or scene transitions
- **Example: `c_001_01.gd`**
  - Handles mouse hover states (cursor changes)
  - Manages audio cues and scene transitions via mouse input events
  - Plays click SFX on interaction

**Dialogue & Investigation Scenes** (e.g., `d_001_001.tscn` through `d_003_015.tscn`)
- **Purpose:** In-depth character dialogue, investigation exposition, psychological discovery
- **Node Structure:** Similar to courtroom scenes but with deeper narrative context
- **Attached Scripts:** Scene-specific controllers managing complex dialogue flow or multi-stage interactions
- **Example: `d_001_001.gd`**
  - Plays atmospheric BGM ("ambiance_extreme")
  - Manages forward/back navigation with cursor feedback
  - Emits SFX on player interaction

**First-Person Exploration Scenes** (e.g., `f_001_01.tscn` through `f_040_001.tscn`)
- **Purpose:** Exploration mode where player examines environments and collects evidence
- **Node Structure:**
  - Control root with scaled TextureRect (digicam images at 0.14 scale)
  - Forward and Back Area2D collision zones for navigation
  - Optional UI labels (e.g., "you need to unlock", "you need 2 picture pieces")
- **Gameplay Mechanics:**
  - Click forward to progress to next area
  - Click back to return to previous area
  - Some scenes have conditional access (require key/evidence to progress)
  - Item pickup mechanics tied to GlobalManager state tracking
- **Example: `f_040_001.gd`**
  - Conditional visibility of forward button based on `GlobalManager.is_code` flag
  - Displays context-sensitive labels for locked areas
  - Inventory item requirement checking

#### **Chase Sequence Scenes** (31 scenes)

**Chase Scenes** (`chase_1.tscn` through `chase_31.tscn` + `chase_13.gd` through `chase_30.gd`)
- **Purpose:** High-intensity rapid progression representing chase/flight sequences
- **Node Structure:** Control root with scaled background image and circular/rectangular collision zones
- **Typical Behavior:**
  - Single or dual navigation buttons
  - Rapid scene transitions on click
  - Progressive music/audio escalation
  - No backward movement (linear progression)
- **Gameplay:** Player clicks forward to progress through escalating terror; no choices or backtracking
- **Dependencies:** Digicam imagery, atmospheric audio

#### **Dimensional/Psychological Horror Scenes** (6 scenes)

**DIM Scene 1** (`dim_1.tscn` + `dim_1.gd`)
- **Purpose:** First psychological horror progression with progressive dread mechanics
- **Key Features:**
  - Conditional text display based on GlobalManager.text_scene flag
  - Progressive scene counter (GlobalManager.scene_count)
  - Audio trigger: footstep SFX plays after 5 scene visits
  - Jumpscare video playback on specific interaction
  - Dynamic flickering text effect for unsettling atmosphere
- **Node Structure:**
  - Labels for text display/warnings ("don't move")
  - Area2D for forward navigation
  - VideoStreamPlayer for jumpscare video
- **Gameplay Loop:**
  - First visit: Displays narrative text for ~9 seconds total, then enables forward button
  - Subsequent visits: Scene counter increments; after 5 visits, footstep audio triggers
  - On counter >= 5: Clicking forward triggers jumpscare video instead of normal transition

**DIM Scenes 2-6** (Progressive escalation)
- **Purpose:** Escalating psychological tension with varied interaction patterns
- **Example: `dim_2.gd`**
  - Simplified navigation: increment scene counter and transition forward
  - Part of cascading horror progression

#### **Extra/Utility Scenes**

**Main Menu** (`main_menu.tscn` + `main_menu.gd`)
- **Purpose:** Game entry menu with start and quit options
- **Functionality:**
  - "Start Game" button with 0.5s delay before scene transition
  - "Quit" button exits application
  - Fullscreen mode enabled; AudioManager plays background music
- **Dependencies:** AudioManager

**Police Report Scenes** (4 scenes: `police_report.tscn` through `police_report4.tscn`)
- **Purpose:** Narrative exposition through police/investigation documentation
- **Example: `police_report.gd`**
  - Plays phone pickup SFX (0.3s delay)
  - Plays testimony audio (12s duration)
  - Auto-transitions to next report after audio completes
- **Gameplay:** Passive viewing with audio narration

**Scene Changer** (`scene_changer.tscn` + `scene_changer.gd`)
- **Purpose:** Managed scene transitions with fade animations
- **Functionality:**
  - `change_scene(target_scene: String)` method
  - Plays fade animation, changes scene, plays fade_backwards animation
  - Provides smooth transition between scenes
- **Used By:** Multiple scripts calling `SceneChanger.change_scene(path)`

**Entity/Creature Reveal Scene** (`Entity.tscn`)
- **Purpose:** Introduction/reveal of central antagonistic entity
- **Purpose:** Critical narrative moment

---

## **5. Script Documentation**

### **Autoload Manager Scripts**

#### **CursorManager.gd**
**Purpose:** Centralized custom cursor system

**Exported Variables:** None

**Key Variables:**
- `hover_cursor` – Preloaded cursor image for interactive elements
- `normal_cursor` – Default cursor image
- `back_cursor` – Cursor image for back button

**Important Functions:**
- `set_hover()` – Sets cursor to hover state (interactive element)
- `set_normal()` – Sets cursor to default state
- `set_back()` – Sets cursor to back button state (return navigation)

**Dependencies:** Godot Input API, cursor asset images

**Interaction:** Called by scene controllers on mouse_entered/mouse_exited events to provide visual feedback

---

#### **GlobalManager.gd**
**Purpose:** Global game state persistence tracking player progress, inventory flags, and story progression

**Key Variables (State Flags):**
- `bush_sound`, `text_hazy` – Audio/visual state indicators
- `hallway_trigger` – Stage counter for hallway progression (0, 1, 2)
- `is_key_picked_up`, `is_wallet_picked_up`, `is_picture_picked_up`, etc. – Individual item pickup tracking (10+ flags)
- `is_picture2_picked_up`, `is_picture5_picked_up` – Multi-stage item collection
- `is_load_game` – Save/load game state flag
- `has_picture_been_collected` – Aggregated collection state
- `running_jumpscare_triggered` – Tracks jumpscare encounter state
- `is_vm_triggered`, `is_door_key_picked_up`, `is_evidence_picked_up` – Investigation progression flags
- `is_code` – Code/puzzle completion state
- `text_scene`, `scene_count` – Dimensional scene progression counters

**Functionality:** Persistent state container for tracking player progress across scene changes

**Dependencies:** None (Godot Node base class)

**Interaction with Other Scripts:**
- Read by scene controllers to determine conditional behavior (e.g., button visibility, audio playback)
- Written to by scene controllers upon player actions (item pickups, puzzle solutions)

---

#### **InventoryManager.gd**
**Purpose:** Item collection system with signal broadcasting

**Signals:**
- `item_picked_up(item_name: String)` – Emitted when item added

**Key Variables:**
- `items` – Array storing collected item names

**Important Functions:**
- `add_item(item_name: String)` – Adds item to inventory and emits signal
- `has_item(item_name: String) -> bool` – Checks if item exists in inventory

**Dependencies:** Godot signal system

**Interaction with Other Scripts:**
- Scene controllers call `Inventory.add_item()` when player clicks collectibles
- InventoryUI listens to `item_picked_up` signal to dynamically display items
- Scene scripts check `Inventory.has_item()` for progression requirements

---

#### **AudioManager.gd** (Located: `Assets/Audio/node.gd`)
**Purpose:** Centralized audio playback system for BGM and SFX with independent track management

**Exported Variables:** None (configured via preloaded dictionaries)

**Key Variables:**
- `active_bgm_players` – Dictionary mapping track names to active AudioStreamPlayer2D instances
- `music_tracks` – Dictionary of preloaded BGM audio streams (12 tracks):
  - "static", "glitch", "outside", "vhs_static", "ambiance_extreme", "waltz", "bsod", "parable_cutscene", "testimony", "runrabbit", "ending", "run"
- `sfx_sounds` – Dictionary of preloaded SFX audio streams (22 sounds):
  - "type", "whispers", "click", "ill_find_you", "bush", "subtle_bush", "psst", "hey", "rattle", "static_for_intro", "heavy_breath", "door_knock", "bsod", "hand", "gate_open", "telephone_convo", "footstep", "flashlight", "scream", "testimony", "pick_up"

**Important Functions:**
- `play_bgm(track_name: String)` – Plays background music track (creates new player, stores reference, enables looping)
- `stop_bgm(track_name: String)` – Stops specific track and removes player instance
- `stop_all_bgm()` – Stops all active background music
- `play_sfx(sound_name: String) -> AudioStreamPlayer` – Plays one-shot SFX (auto-frees when finished)
- `stop_all_sfx()` – Stops all SFX players

**Design Pattern:**
- Multiple BGM tracks can play simultaneously (independent players)
- SFX automatically cleaned up after playback
- Prevents duplicate track playback (checks active_bgm_players dictionary)

**Dependencies:** Godot AudioStreamPlayer API, audio asset files

**Interaction:** Called by scene controllers throughout the game for audio design

---

#### **InventoryUI.gd** (`Scenes/Scripts/InventoryUI.gd`)
**Purpose:** Dynamic UI display of collected inventory items

**Key Variables:** None (uses parent VBoxContainer)

**Important Functions:**
- `_on_item_added(item_name: String)` – Signal handler; creates and adds Label for each item
- `hide_inventory()` – Hides inventory container
- `show_inventory()` – Shows inventory container

**Dependencies:** Inventory autoload (signal connection), Godot UI system

**Design:** Simple label creation for each collected item; dynamically updates UI in response to item pickups

**Interaction:** Triggered by InventoryManager.item_picked_up signal

---

### **Scene Controller Scripts (Representative Examples)**

#### **c_001_01.gd** (Courtroom/Dialogue Scene)
**Purpose:** Standard scene navigation with cursor feedback

**Key Functions:**
- `_on_to_cr_mouse_entered()` – Sets hover cursor
- `_on_to_cr_input_event()` – Transitions to next scene on click (c_002_01)
- `_on_back_mouse_entered()`, `_on_back_input_event()` – Handles back navigation
- `_on_to_wood_mouse_entered()`, `_on_to_wood_input_event()` – Side navigation option

**Dependencies:** CursorManager, AudioManager, scene_manager

**Pattern:** Standard interactive scene template used throughout Game folder

---

#### **f_001_01.gd** (First-Person Exploration)
**Purpose:** Exploration scene with conditional features and narrative display

**Key Functions:**
- `_show_label()` – Displays contextual narrative text based on hallway_trigger state
- `show_cr_area()` – Conditionally shows interactive hotspot
- Complex branching based on GlobalManager flags (hallway_trigger, is_code, is_evidence_picked_up)

**State Management:**
- Checks `GlobalManager.hallway_trigger` to determine displayed content and audio
- Responds to different states with unique audio/visual sequences
- Stores progression state for sequential revisits

**Dependencies:** CursorManager, AudioManager, GlobalManager, InventoryUi, scene management

---

#### **dim_1.gd** (Dimensional Horror)
**Purpose:** Progressive psychological horror with escalating tension mechanics

**Key Features:**
- **Text Display Logic:** First-time visit displays two text labels sequentially (3s each)
- **Scene Counter:** Increments on each forward button click; triggers special behavior at threshold
- **Audio Trigger:** After 5 scene visits, footstep audio plays; continuing forward triggers jumpscare
- **Jumpscare Mechanic:** Plays video, records state, transitions to next scene
- **Flickering Effect:** Text flickers to create visual discomfort
- **State Reset:** Records jumpscare completion to prevent repeat on revisit

**Functions:**
- `flickering()` – Async function creating text flicker animation pattern
- `_on_video_finished()` – Handles post-jumpscare transition and scene state reset

**Complex Interaction:** Demonstrates emergent gameplay from state tracking and progressive escalation

---

#### **Subliminal_Glitch.gd** (`Area2D_Scripts/Subliminal_Glitch.gd`)
**Purpose:** Dynamic visual glitch effect with camera shake and blackout simulation

**Key Features:**
- **Duration-based Animation:** Glitch intensity increases linearly over specified duration
- **Dual Effect System:**
  - Blackout logic: Rapidly flickers ColorRect alpha; frequency increases with intensity
  - Screen shake: Camera offset increases with intensity (max 15 pixels)
- **Async Progression:** Uses frame-by-frame await loops for smooth intensity escalation

**Functions:**
- `start_dynamic_glitch(duration: float)` – Initiates glitch sequence
- `stop_glitch()` – Resets visual state and transitions scene

**Gameplay Impact:** Represents psychological breakdown or dimensional distortion

---

### **Special Script: Scene Changer** (`scene_changer.gd`)
**Purpose:** Managed scene transitions with animation

**Function:**
```gdscript
func change_scene(target_scene: String):
    animation_player.play("fade")
    await animation_player.animation_finished
    get_tree().change_scene_to_file(target_scene)
    animation_player.play_backwards("fade")
```

**Workflow:** Fade-out → scene change → fade-in, providing professional transition effect

---

## **6. Gameplay Systems**

### **Inventory System**
**Purpose:** Track collectible evidence and items central to story progression

**Implementation:**
- InventoryManager autoload maintains item array
- Emits signal on item pickup, triggering UI update
- Scene scripts call `Inventory.add_item()` on collectable interaction
- Scene scripts check `Inventory.has_item()` for progression gates

**Collectibles Identified:**
- Rusty key, wallet, pictures (multiple), bottle, ID, evidence, code pieces

**User Interaction:** Click on interactive elements in exploration scenes; items appear in top-right inventory display

---

### **Global State Management System**
**Purpose:** Track story progression flags, item pickups, and unlocked content

**Implementation:**
- GlobalManager autoload maintains 20+ boolean/integer state variables
- Scene controllers read flags to determine conditional behavior
- Scene controllers write flags to record player actions
- Enables non-linear progression without requiring save file system

**Key Systems Tracked:**
- Item pickup status (10+ items)
- Story stage progression (hallway_trigger counter)
- Jumpscare encounter status
- Code/puzzle completion
- DIM scene progression (scene_count, text_scene flags)

---

### **Audio Management System**
**Purpose:** Coordinate environmental audio, background music, and sound effects

**Implementation:**
- AudioManager autoload preloads 12 BGM tracks and 22 SFX sounds
- Scene scripts call `AudioManager.play_bgm()`, `stop_bgm()`, `play_sfx()` as needed
- Multiple BGM tracks can layer simultaneously
- SFX auto-cleans after completion

**Audio Design Elements:**
- **BGM:** Ambiance, static, glitch, waltz, testimony, chase sequences
- **SFX:** Footsteps, door knocks, clicks, whispers, jumpscare stings, phone calls

**Gameplay Function:** Drives emotional pacing and provides audio feedback for interactions

---

### **Cursor Management System**
**Purpose:** Provide visual feedback for interactive elements through custom cursor imagery

**Implementation:**
- CursorManager autoload manages three cursor states
- Scene scripts set cursor on mouse_entered/exited events
- Three cursor types: normal (default), hover (interaction), back (return navigation)

**Gameplay Function:** Communicates interactivity without explicit UI labels

---

### **Scene Navigation System**
**Purpose:** Manage scene transitions and progression through interconnected scenes

**Implementation:**
- Direct scene changes via `get_tree().change_scene_to_file(path)`
- Managed transitions via `SceneChanger.change_scene(path)` for fade animations
- Scene organization: 150+ scenes interconnected through button/hotspot navigation
- Primarily linear progression with some optional navigation branches

**Architecture:**
- Scenes organized alphabetically/numerically (c_001_01 → c_001_02, etc.)
- Chase scenes create rapid linear progression (chase_1 → chase_31)
- DIM scenes create looping/repeating patterns with escalation
- Main menu → intro → game selection → exploration/dialogue → chase → resolution

---

### **Visual Distortion Effects System**
**Purpose:** Create horror/disorientation through shader-based visual degradation

**Implementation:**
- Custom GLSL shaders applied to scene layers
- **CRT Shader:** Simulates cathode-ray tube monitor artifacts (scanlines, vignette, curvature)
- **VHS Warp Shader:** Simulates VHS tape degradation (distortion, color drift, blocks)
- **Glitch Shader:** Chromatic aberration, scanline jitter, random static spikes
- Real-time shader parameter updates based on game logic

**Visual Effects:**
- Mandela Catalogue–style glitching (random spikes in static intensity)
- Scanline jitter creating illusion of unstable video signal
- Chromatic offset (color channel separation)
- CRT curvature and vignetting

**Gameplay Function:** Reinforces horror aesthetic and psychological unease

---

### **Progressive Dread/Escalation System** (DIM Scenes)
**Purpose:** Psychological horror through escalating environmental and audio cues

**Implementation:**
- Scene counter (GlobalManager.scene_count) increments on each forward button click
- Thresholds trigger audio playback: footstep audio plays after 5 visits
- Continued interaction triggers jumpscare video
- System tracks jumpscare completion to prevent repeat exploitation

**Gameplay Loop:**
1. Player explores calmly (scenes 1-4)
2. At scene 5+: Subtle audio cue (distant footsteps) signals danger
3. Continued forward button triggers jumpscare video
4. System records event, preventing repeat

**Psychological Function:** Creates tension through anticipation and learned dread

---

## **7. User Interface**

### **Main Menu**
**Purpose:** Game entry point and exit

**Components:**
- Start Game button (transitions to game_select)
- Quit button (exits application)

**Navigation Behavior:** Linear progression to next scene

**Connected Scripts:** `main_menu.gd`

---

### **Game Select Screen**
**Purpose:** Narrative mode selection or game mode selection

**Components:** Not fully detailed in available files, but referenced as transition point

**Navigation Behavior:** Routes to appropriate game start scene

**Connected Scripts:** `game_select.gd`

---

### **Inventory Interface**
**Purpose:** Display collected evidence and items

**Components:**
- CanvasLayer with VBoxContainer
- Dynamic labels added for each collected item
- Custom VCR font (VCR_OSD_MONO_1.001.ttf)

**Visual Design:** Top-right corner placement; retro computer aesthetic

**Functionality:**
- Auto-updates when items picked up (signal-driven)
- Items displayed as text list
- Can be hidden/shown via `hide_inventory()` and `show_inventory()` methods

**Connected Scripts:** `InventoryUI.gd`

---

### **Scene Navigation UI**
**Purpose:** Provide spatial navigation within exploration scenes

**Components:**
- Forward button (progress to next area/scene)
- Back button (return to previous area/scene)
- Optional side navigation buttons (alternate paths)
- Interactive hotspots with collision shapes

**Visual Feedback:**
- Cursor changes on hover (custom cursor imagery)
- Click sound effect (SFX)

**Pattern:** Consistent across 100+ game scenes

---

### **Conditional UI Elements**
**Purpose:** Display context-sensitive information

**Examples:**
- "you need to unlock" label (locked door)
- "you need 2 picture pieces" label (incomplete puzzle)
- "don't move" warning (dimensional horror scene)

**Visibility:** Controlled by GlobalManager state flags

**Connected Scripts:** Individual scene controllers

---

### **Police Report Interface**
**Purpose:** Narrative exposition through documentation

**Visual Design:** Document images with audio narration

**Functionality:** Auto-progression after audio completion

**Connected Scripts:** `police_report.gd` through `police_report_4.gd`

---

## **8. Input Handling**

**Analysis Result:** Input handling is minimal and scene-specific. All interaction is mouse-based through Area2D collision zones.

### **Input Methods**

| Input Type | Action | Detection | Response |
|------------|--------|-----------|----------|
| **Mouse Click** | Primary interaction | `InputEventMouseButton` with `MOUSE_BUTTON_LEFT` check | Scene transition, audio playback, state update |
| **Mouse Hover** | Cursor feedback | `mouse_entered` signal | Cursor image change |
| **Mouse Exit** | End feedback | `mouse_exited` signal | Cursor reset to normal |

### **Interaction Pattern**
```gdscript
func _on_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
    if event is InputEventMouseButton:
        if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            AudioManager.play_sfx("click")
            get_tree().change_scene_to_file("res://Scenes/Game/next_scene.tscn")
```

### **Findings**
- **No Keyboard Input:** No keyboard controls detected in examined scripts
- **No Controller Support:** No gamepad/controller input detected
- **Mouse-Only Interaction:** 100% of game interaction via mouse clicks
- **Fullscreen Mode:** Game runs in fullscreen (configured in main_menu.gd)
- **Cursor Visibility:** Mouse cursor always visible (no hidden/locked states)

### **Input Configuration**
- **Project Settings:** Not fully accessible from provided files
- **Display Mode:** Fullscreen enabled at game start
- **Mouse Mode:** `Input.MOUSE_MODE_VISIBLE` set in scene controllers

---

## **9. Asset Organization**

### **Audio Assets** (~65 files)

**Background Music (BGM) Tracks:**
| Track Name | File | Purpose |
|-----------|------|---------|
| static | radio_static_2.MP3 | Radio/interference ambiance |
| glitch | glitch_static(1).MP3 | Glitch/corruption audio |
| outside | OutsideBGM.MP3 | Exterior environment |
| vhs_static | vhs_static.mp3 | VHS degradation ambiance |
| ambiance_extreme | ambiance_extreme(1).MP3 | Intense horror ambiance |
| waltz | Audio_Intro/intro_bgm(2).MP3 | Opening sequence music |
| bsod | Audio_Intro/bsod_sfx.mp3 | Blue screen/system crash |
| parable_cutscene | bgm_parable_cutscene.MP3 | Narrative exposition |
| testimony | Audio_Intro/testimony.MP3 | Police/witness statements |
| runrabbit | run rabbit.mp3 | Chase sequence music |
| ending | ending.MP3 | Game conclusion |
| run | copy_EC47487F-7632-4861-8E5A-802AD11A2B28.mp3 | Chase/escape sequence |

**Sound Effects (SFX):**
| Effect | File | Context |
|--------|------|---------|
| type | keyboard_click.MP3 | Typing/keyboard interaction |
| whispers | Sighting_Sound(1).MP3 | Entity/creature sound |
| click | mouse_click.mp3 | UI button interaction |
| ill_find_you | ill_find_you(1).MP3 | Threatening audio cue |
| bush | bush_sounds.MP3 | Environmental rustling |
| subtle_bush | subtle_bush.MP3 | Quiet rustling |
| psst | psst.MP3 | Attention-getting sound |
| hey | hey.MP3 | Voice callout |
| rattle | rattle_jumpscare.MP3 | Jumpscare stinger |
| static_for_intro | static_for_intro.mp3 | Intro/transition static |
| heavy_breath | heavy_breaths(1).MP3 | Character breathing |
| door_knock | door_knock.mp3 | Door knock interaction |
| hand | hand.MP3 | Physical interaction sound |
| gate_open | cr_opening.MP3 | Door/gate opening |
| telephone_convo | telephone_convo(1).MP3 | Phone call audio |
| footstep | corridor_footstep.MP3 | Footstep ambiance |
| flashlight | flashlight_on.MP3 | Flashlight toggle |
| scream | cutoff_scream.MP3 | Creature/threat vocalization |
| pick_up | Audio_Intro/pick_up_call.mp3 | Phone pickup |

### **Visual Assets**

**Cursor Images (6 PNG files):**
- Cursor_Normal.png – Default pointer
- Cursor_Hover.png – Interactive element indicator
- Back_Button.png – Back navigation indicator
- Left_Button.png, Right_Button.png – Directional navigation
- hover.png – Alternative hover state

**Digicam Photographs (50+ JPG files):**
- DSC06831.JPG through DSC06963.JPG (and extensions)
- Purpose: Base images for first-person exploration scenes
- Resolution: High-quality photographs scaled down to 0.14x for gameplay (reducing from ~4000px to ~560px)
- Asset Organization: Logical numeric naming for sequential scene construction

**Character/Creature Artwork:**
- Victim3_3_-removebg-preview.png – Central character artwork with transparent background
- Used across intro and entity reveal scenes

**Font Asset:**
- VCR_OSD_MONO_1.001.ttf – Retro monospace font for all UI text
- Purpose: Establishes cohesive vintage/horror aesthetic

**Video Assets (OGV Format):**
- Clip_3.ogv – Intro video sequence
- Multiple jumpscare videos in Jumpscares_OGV/ folder
- Purpose: Animated sequences for intro and horror moments

### **Shader Assets**

**Custom GLSL Shaders:**
- **warp.gdshader** – VHS-style distortion with warp and color drift
- **game_root.gdshader** – CRT monitor effect with scanlines and vignette
- **game_root1.gdshader** – Alternative CRT variant with enhanced static
- Used to create cohesive found-footage/degraded-media aesthetic

---

## **10. Data Management**

### **State Persistence System**

**Implementation:** Not identifiable from available project files as traditional save/load system.

**Current Method:** GlobalManager autoload maintains runtime state across scene transitions.

**State Variables Tracked:**
- Player inventory items (boolean flags for each collectible)
- Story progression stages (hallway_trigger, scene_count, text_scene)
- Encounter records (is_jumpscare_triggered, is_vm_triggered, etc.)
- Puzzle/code completion status

**Limitations:**
- State persists only during current game session
- No file-based save system detected
- Game restart resets all progress to initial state

### **Potential Save System Requirements**
If not yet implemented, production version would require:
- Serialization of GlobalManager state to JSON or binary format
- File system storage in user data directory
- Load system to restore GlobalManager state on game startup
- Multiple save slot support for player choice

### **Data Organization**
- Flat structure: GlobalManager stores individual boolean flags rather than hierarchical data objects
- Simple and direct but may become unwieldy with further expansion

### **Recommendation**
For production, implement structured save file format (e.g., JSON) with encrypted file storage to prevent player save tampering.

---

## **11. Code Quality Assessment**

### **Strengths**

1. **Clear Functional Separation**
   - Autoload managers handle distinct concerns (audio, cursors, state, inventory)
   - Scene controllers focused on individual scene logic
   - Minimal cross-scene dependencies

2. **Signal-Driven Architecture**
   - Inventory system uses Godot signals for decoupled item pickup events
   - InventoryUI responds to signals rather than polling state
   - Enables modularity and future feature extension

3. **Reusable Script Patterns**
   - Scene controller scripts follow consistent template (mouse_entered, mouse_exited, input_event)
   - Reduces code duplication across 150+ scene scripts
   - Easy for team members to understand and maintain

4. **Resource Preloading**
   - AudioManager preloads all audio assets once at startup
   - Eliminates runtime loading stutters during gameplay
   - Demonstrates performance awareness

5. **Consistent Naming Conventions**
   - Scene files follow logical naming (c_XXX_XX, d_XXX_XXX, f_XXX_XX)
   - Script functions use clear verb-noun pattern (_on_button_pressed, _on_mouse_entered)
   - Autoload names clearly indicate purpose (CursorManager, AudioManager, GlobalManager)

### **Areas for Improvement**

1. **GlobalManager State Explosion**
   - 20+ individual boolean/integer variables could be organized into hierarchical data structures
   - Future expansion will become difficult to track
   - **Recommendation:** Refactor into nested dictionaries or custom resource classes

2. **Limited Error Handling**
   - AudioManager has error messages but no robust fallback behavior
   - No null checks for GlobalManager state access
   - Scene transitions assume file paths are correct
   - **Recommendation:** Add try-catch patterns, validate file paths, provide graceful degradation

3. **Hard-Coded File Paths**
   - Scene transitions reference absolute file paths throughout project
   - Difficult to refactor folder structure
   - **Recommendation:** Use constants for common paths or implement asset registry

4. **Minimal Documentation in Code**
   - Few inline comments explaining complex logic
   - Shader logic appears undocumented in source
   - **Recommendation:** Add docstrings to functions, especially complex logic like dim_1.gd

5. **Testing Infrastructure Not Detected**
   - No unit tests or integration tests found
   - No debug/development scenes for system testing
   - **Recommendation:** Implement basic test scenes for core systems

6. **Inventory System Simplicity**
   - Current inventory is flat array without categorization
   - No item metadata (description, quantity, etc.)
   - **Recommendation:** Extend with item classes for future features

---

## **12. Performance Considerations**

### **Observable Patterns**

1. **Asset Loading Strategy**
   - AudioManager preloads all audio into memory (12 BGM + 22 SFX)
   - Eliminates runtime loading but requires ~100-200MB RAM allocation
   - Appropriate for narrative game with linear progression

2. **Scene Architecture**
   - 150+ individual scene files may create filesystem stress during rapid transitions
   - Digicam images preloaded into TextureRect (scaled to 0.14x, reducing from ~4000px to ~560px)
   - Scaling reduces memory overhead

3. **Shader Operations**
   - Real-time shader parameter updates in dim_1.gd's glitch effect (per-frame updates)
   - Glitch shader recalculates chromatic offset, scanline count, static intensity every frame
   - Reasonable performance on modern hardware but could be optimized with animation curves

4. **VHS/CRT Effects**
   - Complex shader operations applied to intro scenes
   - Multiple layers (PostProcessingLayer + ColorRect)
   - Not a performance bottleneck given typical frame rates

### **Identified Performance Issues**

1. **Potential Improvement: Glitch Effect Optimization**
   - Current implementation: Per-frame randomization and shader updates
   - Alternative: Pre-computed animation curve for deterministic glitch progression
   - Current impact: Minimal (effect is not always running)

2. **Audio Simultaneous Playback**
   - No limits on concurrent audio streams
   - SFX can layer without max-channel constraint
   - Potential issue: Memory overflow if many SFX trigger simultaneously
   - **Recommendation:** Implement audio priority system with max channel limits

3. **Scene File Organization**
   - 150+ scene files in Game/ folder may impact load times
   - Currently flat structure; no subfolder organization
   - **Recommendation:** Organize by chapter/act for better filesystem performance

### **Optimization Opportunities**

1. **Pre-compute Glitch Animations**
   - Replace per-frame randomization with animation player curves
   - Reduce shader parameter updates from per-frame to interpolation

2. **Audio Channel Limiting**
   - Implement audio priority system (e.g., max 4 SFX simultaneously)
   - Prevent audio stack overflow

3. **Scene Streaming**
   - Load next scene in background while current scene plays
   - Reduce transition stutter

4. **Shader Performance Profiling**
   - Profile shader performance on target hardware
   - Consider simplified shaders for lower-end systems

---

## **13. Future Enhancement Opportunities**

### **Gameplay Enhancements**

1. **Branching Narrative Paths**
   - Current implementation: Mostly linear progression with state flags
   - Enhancement: Implement true branching dialogue with multiple endings
   - Effort: Medium (requires scene multiplication, state tracking expansion)

2. **Interactive Puzzle Systems**
   - Current: Code/picture-piece gating without interactable puzzles
   - Enhancement: Create logic puzzles, door combinations, evidence analysis mini-games
   - Effort: High (requires new game systems)

3. **Inventory Item Interaction**
   - Current: Items are passive collectibles
   - Enhancement: Allow combining items, examining items in detail, using items on scenes
   - Effort: High (requires new UI and interaction framework)

4. **Character Dialogue System**
   - Current: Scene-based narrative without NPC dialogue trees
   - Enhancement: Implement choice-based dialogue with dialogue manager
   - Effort: Medium (requires dialogue scripting language/data format)

### **Technical Improvements**

1. **Save/Load System**
   - Current: No persistent save system
   - Enhancement: Implement file-based game state serialization
   - Effort: Medium

2. **Performance Optimization**
   - Implement audio channel limiting and priority system
   - Pre-compute glitch animations with animation player
   - Effort: Low (high impact)

3. **Localization Support**
   - Current: No text localization detected
   - Enhancement: Implement translation system for multiple languages
   - Effort: Medium (infrastructure) + High (content)

4. **Accessibility Features**
   - Add colorblind modes for VHS/glitch effects
   - Implement text scaling
   - Add audio description track
   - Effort: Medium

### **Content Expansions**

1. **Additional Scenes/Acts**
   - Current: 150+ scenes forming complete game loop
   - Enhancement: Expand with additional chapters, alternate paths
   - Effort: High (design and asset creation)

2. **Additional Jumpscare Variants**
   - Current: Limited jumpscare video content
   - Enhancement: Procedurally vary scares or add variants
   - Effort: Medium (video production)

3. **Alternative Music Tracks**
   - Current: 12 BGM tracks
   - Enhancement: Add thematic variants, boss battle music, mood variations
   - Effort: Medium (audio production)

### **UI/UX Improvements**

1. **Settings Menu**
   - Add audio volume controls
   - Add visual effect intensity settings
   - Add accessibility options
   - Effort: Low-Medium

2. **Pause Menu**
   - Implement in-game pause with menu overlay
   - Add resume/quit options
   - Effort: Low

3. **Inventory UI Enhancement**
   - Replace simple label list with icon-based display
   - Add item descriptions on hover
   - Implement inventory search/filtering
   - Effort: Medium

4. **Quest Tracking**
   - Display current objectives
   - Track progress toward story milestones
   - Effort: Medium

---

## **14. Conclusion**

### **Technical Complexity**
**Assessment:** Medium-High

The Twenty-Twelve project demonstrates solid foundational architecture with well-organized autoload managers, consistent scene patterns, and appropriate use of Godot's signal system. The codebase is not overly complex but shows maturity in system design. The visual effects (shaders, glitch effects) add technical sophistication appropriate for the horror genre.

### **Architecture Quality**
**Assessment:** Good

- **Strengths:** Clear separation of concerns, reusable patterns, signal-driven design
- **Weaknesses:** GlobalManager state explosion, limited error handling, hard-coded file paths
- **Overall:** Production-ready foundation that would benefit from refactoring to prepare for expansion

### **Gameplay Systems Implemented**
**Assessment:** Comprehensive for Narrative Genre

Implemented systems include:
- Inventory and item collection
- Global state management and progression tracking
- Audio management with layered BGM support
- Custom cursor feedback system
- Scene navigation and transitions
- Visual distortion effects for horror atmosphere
- Progressive dread mechanics (escalating tension)
- Jumpscare sequencing

**Notable Gap:** No traditional combat, puzzle-solving, or resource management systems (not required for this game type)

### **Maintainability**
**Assessment:** Moderate

**Positive Factors:**
- Consistent code style and naming conventions
- Modular autoload system
- Reusable scene controller patterns
- Clear script organization

**Negative Factors:**
- No inline documentation
- Large number of individual scripts (~150) with potential for drift
- GlobalManager could become unmanageable during expansion
- Hard-coded file paths reduce flexibility

**Recommendation for Long-Term Maintenance:** Implement central asset registry, create base scene controller class, add comprehensive documentation, implement unit test framework

### **Suitability as Portfolio Project**
**Assessment:** Strong

**Portfolio Strengths:**
- Complete game loop (menu → intro → exploration → climax → resolution)
- Professional audio design integration
- Custom shader implementation demonstrating graphics knowledge
- Sophisticated glitch/horror effects
- Demonstrates understanding of narrative game structure
- Well-organized file structure showing project management skills
- Godot engine expertise appropriate for indie game development

**Portfolio Presentation Recommendations:**
1. Include gameplay video demonstrating full experience
2. Document the architecture decisions (why GlobalManager instead of scene-based state?)
3. Highlight technical implementations (shader effects, progressive dread system)
4. Discuss audio design choices and their psychological impact
5. Include performance profiling results
6. Document lessons learned and future improvements

---

## **Summary Technical Specifications**

| Category | Specification |
|----------|---------------|
| **Engine** | Godot 4.5 with GL Compatibility renderer |
| **Language** | GDScript |
| **Scene Count** | 150+ interconnected scenes |
| **Script Count** | 150+ individual GDScript files |
| **Audio Tracks** | 12 BGM + 22 SFX = 34 total tracks |
| **Total Development Scope** | Estimated 200-400 hours (based on asset count and scene complexity) |
| **Target Platform** | PC (Windows, Linux, macOS) |
| **Resolution** | 1152x647px (configurable fullscreen) |
| **Game Loop Duration** | Estimated 45-90 minutes (based on scene structure) |
| **Core Game Loop** | Linear narrative exploration with minimal player choice |
| **Save System** | Runtime state persistence only; no file-based saves detected |
| **Accessibility** | Mouse-only interaction; no keyboard/controller support |

---

**End of Documentation**
