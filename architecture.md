# Astrologika Project Architecture

## 1. Project Directory Structure

The project follows a modular folder structure to organize assets, scenes, and scripts according to their responsibilities. This organization promotes maintainability, consistency, and easier collaboration among team members.

The following structure serves as the standard reference when adding or organizing project files.

```text
res://
├── assets/
│   ├── sprites/
│   │   ├── player/
│   │   ├── machines/
│   │   ├── environment/
│   │   └── objects/
│   ├── tilesets/
│   ├── audio/
│   └── fonts/
│
├── scenes/
│   ├── player/
│   ├── environment/
│   │   ├── map/
│   │   ├── tiles/
│   │   ├── walls/
│   │   └── doors/
│   ├── objects/
│   │   ├── machines/
│   │   ├── boxes/
│   │   └── other/
│   └── ui/
│
├── scripts/
│   ├── player/
│   ├── environment/
│   ├── objects/
│   ├── systems/
│   └── ui/
│
└── project.godot
```

## 2. Directory Responsibilities

| Directory  | Responsibility                                                    |
| ---------- | ----------------------------------------------------------------- |
| `assets/`  | Stores game resources such as images, tilesets, audio, and fonts. |
| `scenes/`  | Stores Godot scenes representing game elements and interfaces.    |
| `scripts/` | Stores GDScript files containing game logic and behavior.         |

### Assets

- `sprites/` – Stores visual assets grouped by game element, such as player, doors, machines, and others.
- `tilesets/` – Stores reusable TileSet resources.
- `audio/` – Stores sound effects and music.
- `fonts/` – Stores fonts used in the game.

### Scenes

- `player/` – Player character scenes.
- `environment/` – Map, tiles, walls, and doors.
- `objects/` – Machines, boxes, and other game objects.
- `ui/` – User interface scenes.

### Scripts

- `player/` – Player movement and interaction logic.
- `environment/` – Environment-related behavior.
- `objects/` – Object and machine behavior.
- `systems/` – Shared game systems and management logic.
- `ui/` – User interface logic.

## 3. Organization Guidelines

1. Place files in the directory that matches their responsibility.
2. Group related resources and components together.
3. Keep assets, scenes, and scripts separate.
4. Use consistent and descriptive names for files and folders.
5. Update this documentation when significant structural changes are introduced.