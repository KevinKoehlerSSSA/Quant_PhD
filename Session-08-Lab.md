# Session 8 lab: difference-in-differences

Today you replicate the main result of Cremaschi, Rettl, Cappelluti & De Vries (2025), "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy" (Lab A). Then you look at the data behind it (Lab B).

The data are in [`cremaschi_panel.csv`](cremaschi_panel.csv), prepared from the authors' replication package. It has one row per municipality and national election (2001, 2006, 2008, 2013, 2018).

Work in pairs. After the lab, add one line to your `log.md`: something the agent got wrong, or claimed to have done, and how you caught it.

---

## Lab A: replicate the DiD

### Step 1: data and working directory

Download [`cremaschi_panel.csv`](cremaschi_panel.csv) into the `Data` folder of your course project folder. Then check in the R console that R is looking at the course folder:

```r
getwd()                 # should print the path to your course folder
list.files("Data")      # should list cremaschi_panel.csv
```

If `getwd()` points somewhere else, set it to your course folder:

```r
setwd("~/Documents/Quant_PhD")   # Mac/Linux: replace with the path to your folder
```

> **Windows users:** R does not accept single backslashes in paths. Either use forward slashes, `setwd("C:/Users/yourname/Documents/Quant_PhD")`, or double the backslashes, `setwd("C:\\Users\\yourname\\Documents\\Quant_PhD")`. Copying the path from File Explorer gives single backslashes, so change them before running the line.

If you opened the course as an RStudio project (`.Rproj`), the working directory is already set.

### Step 2: OpenCode in the same folder, with the current AGENTS.md

OpenCode must work in the same folder as R, otherwise it will not find `Data/` and will write the script somewhere else.

- **Terminal (RStudio Terminal tab):** type `pwd` and check that it prints your course folder. If not, move there with `cd` (for example `cd ~/Documents/Quant_PhD`) and start `opencode` again.
- **Desktop app:** open the course folder as the project.

Make sure you use the current version of `AGENTS.md`. To be sure, download [the one in this repository](AGENTS.md) and overwrite your local copy in the course folder. Then type `/new` in OpenCode so that it starts a new session and reads the new file.

### Step 3: run the prompt

Paste the prompt into OpenCode. Use *Plan* mode first (`Shift+Tab` in the terminal, `Tab` in the desktop app), read the plan, then switch to *Build* and let it run.

```text
Write scripts/lab_did.R. Load Data/cremaschi_panel.csv (Cremaschi et al. 2025): one row per municipality (id) and national election (year: 2001, 2006, 2008, 2013, 2018); treated = 1 if affected by the 2010 reform; farright = far-right vote share (0-1); pop2008 = population 2008. Report rows, municipalities, treated municipalities. (1) Mean farright by year for treated and controls, and the 2x2 DiD of the means before (2001-08) and after (2013-18). (2) TWFE: farright on treated x post (2013, 2018), municipality and year fixed effects, SEs clustered by municipality (fixest). (3) Event study: treated x each election, 2008 = reference; plot with 95% intervals. Run it.
```

### Step 4: open the script in R and examine it

Open `scripts/lab_did.R` in RStudio and read it line by line.

- **Does it do what it is supposed to do?** Check each part against the prompt. Is "post" 2013 and 2018, and not only 2018? Is 2008 the reference year in the event study? Are the standard errors clustered by municipality?
- **Does it run?** Clear the environment and run the whole script yourself (`Ctrl/Cmd+Shift+Enter`). Do not rely on the agent saying that it ran.

Then check the output against known values. Do not ask the agent.

1. Does the data have 39,820 rows, 7,964 municipalities and 5,174 treated municipalities?
2. Is the TWFE estimate 0.015 (SE 0.001), as in Table 1 of the paper?
3. Is the 2018 event-study coefficient about 0.019, as in Figure 2a?

### Step 5: interpret

Write one or two sentences each.

- **The 2x2 DiD:** what is being compared with what? What does the number mean in percentage points?
- **The TWFE estimate:** how does it compare with the 2x2 DiD, and why?
- **The event study:** what do the 2013 and 2018 coefficients say about the effect of the reform? What do the 2001 and 2006 coefficients say about the years *before* the reform?

---

## Lab B: look at the data

### Step 1: run the prompt

In the same OpenCode session, paste the prompt (Plan first, then Build).

```text
Add to scripts/lab_did.R: make a data frame with one row per municipality containing treated, pop2008, before (mean far-right share 2001-2008), after (mean 2013-2018) and change (after minus before). Draw three scatterplots, treated municipalities in red and controls in blue: (1) after (y) against before (x), with the 45-degree line; (2) after (y) against log(pop2008) (x), with vertical lines at 3,000 and 5,000 inhabitants; (3) change (y) against log(pop2008) (x), with the same vertical lines, adding the mean change in bins of about 80 municipalities sorted by population. Label the population axis in inhabitants. Run it.
```

### Step 2: open the script in R and examine it

Open `scripts/lab_did.R` again and read the new part.

- **Does it do what it is supposed to do?** Are "before" and "after" the right averages? Is the population axis labelled in inhabitants, not in logs? Are the vertical lines at 3,000 and 5,000? Are the bins built from municipalities sorted by population?
- **Does it run?** Run the whole script yourself, from a clean environment.

### Step 3: examine and interpret the three plots

Describe each plot in one sentence, without asking the agent:

1. **Plot 1 (after against before):** where are the red and the blue points? Mostly above or below the 45-degree line?
2. **Plot 2 (after against population):** where are the red and the blue points? Do they overlap anywhere?
3. **Plot 3 (change against population):** how does the change vary with population? Is there a jump at 5,000 inhabitants?

Then answer together:

- **What do the plots tell us?** What do the treated and the control municipalities look like, and how did their vote change?
- **Does the identification assumption hold?** DiD assumes that, without the reform, treated and control municipalities would have followed parallel trends. Do the plots make that assumption believable? Be ready to explain your answer to the class.
