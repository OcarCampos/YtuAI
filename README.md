# YtuAI - An Enhanced Homunculus AI for Ragnarok Online

YtuAI is a modern, improved version of the classic AzzyAI Homunculus for Ragnarok Online, currently being improved and tested at the official Latam server. This project is a heavily improved fork of the classic AzzyAI + AI-Dieter, redesigned to provide a smarter, more efficient, and more reliable homunculus companion.

The goal and motivation to do this was to have a efficient companion, with powerful features that make leveling and combat a smoother experience for the alchemist class.

This AI started to be developed with a Vanilmirth level 5 as a test subject. Currently the test subject has grown to level 32. As the homunculus keeps progressing through the game, the mechanics will continue to be improved adding new features as needed given the test subject's progress and the acquisition of new skills. 

New releases are planned as the test subject is far from being a completed character.

## ✨ Key Features & Improvements

This AI version offers a significant overhaul to the mechanics of the Homunculus. Adapted to today's mechanics and state of the art of the rules of the game in regards of homunculi. 

Some of the key enhancements are:

-   **Auto attack**: The homunculus comes preconfigured to be aggresive by default, being active in the search of monsters to kill. Thus allowing the user to focus in traversing the maps and not focusing in controlling the homunculus and killing monsters with it.

-   **Aggressive Skill Usage**: The logic for skills like `Caprice` has been finetuned, making your homunculus a more proactive and effective damage dealer.

-   **Always with you**: The homunculus will always be with you, following you and attacking monsters automatically. But if you decide to pass on a monster or flee the scene, the homunculus will follow you, stopping the auto attack and be by your side on all times.

-   **Smart SP Management**: The homunculus now adjusts its skill usage based on a tiered logic:
    - **Aggressive (SP > 70%)**: High priority for skill casting.
    - **Balanced (30% < SP <= 70%)**: Medium priority, balancing skill use and conservation.
    - **Conservative (SP <= 30%)**: Low priority, using the skill only when necessary.
    - **Emergency Override**: High priority if mobbed by three or more enemies, regardless of SP.

-   **SP Recovery Mode**: To prevent constant toggling between skills and melee attacks when SP is low, the homunculus will enter a recovery mode and only use basic attacks until SP reaches a configurable threshold (40% SP).

-   **Optimized Skill Cooldowns**: The homunculus is now aware of skill cooldowns, preventing it from spamming abilities and getting stuck in a loop of failed casts. This results in smoother, more reliable combat.

-   **HP-Based Recovery System**: When your homunculus's HP gets dangerously low, it will automatically flee and enter a recovery mode, only re-engaging once it's safe to do so (50% HP). This dramatically improves survivability. Player commands will always override this safety feature, giving you full control when you need it to attack despite having low HP.

-   **Dynamic Kiting System**: To minimize damage, the homunculus will automatically kite enemies when its health drops, moving between attacks to stay alive longer.

-   **Economic Suicide Tactic**: A clever, cost-saving feature that intentionally lets the homunculus be defeated before its timer expires, saving you the expense of a "Seed of Life.". This to be in line with the new mechanics of the game introduced in 2022 (See changelog: https://irowiki.org/wiki/Homunculus_System).

## 📦 Installation

YtuAI is a complete package. There is no need to download AzzyAI or any other files to get started. Follow the instructions below to install at your local machine.

### Prerequisites

-   **Ragnarok Online**: Make sure you have official Ragnarok Online client installed on your machine. YtuAI was developed and tested for the Latam GNJoy Server.
-   **Create a back up**: This is utterly important. Make a backup of your official Ragnarok Online AI folder (C:\Gravity\Ragnarok\AI) and keep it safe. In case of any problem with YtuAI you can roll back by replacing the AI folder with the official backup folder from the game.

### Installation

1.  **Copy the AI Loader**
    -   Copy the `AI.lua` file from the `YtuAI` folder in this project.
    -   Paste and **replace** the file in your `C:\Gravity\Ragnarok\AI` directory. This is the loader that will activate our custom AI.
    -   If the `AI` folder does not exist in your Ragnarok directory, create it manually.

2.  **Copy the Custom AI Files**
    -   Next, copy the entire `USER_AI` folder from this project's `YtuAI` directory.
    -   Paste and **replace** the folder and all its contents into your `C:\Gravity\Ragnarok\AI\USER_AI` directory.

> 💡 This will activate the intelligent behavior of the homunculus with our custom tactics and improvements.

## ⚙️ Configuration

YtuAI is highly configurable to suit your playstyle. The main configuration file is `H_Config.lua` located in the `USER_AI` folder. The key files you can modify are:

- `H_Config.lua`: Main configuration file where you can adjust parameters like HP/SP thresholds, skill usage, and tactics.
- `H_Tactics.lua`: Define combat behavior against specific monsters.
- `H_Skills.lua`: Customize the priority-based skill engine.

Key configuration options include:

- **SP Management**: Adjust `V_SkillSPMin` and `V_SkillSPRecover` to control when the homunculus uses skills and when it recovers.
- **HP Recovery**: Modify `FleeHP` and `RecoverHP` to change when the homunculus flees and when it resumes combat.
- **Skill Usage**: Fine-tune skill priorities and conditions in `H_Skills.lua`.

Refer to the detailed documentation in the `documentation/` folder for comprehensive configuration guides.

## 🧪 Activating the AI In-Game

Once the AI has been installed in your game. Log in to your character and invoke the homunculus. Once invoked, type the following command in the chat:

```
/hoai
```

A message should show up on game console, saying that the homunculus AI has been **customized**. This command activates the custom AI installed. 

You will see your homunculus begin to act on its own based on the pre-configured behavior.

## 📁 Project Structure

-   `YtuAI/`: Contains all the necessary AI files (`AI.lua` and the `USER_AI` folder).
-   `documentation/`: Contains detailed guides on configuration and tactics for you to configure your homunculus as needed.
-   `README.md`: This file.

## Notes

YtuAI comes preconfigured for the Vanilmirth homunculus, because this was a project that started to be able to use a Vanilmirth together with an alchemist aimed to be a brewer. Despite this, the mechanics should work out of the box for other homunculus types. Nonetheless, you can always change the configuration to suit your needs. Read the documentation files to understand where and what to change.

It was decided to get rid of the original AzzyAIConfig.exe file due to security concerns some users may have with executable files, but following the documentation should be enough to configure your homunculus to your own liking.

Note that this project is in development as the test subject is far from being a completed character. New releases are planned and improvements and suggestions are welcome.

## 🤝 Credits

-   Original AzzyAI created by **Dr. Azzy (Spence Konde)** https://github.com/SpenceKonde/AzzyAI.
-   Functional configuration (Lava Slide) adjusted by **Eukanhart**.

## 📜 License

Distributed under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) license. You may share and modify this content, but **commercial use is prohibited**.

## Releases

-   **v0.1.0** (2025-09-10): Initial release.
