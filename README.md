# Quantitative Methods

**PhD Human Rights, Global Politics, and International Studies · Sant'Anna School of Advanced Studies · AY 2026/27**

**[Course reader](Course-Reader.pdf)**: the main reading for the course, in plain language, built around four published studies. It covers Sessions 1–8 (identification, inference, regression, logistic regression, panel data, multilevel models and difference-in-differences).

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

---

## Schedule

| Session | Date | Time | Room | Topic |
|---|---|---|---|---|
| 1 | Wed 21 Oct 2026 | 11:00–13:00 | Palazzo Pilo Boyl, Aula 3 | Causal identification and inference |
| 2 | Fri 23 Oct 2026 | 11:00–13:00 | Palazzo Pilo Boyl, Aula 1 | Hypothesis tests and confidence intervals |
| 3 | Fri 30 Oct 2026 | 11:00–13:00 | Palazzo Pilo Boyl, Aula 1 | Linear regression (OLS) I |
| 4 | Tue 3 Nov 2026 | 11:00–13:00 | Palazzo Pilo Boyl, Aula 2 | Linear regression (OLS) II |
| 5 | Tue 17 Nov 2026 | 11:00–13:00 | Palazzo Pilo Boyl, Aula 2 | Binary outcomes |
| 6 | Tue 24 Nov 2026 | 14:00–16:00 | Sede Centrale, Aula 2 | Panel data: within and between, pooling |
| 7 | Tue 24 Nov 2026 | 16:00–18:00 | Palazzo via Maffi, Aula 3 EMbeDS | Multilevel data |
| 8 | Tue 1 Dec 2026 | 14:00–16:00 | Sede Centrale, Aula 2 | Matching and difference-in-differences |
| 9 | Wed 9 Dec 2026 (to be confirmed) | 11:00–13:00 | To be announced | Quantitative approaches in International Law I |
| 10 | Wed 16 Dec 2026 (to be confirmed) | 11:00–13:00 | To be announced | Quantitative approaches in International Law II |

Sessions 6 and 7 are back to back in two different buildings.

## Readings

The **[course reader](Course-Reader.pdf)** is the main reading for each session. It explains the material in plain language with four examples, introduced in Section 1: Goldsmith & Horiuchi (2012) throughout Parts I–IV, Acemoglu et al. (2008) for panel data, Gelman & Hill (2007) for multilevel models and Cremaschi et al. (2025) for difference-in-differences. The page numbers below refer to the reader. The other readings listed for each session are background: read them to go deeper or to see the same material in the language of the field.

---

## Module I: Fundamentals of Statistical Reasoning

### Session 1: Causal Identification and Inference

*Wed 21 Oct 2026, 11:00–13:00, Palazzo Pilo Boyl, Aula 3*

**Topics**

- Why quantitative methods? Causal identification and statistical inference
- Random variables
- Discrete and continuous distributions
- Normal and binomial distributions
- Law of Large Numbers
- Central Limit Theorem (intuition)
- Working with an AI coding agent: specify, run, verify

**Main reading**

- [Course reader](Course-Reader.pdf): How to use this guide, Section 1 and Part I (Identification), plus Sections 5–6 of Part II (pp. 7–25).

**Background readings**

- Keele (2015), Sections 1–3.
- Dean & Illowsky (2018), Chapters 3–7.
- Imai (2017), Chapter 6.
- Keele, Stevenson & Elwert (2020).
- Dowding & Miller (2026).

**Materials**

- [Slides session 1](Session-01-plain.pdf)
- [Lab prompts](Lab-prompts.md)

### Session 2: Hypothesis Testing and Confidence Intervals

*Fri 23 Oct 2026, 11:00–13:00, Palazzo Pilo Boyl, Aula 1*

**Topics**

- Sampling distributions
- Standard errors
- Confidence intervals
- Hypothesis testing
- Type I and Type II errors

**Main reading**

- [Course reader](Course-Reader.pdf): Part II (Inference), Sections 7–10 (pp. 26–38).

**Background readings**

- Dean & Illowsky (2018), Chapters 8–10.
- Imai (2017), Chapter 7.

**Materials**

