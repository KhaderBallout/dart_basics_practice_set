# Football Match Simulation

## Overview
This project simulates a football match between two teams using **user input**, **object-oriented programming**, and **game theory** concepts.  
Players, trainers, stadiums, and other actors are modeled as Dart classes.  
Before the match, trainers choose strategies that interact via a **payoff matrix** to determine bonuses and influence the final outcome.  
You can also add your own creative features such as referees, weather systems, or fan support.

## Core Classes (Actors)

### Player
**Required:**
- `name`
- `age`
- `position`
- `id`
- `power` (random)
- `jerseyNumber`
- `injury`
- `stamina`

---

### Trainer
**Required:**
- `name`
- `age`
- `experience` (random)
- `strategy`
- `motivation`

---

### Team
**Required:**
- `teamName`
- `trainer`
- `players` (list)
- `teamReputation`

---

### Stadium
**Required:**
- `name`
- `location`
- `capacity`

---

### Game
**Responsibilities:**
- Handle **simulation logic**
- Determine **match outcome**

## Strategic Decision-Making (Game Theory)
Before the match:
- Each trainer chooses a **strategy** (e.g., `Offensive`, `Defensive`, `Balanced`, `Counter-Attack`, `Pressing`, `Park-the-Bus`).

## Create Teams & Players
For each team:
1. Enter **team name** and optional properties.
2. Enter **trainer name** and optional properties.
3. Choose a **team strategy** (prompt user).
4. Enter **number of players**.
5. For each player:
   - Input required properties.
   - Input optional properties.


## Create the Stadium
- Input **stadium name**, **location**, and **capacity**.