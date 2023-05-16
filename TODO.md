* Find out how to "unload" the model from memory (ps: we load the modle twice to set its number of gpu layers, but never unload the 1st one)
* Create a custom chain better than refine:
  * Load as many sources as context size allows
  * Ask question, indicating that:
    * new sources may be irrelevant
  * Ask how complete the new answer is. If complete, stop. If not, loop with new context.
