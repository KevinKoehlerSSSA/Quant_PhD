# Quantitative Methods

**PhD Human Rights, Global Politics, and International Studies · Sant'Anna School of Advanced Studies · AY 2026/27**

| Instructor | Email |
|---|---|
| Prof. Kevin Koehler | kevin.koehler@santannapisa.it |
| Prof. Lorenzo Gasbarri | lorenzo.gasbarri@santannapisa.it |

---

## Course description

This course provides an introduction to the logic and practice of quantitative research in the social sciences. It is specifically designed for an interdisciplinary PhD cohort and emphasizes conceptual foundations and practical application rather than mathematical background. A central feature of the course is the replication of published quantitative research in Political Science and International Law, allowing participants to engage directly with how empirical findings are produced, evaluated, and reproduced in these fields. It does not presuppose prior statistical training.

The course proceeds in five modules. We begin with the **probabilistic foundations of statistical inference**, covering distributions, sampling theory, hypothesis testing, and confidence intervals, and applying these concepts through the replication of core empirical results. We then move to **regression modeling**, examining both linear and binary outcome models and clarifying the assumptions required for meaningful interpretation, again grounded in replication exercises. The third module introduces **panel data methods**, focusing on fixed and random effects models and the challenges posed by temporal dependence, with applications drawn from published research. The fourth module addresses **causal inference**, emphasizing the potential outcomes framework, matching, and difference-in-differences strategies, and assessing their implementation in existing studies. The final module turns to **quantitative approaches in International Law**, examining how empirical methods have been brought to bear on legal questions and materials.

Throughout, the course stresses:

- The probabilistic logic underlying inference.
- The connection between research design and identification.
- The interpretation and limitations of statistical models.
- Reproducible workflows in R and the efficient use of agentic AI.

Participants will leave the course able to critically evaluate quantitative research and implement core empirical strategies in their own work.

## Learning objectives

By the end of the course, participants will be able to:

- Interpret confidence intervals and hypothesis tests correctly.
- Estimate and interpret OLS and logistic regression models.
- Analyze panel data using fixed and random effects models.
- Understand the logic of experimental and quasi-experimental designs.
- Critically assess identification strategies in published research.
- *[Learning objectives for Module V to be added]*

---

## Module I: Fundamentals of Statistical Reasoning

### Session 1: Causal Identification and Inference

**Topics**

- Why quantitative methods? Causal identification and statistical inference
- Random variables
- Discrete and continuous distributions
- Normal and binomial distributions
- Law of Large Numbers
- Central Limit Theorem (intuition)
- Working with an AI coding agent: specify, run, verify

**Required readings**

- Keele (2015), Sections 1–3.
- Dean & Illowsky (2018), Chapters 3–7.
- Imai (2017), Chapter 6.

**Recommended readings**

- Keele, Stevenson & Elwert (2020).
- Dowding & Miller (2026).

### Session 2: Hypothesis Testing and Confidence Intervals

**Topics**

- Sampling distributions
- Standard errors
- Confidence intervals
- Hypothesis testing
- Type I and Type II errors

**Required readings**

- Dean & Illowsky (2018), Chapters 8–10.
- Imai (2017), Chapter 7.

---

## Module II: Regression

### Session 3: Linear Regression (OLS)

**Topics**

- OLS as conditional expectation
- Interpretation of coefficients
- Assumptions of OLS
- Omitted variable bias
- Diagnostics

**Required readings**

- Dean & Illowsky (2018), Chapter 12.
- Imai (2017), Chapter 4.

**Replication exercise: OLS**

