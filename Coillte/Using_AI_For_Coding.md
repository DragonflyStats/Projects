### Using Voice-to-Text and AI Tools for Coding & Documentation

Using voice-to-text software—particularly mobile apps—has become incredibly convenient, with many free and widely available options. This means you can speak into your phone and dictate whatever you’re thinking. For instance, if you're out walking for half an hour, you can verbally explore your ideas in detail.

You should aim to speak naturally, using as much technical jargon or vernacular as needed. By the end of the session, you’ll likely have a sizable chunk of text saved in your app. Transferring this text to a more permanent location is usually straightforward.

Initially, however, the captured text will be quite unstructured. That’s where AI comes in. You can input this raw text into a tool like **Copilot** or another AI assistant to clean it up. At first, the output might struggle with spelling, context, or terminology—so you’ll probably need to review and edit it. But over time, as you provide more examples and context, the AI will start to recognize key terms, technical phrases, and even brand or software names—like "DB Player"—and apply that understanding to tidy up your content more effectively.

This method allows you to generate a high volume of content rapidly. The real work then becomes editing—refining the text, reducing duplication, and making it concise and useful. The same applies to code: rather than spending hours crafting the initial draft, use tools to generate the bulk and then invest your energy in improving its quality.

### Enhancing Code with Copilot

Copilot can also help refactor code—improving not just its structure, but also its documentation. It’s a good practice to include sufficient comments so your scripts are easier to understand, especially when relating one script to another, or tying it to a dataset or folder structure.

You can also use Copilot to remove redundant or outdated code. For example, some of your older code written with `case_when` might be automatically reformatted using newer tidyverse conventions—resulting in cleaner, more readable, and better-documented scripts. Adding unit tests and annotations about input sources from the prototyping phase can also boost clarity.

Given the complexity of your projects—which often span numerous data sources and scripts—a **modular coding approach** is ideal. It allows for flexibility, particularly when drastic changes are needed. Identifying which scripts or data pipelines are affected and managing those dependencies becomes much more manageable.

### AI Pitfalls & the Importance of Validation

Of course, AI isn't perfect. One critical issue is **hallucination**—AI tools may fabricate package names or functions. It’s up to you to verify outputs and maintain a feedback loop. By providing additional context or examples during future interactions, the AI becomes more accurate in its responses.

Tools like Copilot are also helpful for **interpreting error messages** and debugging, especially when they already understand the datasets and code you’re working with. That said, sometimes Copilot may introduce bugs in the first place, so careful validation is essential.

In short: take a patient, iterative approach. When used thoughtfully, these tools can dramatically accelerate your workflow and raise the quality of your work.


---

### Good Coding Vocabulary and Evolving Practices

Improving your general knowledge of R packages is essential, and it extends well beyond just working with documents. In the context of document processing, this includes packages that extend **ggplot2**, such as those for working with maps and chart files—*terra*, *sf*, and others.

Additionally, there are R packages dedicated to working with **dates and times**, as well as tools for **image manipulation** and **optical character recognition (OCR)**. One notable example is the *tesseract* package, which enables OCR functionality in R.

When it comes to AI tools, I prefer to focus on those likely to be accessible to most people in the near future. Examples include **Gemini** and **Microsoft Copilot**, which are rapidly becoming integrated into everyday workflows.

---

### Prompt Engineering and AI Use

Prompt engineering—especially when working with AI and large language models (LLMs)—requires discipline. You must ask **clear, specific, and structured questions** to get the best results. While these tools can produce a significant amount of text, that in itself creates a new problem: an **overabundance** of content that needs editing and refinement.

AI tools are particularly useful for revisiting old R script files. They help with **adding comments, reformatting code, and aligning with updated coding conventions**. One interesting consequence is that context files and collaborative work now encourage teams to align on shared coding styles and standards.

---

### Coding Styles and Team Collaboration

Even within frameworks like the **tidyverse**, people develop distinctive coding idioms. While individual style is fine, collaboration highlights the need for consistency. AI tools help reinforce this by making us more mindful of how we **structure code, document functions, and adhere to team conventions**.

In my own case, code reviews weren’t something I practiced historically—if the R script worked, it was considered “good enough.” But as we've moved toward sharing context files and collaborating more deeply, **agreed standards have become increasingly important**.

While this shift may feel natural for software engineers—where code review is standard—it’s a new challenge for many data scientists who come from backgrounds like mathematics or statistics, where team-based coding is more ad hoc.

---

### Personal Style and Visual Communication

A small but personal example: I prefer to **color-code my outputs**. It’s part visual clarity, part personal satisfaction. People can often recognize one of my tables immediately just by the attention I put into palette choices and styling. It might trace back to my upbringing—both of my parents were teachers—so I treat presentation and clarity with a certain level of seriousness.

---


