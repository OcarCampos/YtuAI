# YtuAI - An Enhanced Homunculus AI for Ragnarok Online

Welcome to YtuAI, a modern, high-performance Homunculus AI for Ragnarok Online, specifically tailored for the official Latam server. This project is a heavily improved fork of the classic AzzyAI + AI-Dieter, redesigned to provide a smarter, more efficient, and more reliable companion for your adventures.

Our goal is to offer a superior AI that works out of the box, with powerful features that make leveling and combat a smoother experience for the alchemist class.

## ✨ Key Features & Improvements

YtuAI isn't just a minor tweak. It's a significant overhaul to the mechanics of the Homunculus. Some of the key enhancements are:

-   **Smart SP Management**: A dynamic, tiered-priority system that allows your homunculus to use skills aggressively at high SP, conservatively at low SP, and reactively in emergencies. No more wasting SP!
-   **Optimized Skill Cooldowns**: The AI is now aware of skill cooldowns, preventing it from spamming abilities and getting stuck in a loop of failed casts. This results in smoother, more reliable combat.
-   **HP-Based Recovery System**: When your homunculus's HP gets dangerously low, it will automatically flee and enter a recovery mode, only re-engaging once it's safe to do so. This dramatically improves survivability.
-   **Dynamic Kiting System**: To minimize damage, the AI will automatically kite enemies when its health drops, moving between attacks to stay alive longer.
-   **Economic Suicide Tactic**: A clever, cost-saving feature that intentionally lets the homunculus be defeated before its timer expires, saving you the expense of a "Seed of Life."
-   **Aggressive Skill Usage**: We've fine-tuned the logic for skills like `Caprice`, making your homunculus a more proactive and effective damage dealer.

## 📦 Installation

YtuAI is a complete package. You no longer need to download AzzyAI or any other files to get started. Follow the instructions below to install at your local machine.

### Prerequisites

-   **Ragnarok Online**: Make sure you have official Ragnarok Online client installed on your machine. YtuAI was developed for the Latam GNJoy Server.
-   **Create a back up**: This is utterly important. Make a backup of your official Ragnarok Online AI folder (C:\Gravity\Ragnarok\AI) and keep it safe somewhere you know. In case of any problem with YtuAI you can roll back by replacing the AI folder with the backup.

### Installation

1.  **Copy the AI Loader**
    -   Copy the `AI.lua` file from the `YtuAI` folder in this project.
    -   Paste and **replace** the file in your `C:\Gravity\Ragnarok\AI` directory. This is the loader that will activate our custom AI.
    -   If the `AI` folder does not exist in your Ragnarok directory, create it manually.

2.  **Copy the Custom AI Files**
    -   Next, copy the entire `USER_AI` folder from this project's `YtuAI` directory.
    -   Paste and **replace** the folder and all its contents into your `C:\Gravity\Ragnarok\AI\USER_AI` directory.

> 💡 This will activate the intelligent behavior of the homunculus with our custom tactics and improvements.

## 🧪 Activating the AI In-Game

In the game, type the following command in the chat:

```
/hoai
```

This command activates the custom AI. You will see your homunculus begin to act on its own based on our configured behavior.

## 📁 Project Structure (Release)

When we generate a release, the structure will be clean and simple:

-   `YtuAI/`: Contains all the necessary AI files (`AI.lua` and the `USER_AI` folder).
-   `documentation/`: Contains detailed guides on configuration and tactics.

## 🤝 Credits

-   Original AzzyAI created by **Dr. Azzy (Spence Konde)**.
-   Functional configuration (Lava Slide) adjusted by **Eukanhart**.

## 📜 License

Distributed under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) license. You may share and modify this content, but **commercial use is prohibited**.