Goldsmith, Benjamin E., and Yusaku Horiuchi. 2012. "In Search of Soft Power: Does Foreign Public Opinion Matter for US Foreign Policy?" *World Politics* 64 (3): 555–585. [doi:10.1017/S0043887112000123](https://www.cambridge.org/core/journals/world-politics/article/in-search-of-soft-power-does-foreign-public-opinion-matter-for-us-foreign-policy/0C9DB5A0FB1EF43767932DE4E2C4DCEF)

Replication data: [github.com/joshuaalley/cross-sectional-ols](https://github.com/joshuaalley/cross-sectional-ols)

### Session 4: Binary Outcomes

**Topics**

- Limitations of linear probability models
- Logistic regression
- Interpretation of log-odds and marginal effects

**Required readings**

- Menard (2008), Chapters 1–3.
- Kennedy & Waggoner (2021), Chapter 7 (Binary Response Models).

**Replication exercise: logistic regression**

De Bruin, Erica. 2018. "Preventing Coups d'état: How Counterbalancing Works." *Journal of Conflict Resolution* 62 (7): 1433–58. [doi:10.1177/0022002717692652](https://doi.org/10.1177/0022002717692652)

Replication data: available on the [journal website](https://journals.sagepub.com/doi/abs/10.1177/0022002717692652).

---

## Module III: Panel Data

### Session 5: Fixed Effects and Random Effects

**Topics**

- Structure of panel data
- Unobserved heterogeneity
- Fixed effects (within estimator)
- Random effects
- Hausman logic

**Required readings**

- Frees (2004), Chapters 1–3.

### Session 6: Dynamic Panels and Time Dependence

**Topics**

- Lagged dependent variables
- Serial correlation
- Autocorrelation in panels
- Brief introduction to dynamic panel bias

**Required readings**

- Frees (2004), Chapter 8.

---

## Module IV: Causal Inference

### Session 7: Identification

**Topics**

- Potential outcomes framework
- Identification logic
- Causal diagrams and back-door criteria
- Average Treatment Effects (ATE/ATT)

**Required readings**

- Huntington-Klein (2025), Chapters 5–8.

### Session 8: Matching and Difference-in-Differences

**Topics**

- Matching as design tool (propensity scores; weighting)
- Counterfactual logic in observational data
- Difference-in-Differences intuition and assumptions
- Event-study visualization of dynamic treatment effects

**Required readings**

- Huntington-Klein (2025), Chapters 14 and 18.

---

## Module V: Quantitative Approaches in International Law

*Taught by Prof. Lorenzo Gasbarri. Details to be announced.*

### Session 9: *To be announced*

### Session 10: *To be announced*

---

## Logistics

### Assessment

- Problem sets (60%)
- Final empirical mini-project (40%)

### Software

All empirical exercises will be conducted in **R**. Code is written with an AI coding agent, **OpenCode** ([opencode.ai/download](https://opencode.ai/download)), an open-source agent available as a desktop app, in the terminal, or as an editor extension. OpenCode is free and comes with free models; participants with access to a commercial model (Claude, GPT, Gemini, or others) can connect it instead.

Please install the following before the first session:

1. [R](https://cran.r-project.org/)
2. [RStudio](https://posit.co/download/rstudio-desktop/)
3. [OpenCode](https://opencode.ai/download)

Participants must be able to explain every line they submit and justify every analytical choice in it. Participants are expected to use a reproducible workflow.

### Readings

- **Dean, Susan, and Barbara Illowsky.** 2018. *Introductory Statistics*. OpenStax, Rice University. Free online at [openstax.org](https://openstax.org/details/books/introductory-statistics).
- **Dowding, Keith, and Charles Miller.** 2026. "Explanatory Pluralism in Political Science." *Journal of Theoretical Politics* 38 (3): 159–176.
- **Frees, Edward W.** 2004. *Longitudinal and Panel Data: Analysis and Applications in the Social Sciences*. Cambridge University Press.
- **Huntington-Klein, Nick.** 2025. *The Effect: An Introduction to Research Design and Causality*. Boca Raton, FL: CRC Press. Free online at [theeffectbook.net](https://theeffectbook.net).
- **Imai, Kosuke.** 2017. *Quantitative Social Science: An Introduction*. Princeton University Press.
- **Keele, Luke.** 2015. "The Statistics of Causal Inference: A View from Political Methodology." *Political Analysis* 23 (3): 313–335.
- **Keele, Luke, Randolph T. Stevenson, and Felix Elwert.** 2020. "The Causal Interpretation of Estimated Associations in Regression Models." *Political Science Research and Methods* 8 (1): 1–13.
- **Kennedy, Ryan, and Philip Waggoner.** 2021. *Introduction to R for Social Scientists: A Tidy Programming Approach*. Chapman & Hall/CRC.
- **Menard, Scott W.** 2008. *Applied Logistic Regression Analysis*. Thousand Oaks, CA: Sage Publications.
