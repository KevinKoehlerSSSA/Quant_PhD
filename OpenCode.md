# Installing OpenCode in RStudio's Terminal

You can install and run OpenCode from the **Terminal** tab in RStudio, next to the Console. The **Console** talks to R; the **Terminal** talks to your computer.

Before you start, make sure **R** and **RStudio** are installed.

---

## Mac

1. Open your RStudio project and click the **Terminal** tab (if you don't see it: **Tools → Terminal → New Terminal**).
2. Paste this line and press Enter:
   ```
   curl -fsSL https://opencode.ai/install | bash
   ```
3. **Close that terminal and open a new one** (the installer updates settings that only a new terminal picks up).
4. Check that it worked:
   ```
   opencode --version
   ```
   A version number means you're done.

**If you get `command not found`:** quit RStudio completely (Cmd+Q), reopen it, and try step 4 again. If it still fails, use the npm route from the Windows instructions below; it works the same way on a Mac.

---

## Windows

The most reliable route is via Node.js, a free program that includes the `npm` installer.

1. **Install Node.js:** download the **LTS** version from [nodejs.org](https://nodejs.org) and run the installer with the default settings.
2. **Restart RStudio completely** (close it and reopen it). RStudio only notices newly installed programs when it starts.
3. Open the **Terminal** tab (**Tools → Terminal → New Terminal**).
4. Install OpenCode:
   ```
   npm install -g opencode-ai
   ```
5. **Close that terminal and open a new one**, then check that it worked:
   ```
   opencode --version
   ```

### Common Windows problems

- **`npm` is not recognized:** Node.js was installed while RStudio was open. Close RStudio fully and reopen it.
- **"running scripts is disabled on this system":** PowerShell is blocking `npm`. Either run this once and try again:
  ```
  Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
  ```
  or go to **Tools → Global Options → Terminal**, set *New terminals open with* to **Command Prompt**, and open a new terminal.
- **Managed work laptops** often block installations entirely. Use a personal laptop if you can.

---

## Starting OpenCode (Mac and Windows)

1. Open your RStudio **project** first, so the Terminal starts in the project folder. That folder is the one OpenCode will work on.
2. In the Terminal, type:
   ```
   opencode
   ```
3. Type `/models` and choose the free model announced in class. No account is needed.
4. *Optional:* if you pay for Claude, ChatGPT or Gemini, type `/connect` to use that model instead.
5. Check that OpenCode can reach R by asking it:
   > Run `Rscript -e "sessionInfo()"` and tell me what it shows.

   **Windows:** if `Rscript` is not found, ask OpenCode to find your R installation and fix it. It usually manages this on its own.
6. To quit, type `/exit` or press **Ctrl+C**.
