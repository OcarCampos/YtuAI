# Ragnarok Online - Improved Homunculus AI

This project is dedicated to understanding, documenting, and improving the AI scripts for the Homunculus companion in the game Ragnarok Online. The goal is to create a powerful, efficient, and highly customizable AI for leveling and general use.

## Project Goal

The main objective is to create an enhanced version of the `AI-dieter` custom AI, using the original game AI (`AI-original`) as a reference. This involves:

-   **Understanding** the logic and structure of the AI scripts.
-   **Translating** existing Korean documentation to English.
-   **Creating** new, comprehensive documentation for the improved AI.
-   **Implementing** new features and optimizing existing ones for better performance and usability.

## Homunculus

This AI is being developed and tested with a **Vanilmirth** homunculus, with the intention of supporting its evolution, **Dieter**.

## 📦 Installation

To use this AI, you first need the base AzzyAI, and then you apply our modifications.

### 1. Download the Base AzzyAI

-   The original AzzyAI is required. We will place it in the `vendor/` directory to keep it separate from our modifications.
-   Download it from the official repository: [https://github.com/SpenceKonde/AzzyAI](https://github.com/SpenceKonde/AzzyAI)
-   Extract the contents into the `vendor/AzzyAI/` directory.

### 2. Copy to the Ragnarok Folder

-   From the `vendor/AzzyAI/` directory, copy the `USER_AI` folder into your Ragnarok `AI` directory.
-   Example path: `C:\Gravity\Ragnarok\AI\USER_AI`
-   If the `AI` folder does not exist in your Ragnarok directory, create it manually.

### 3. Apply Our Improved AI

-   Copy the `AI.lua` file from the `AI-dieter` folder in this project.
-   Paste and **replace** the file in your `C:\Gravity\Ragnarok\AI` directory. This is the loader that will activate our custom AI.
-   Next, copy the entire contents of the `AI-dieter/USER_AI` folder from this project.
-   Paste and **replace** the files in the `C:\Gravity\Ragnarok\AI\USER_AI` directory.

> 💡 This will activate the intelligent behavior of the homunculus with our custom tactics and improvements.

## 🧪 Activating the AI In-Game

In the game, type the following command in the chat:

```
/hoai
```

This command activates the custom AI. You will see your homunculus begin to act on its own based on our configured behavior.

## Project Structure

-   `AI-original/`: Contains the default AI scripts from the game client for reference.
-   `AI-dieter/`: Contains our modified AI configuration files.
-   `vendor/`: Contains third-party code, such as the base AzzyAI.
-   `documentation/`: Contains detailed documentation for AI configuration and tactics.
-   `devlog/`: Contains logs of the development process.

## 🤝 Credits

-   Original AzzyAI created by **Dr. Azzy (Spence Konde)**.
-   Functional configuration (Lava Slide) adjusted by **Eukanhart**.

## 📜 License

Distributed under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) license. You may share and modify this content, but **commercial use is prohibited**.