- [Slides session 2](Session-02-plain.pdf)
- [Lab prompts](Lab-prompts.md#session-2-confidence-intervals-and-hypothesis-tests)
- Annotated Lab A scripts (line-by-line explanations of five submitted scripts): [Ikram](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Ikram_annotated.html), [Samuele](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Samuele_annotated.html), [Ksenia](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Ksenia_annotated.html), [Matilde](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Matilde_annotated.html), [Mohammad](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Mohammad_annotated.html)
- [Updated AGENTS.md](AGENTS.md): replace the copy in your project folder and type `/new`

---

## Module II: Regression

### Session 3: Linear Regression (OLS) I

*Fri 30 Oct 2026, 11:00–13:00, Palazzo Pilo Boyl, Aula 1*

**Topics**

- OLS as conditional expectation
- Interpretation of coefficients
- The sampling distribution of the slope

**Main reading**

- [Course reader](Course-Reader.pdf): Part III (Regression), Sections 11–12 (pp. 39–43).

**Background readings**

- Dean & Illowsky (2018), Chapter 12.
- Imai (2017), Chapter 4.

**Replication exercise: OLS**

Goldsmith, Benjamin E., and Yusaku Horiuchi. 2012. "In Search of Soft Power: Does Foreign Public Opinion Matter for US Foreign Policy?" *World Politics* 64 (3): 555–585. [doi:10.1017/S0043887112000123](https://www.cambridge.org/core/journals/world-politics/article/in-search-of-soft-power-does-foreign-public-opinion-matter-for-us-foreign-policy/0C9DB5A0FB1EF43767932DE4E2C4DCEF)

Replication data: [github.com/joshuaalley/cross-sectional-ols](https://github.com/joshuaalley/cross-sectional-ols)

**Materials**

- [Slides session 3](Session-03-plain.pdf)

### Session 4: Linear Regression (OLS) II

*Tue 3 Nov 2026, 11:00–13:00, Palazzo Pilo Boyl, Aula 2*

**Topics**

- Holding other things constant: multiple regression and controls
- Assumptions of OLS, sorted into identification and inference problems
- Omitted variable bias
- Diagnostics

**Main reading**

- [Course reader](Course-Reader.pdf): Part III (Regression), Sections 13–18 (pp. 44–50).

**Background readings**

- Dean & Illowsky (2018), Chapter 12.
- Imai (2017), Chapter 4.

### Session 5: Binary Outcomes

*Tue 17 Nov 2026, 11:00–13:00, Palazzo Pilo Boyl, Aula 2*

**Topics**

- Limitations of linear probability models
- Logistic regression
- Interpretation of log-odds and marginal effects

**Main reading**

- [Course reader](Course-Reader.pdf): Part IV (Logistic regression), Sections 19–27 (pp. 51–66).

**Background readings**

- Menard (2008), Chapters 1–3.
- Kennedy & Waggoner (2021), Chapter 7 (Binary Response Models).
- De Bruin, Erica. 2018. "Preventing Coups d'état: How Counterbalancing Works." *Journal of Conflict Resolution* 62 (7): 1433–58. [doi:10.1177/0022002717692652](https://doi.org/10.1177/0022002717692652). A second published example of logistic regression.

**Replication exercise: binary outcome models**

Goldsmith & Horiuchi (2012), Table 3 (Models 1–4): probit models of two yes/no outcomes, whether a country sent troops to Iraq and whether it signed an Article 98 agreement with the United States. We re-estimate them as logit and probit models and compare them with the linear probability model.

Replication data: [github.com/joshuaalley/cross-sectional-ols](https://github.com/joshuaalley/cross-sectional-ols) (the same data as Sessions 3–4).

**Materials**

- [Slides session 5](Session-05-plain.pdf)

---

## Module III: Panel and Multilevel Data

### Sessions 6–7: Panel and Multilevel Data

*Tue 24 Nov 2026. Session 6: 14:00–16:00, Sede Centrale, Aula 2. Session 7: 16:10–18:00, Palazzo via Maffi, Aula 3 EMbeDS.*

**Topics**

- Recap: binary outcomes, the linear probability model and logit (Goldsmith & Horiuchi 2012)
- Why panels: non-independence (a challenge) and within variation (a strength)
- Within versus between variation
- Complete pooling (pooled OLS), no pooling (fixed effects) and partial pooling (random effects)
- From panels to multilevel data: varying intercepts and slopes, shrinkage

**Materials**

- [Slides sessions 6–7](Session-06-07-plain.pdf)
- [Lab prompts](Lab-prompts.md#sessions-67-panel-and-multilevel-data)
- Data (save them in your project's `Data` folder): [ajry_analysis.csv](ajry_analysis.csv) (Lab A), [polls88.csv](polls88.csv) (Lab B), [schools.csv](schools.csv) (invented students-in-schools example, Part 5)
- Example code: [session67_labA.R](session67_labA.R) (three panel models), [session67_schools.R](session67_schools.R) (complete, no and partial pooling with the schools example), [session67_labB.R](session67_labB.R) (Lab B: three models of the 1988 polls)

**Lab A: three models, one table**

Acemoglu, Daron, Simon Johnson, James A. Robinson, and Pierre Yared. 2008. "Income and Democracy." *American Economic Review* 98 (3): 808–42. [doi:10.1257/aer.98.3.808](https://doi.org/10.1257/aer.98.3.808)

945 country-periods in 150 countries, 1960–2000. Democracy (Freedom House, 0–1) on last period's log GDP per capita: pooled OLS, random effects and country fixed effects, and what each model compares.

**Lab B: what does each state think?**

Gelman, Andrew, and Jennifer Hill. 2007. *Data Analysis Using Regression and Multilevel/Hierarchical Models*. Cambridge University Press, chapter 14. Data from the book's archive: [sites.stat.columbia.edu/gelman/arm/software](https://sites.stat.columbia.edu/gelman/arm/software/) (file election88/polls.subset.dat, the last CBS/New York Times poll before the 1988 presidential election).

2,015 decided respondents in 49 states. Support for Bush on race and sex: complete pooling, no pooling (state fixed effects) and partial pooling (varying state intercepts), and which state estimates to believe.

**Main reading**

- [Course reader](Course-Reader.pdf): Part V (Panel data), Sections 28–31 (pp. 67–73), and Part VI (Multilevel data), Sections 38–43 (pp. 79–87). Sections 32–37 (year effects, clustered standard errors, causality) are optional.

**Background readings**

- Frees (2004), Chapters 1–3 and 5.
- Bell, Andrew, and Kelvyn Jones. 2015. "Explaining Fixed Effects: Random Effects Modeling of Time-Series Cross-Sectional and Panel Data." *Political Science Research and Methods* 3 (1): 133–53.
- Clark, Tom S., and Drew A. Linzer. 2015. "Should I Use Fixed or Random Effects?" *Political Science Research and Methods* 3 (2): 399–408.
- Gelman & Hill (2007), Chapters 11–14.

---

## Module IV: Causal Inference

### Session 8: Matching and Difference-in-Differences

*Tue 1 Dec 2026, 14:00–16:00, Sede Centrale, Aula 2*

**Topics**

- Back to identification: potential outcomes, causal diagrams and back-door criteria, ATE/ATT
- Matching as design tool (propensity scores; weighting)
- Counterfactual logic in observational data
- Difference-in-Differences intuition and assumptions
- Event-study visualization of dynamic treatment effects
- Replication and critique: Cremaschi, Rettl, Cappelluti & De Vries (2025) on public services and the far right in Italy. Does the control group stand in for the treated?

**Main reading**

- [Course reader](Course-Reader.pdf): Part VII (Difference-in-differences), Sections 44–51 (pp. 88–97), with Part I (Identification, pp. 13–22) as a refresher.

**Replication paper**

- Cremaschi, Rettl, Cappelluti & De Vries (2025), "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy." Data: `cremaschi_panel.csv` (prepared from the authors' replication package).

**Background readings**

- Huntington-Klein (2025), Chapters 5–8, 14 and 18.

---

## Module V: Quantitative Approaches in International Law

*Taught by Prof. Lorenzo Gasbarri. Details to be announced.*

### Session 9: *To be announced*

*Wed 9 Dec 2026 (to be confirmed), 11:00–13:00*

### Session 10: *To be announced*

*Wed 16 Dec 2026 (to be confirmed), 11:00–13:00*

---

## Logistics

### Software

All empirical exercises will be conducted in **R**. Code is written with an AI coding agent, **OpenCode** ([opencode.ai/download](https://opencode.ai/download)), an open-source agent available as a desktop app, in the terminal, or as an editor extension. OpenCode is free and comes with free models; participants with access to a commercial model (Claude, GPT, Gemini, or others) can connect it instead.

Please install the following before the first session:

1. [R](https://cran.r-project.org/)
2. [RStudio](https://posit.co/download/rstudio-desktop/)
3. [OpenCode](https://opencode.ai/download)

To use the MiniMax models with the course key, follow the [MiniMax setup guide](OpenCode_MiniMax_setup.pdf).

Participants must be able to explain every line they submit and justify every analytical choice in it. Participants are expected to use a reproducible workflow.

### Readings

- **Cremaschi, Simone, Paula Rettl, Marco Cappelluti, and Catherine E. De Vries.** 2025. "Geographies of Discontent: Public Service Deprivation and the Rise of the Far Right in Italy." *American Journal of Political Science* 69 (4): 1581–1599. [doi:10.1111/ajps.12936](https://doi.org/10.1111/ajps.12936)
- **Dean, Susan, and Barbara Illowsky.** 2018. *Introductory Statistics*. OpenStax, Rice University. Free online at [openstax.org](https://openstax.org/details/books/introductory-statistics).
- **Dowding, Keith, and Charles Miller.** 2026. "Explanatory Pluralism in Political Science." *Journal of Theoretical Politics* 38 (3): 159–176.
- **Frees, Edward W.** 2004. *Longitudinal and Panel Data: Analysis and Applications in the Social Sciences*. Cambridge University Press.
- **Huntington-Klein, Nick.** 2025. *The Effect: An Introduction to Research Design and Causality*. Boca Raton, FL: CRC Press. Free online at [theeffectbook.net](https://theeffectbook.net).
- **Imai, Kosuke.** 2017. *Quantitative Social Science: An Introduction*. Princeton University Press.
- **Keele, Luke.** 2015. "The Statistics of Causal Inference: A View from Political Methodology." *Political Analysis* 23 (3): 313–335.
- **Keele, Luke, Randolph T. Stevenson, and Felix Elwert.** 2020. "The Causal Interpretation of Estimated Associations in Regression Models." *Political Science Research and Methods* 8 (1): 1–13.
- **Kennedy, Ryan, and Philip Waggoner.** 2021. *Introduction to R for Social Scientists: A Tidy Programming Approach*. Chapman & Hall/CRC.
- **Menard, Scott W.** 2008. *Applied Logistic Regression Analysis*. Thousand Oaks, CA: Sage Publications.
