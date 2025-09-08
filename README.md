# Ragnarok Online - Improved Homunculus AI

This project is dedicated to understanding, documenting, and improving the AI scripts (written in Lua) for the Homunculus companion in the game Ragnarok Online. The goal is to create a powerful, efficient, and highly customizable AI for leveling and general use.

## Project Goal

The main objective is to create an enhanced version of a custom AI, now named `VanilAI`, which is based on the popular AzzyAI. This involves:

-   **Understanding** the logic and structure of the AI scripts.
-   **Translating** existing Korean documentation to English.
-   **Creating** new, comprehensive documentation for the improved AI.
-   **Implementing** new features and optimizing existing ones for better performance and usability.

## Homunculus

This AI is being developed and tested with a **Vanilmirth** homunculus, with the intention of supporting its evolution, **Dieter**.

## 📦 Installation

Our custom AI is a complete package based on AzzyAI. You no longer need to download multiple packages.

1.  **Copy the AI Loader**
    -   Copy the `AI.lua` file from the `VanilAI` folder in this project.
    -   Paste and **replace** the file in your `C:\Gravity\Ragnarok\AI` directory. This is the loader that will activate our custom AI.
    -   If the `AI` folder does not exist in your Ragnarok directory, create it manually.

2.  **Copy the Custom AI Files**
    -   Next, copy the entire `USER_AI` folder from this project's `VanilAI` directory.
    -   Paste and **replace** the folder and all its contents into your `C:\Gravity\Ragnarok\AI\USER_AI` directory.

> 💡 This will activate the intelligent behavior of the homunculus with our custom tactics and improvements.

## 🧪 Activating the AI In-Game

In the game, type the following command in the chat:

```
/hoai
```

This command activates the custom AI. You will see your homunculus begin to act on its own based on our configured behavior.

## Project Structure

-   `AI-original/`: Contains the default AI scripts from the game client for reference.
-   `VanilAI/`: Contains our custom AI, based on AzzyAI.
-   `vendor/`: Contains third-party code and other external resources.
-   `documentation/`: Contains detailed documentation for AI configuration and tactics.
-   `devlog/`: Contains logs of the development process.

## 🤝 Credits

-   Original AzzyAI created by **Dr. Azzy (Spence Konde)**.
-   Functional configuration (Lava Slide) adjusted by **Eukanhart**.

## 📜 License

Distributed under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) license. You may share and modify this content, but **commercial use is prohibited**.
