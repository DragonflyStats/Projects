Absolutely! Here's a cleaned-up version of your talk that retains your tone and content while making it smoother and easier to follow:

---

**Title: Integrating AI into Workflow: A Personal Perspective**

Today, I’ll be sharing how I integrate AI into my workflow—a topic that’s becoming increasingly important for data scientists. I believe this technology will *revolutionize* how we work over the next few years.

There are plenty of AI interfaces—such as ChatGPT clients, Google tools, and packages like the `elmR` R package—that can be used to build advanced interactions. That said, I won’t cover those today. They’re worthy of a full talk on their own. Instead, I’ll focus on how I use AI in practice, with a fairly streamlined setup.

At work, we operate in an enterprise environment using Microsoft’s ecosystem. We have Microsoft Copilot as part of a broader enterprise system, and while there are things I’d improve, overall it works quite well.

The core of my process involves prompt engineering. I work with an interface that allows for prompts of up to 8,000 characters—which is generous. To support this, I use what I call “context files.” These are essentially simple text files (often `.txt`) that contain explanations of datasets—data types, primary and foreign keys, relationships between columns, data dictionaries, schema diagrams, and so on.

I also include successful code snippets I've run in the past. By sharing a couple of these files in my initial prompts, I give Copilot a sense of what I need, and it typically responds very effectively. When it generates high-quality outputs, I save them back into the context store for future use.



---


**Title: Integrating AI into My Workflow**

Today’s talk is titled *“Integrating AI into My Workflow”*—a topic that’s becoming increasingly important for data scientists. I genuinely believe this will revolutionize how we work over the coming years.

There are a number of AI interfaces, clients, and tools—like OpenAI, Google tools, and R packages such as `elmR`—that can be integrated. I won’t be diving into those today. They deserve a talk of their own. Instead, I’ll focus on how I personally use AI in my setup, which is fairly straightforward.

In our company, we use an enterprise-level Microsoft setup, including Microsoft Copilot. While there are aspects I’d change, overall, it works well.

At the core of my workflow is prompt engineering. The desktop interface allows input up to 8,000 characters, which is quite generous. To make the most of this, I rely on what I call *context files*—simple text files (often `.txt` or `.R`) that include descriptions of datasets, data types in columns, relationships between fields, primary and foreign keys, dictionaries, and more.

These files also include snippets of successful code I’ve used in the past. By including one or two of these context files with my initial prompts, I give Copilot the background it needs—and the results are usually excellent. If I get a really good output, I’ll save it into the context store for next time.


---

#### Unit Tests

One of the things I particularly value is the ability to embed unit tests and quality controls into the generated code. This setup evolved partly from my frustration with how opaque some other tools' syntax validators are—R, by contrast, gives me far more transparency.

I approached AI with some skepticism—and I still think it’s wise to be cautious. Don’t expect it to get things right on the first try. But if you give it context and structure, it can deliver high-quality output. That’s why I place emphasis on unit testing, exception handling, and clarity of logic.

For example, if one row in a dataset contradicts another, AI can often spot that quickly—something that would’ve taken far longer by hand.


---

One strength of this setup is that it allows me to include unit tests and quality checks right within my workflow. I’ve developed this approach partly because AI syntax suggestions can be opaque—whereas my R-based setup provides more transparency.

At first, I approached AI with healthy skepticism. I didn’t expect it to deliver flawless results immediately—and that’s still true. But when provided with the right context and input, AI tools can generate excellent results. I emphasize unit testing, exception handling, and error checking as core components of responsible code generation.

AI also helps detect contradictions in relational databases, identifying inconsistencies across rows quickly and effectively.


---

### Personnal Use

I do use tools like Gemini and Copilot personally—but I’m cautious. I never input sensitive work-related information or proprietary data into them. For example, I won’t even use standard geographic codes for counties if they relate to internal datasets.

However, for general, anonymized examples and templates, these tools are quite useful. They’re particularly handy for converting unstructured text into spreadsheet-ready formats. One minor frustration is that tools like Copilot and R don’t always handle table rendering gracefully—often requiring an extra step to export as CSV when all I want is a quick table.

Lastly, I’d planned to talk about some of the newer OpenAI tools, but I’m still early in my journey with them. Rather than speak prematurely, I’ll leave that as an open invitation: if anyone else has explored those tools and is keen to present—please do!

---

As for tools like Gemini and Copilot for personal use—I do use them, but not for work-related tasks. I never put proprietary or sensitive data into those platforms. For instance, even though certain geographical codes are publicly standardized, we avoid using them if they relate to internal data.

That said, when examples are kept general and abstract, I’ve found that both Microsoft Copilot and Gemini are useful.

One handy use: formatting unstructured text into spreadsheets. I find Copilot and R can struggle to output properly formatted tables—you often end up needing to save as a CSV and download it just to get what you need. It’s a bit of a pain if all you want is a single table.

Finally, I had considered discussing some of the newer OpenAI tools. But honestly, I’m still early in my own journey with them, so I’ll hold off for now. That said, it’s an exciting space—and maybe one of you might pick it up and give a talk yourself. Consider that a friendly nudge!


**On Lateral Thinking and AI in the Data Science Workflow**

One of the most valuable skills to develop as a data scientist—especially when it comes to coding—is **the ability to think laterally**. Often, the most elegant solutions are the brutally simple ones. That’s one reason I appreciate working with AI: it has a way of intuitively leaning into unconventional but effective approaches. 

In fact, AI often suggests ideas I wouldn’t have thought of myself, and in doing so, it helps train my own thinking. It encourages unusual, creative paths to solutions—what I like to think of as *lateral approaches to lateral problems*.

Let me share a quick example. I was automating the population of pre-formatted documents. Replacing individual bits of text was easy enough. But replacing a table was more nuanced, especially since those tables varied in row count—some had four rows, others six or seven.

A clever workaround: standardize the number of rows by padding shorter tables with blank rows. That way, the template doesn’t break, and the operation runs smoothly. It’s a simple fix that solves a potentially frustrating formatting issue. This is the sort of subtle, practical trick AI can inspire.

Tools help, of course—but the next layer is developing your own thinking. AI can accelerate your coding, but your *judgment* is what sets great work apart. Developing better instincts—catching data quality issues early, anticipating edge cases, building testability into your code—is where real craftsmanship lies.

Before I fully dive into today’s talk, I want to emphasize something: AI isn’t just a trend. It’s **an ongoing shift** in how we work. To make the most of it, we need to grow alongside it—expand our “code vocabulary,” learn new paradigms, explore more packages and tools. The broader your toolkit, the more versatile and impactful your solutions will become.

---

Let me know if you’d like this turned into an opening for a talk, or woven into your existing presentation. It would be a strong transition into the practical section! 🧠✨
