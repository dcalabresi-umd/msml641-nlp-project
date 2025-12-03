# MSML 641 NLP Project

Repository for the MSML 641 Natural Language Processing course Project - Fall 2025

## Table of Contents

- [Students](#students)
- [Proposals](#proposals)
  - [1 - A/B Testing performance improvement based on NLP Techniques (A case for Upworthy Research Archive)](#1---ab-testing-performance-improvement-based-on-nlp-techniques-a-case-for-upworthy-research-archive)
    - [About the dataset](#about-the-dataset)
    - [About Upworthy](#about-upworthy)
  - [2 - Compare and Improve Evaluation Metrics for Agentic Answers Evaluation (Discarded)](#2---compare-and-improve-evaluation-metrics-for-agentic-answers-evaluation-discarded)
- [Literature Review](#literature-review)
  - [1 - Nate Matias Meta Analysis (2020)](#1---nate-matias-meta-analysis-2020)
  - [2 - Negativity drives online news consumption (2023)](#2---negativity-drives-online-news-consumption-2023)
  - [3 - Linguistic effects on news headline success: Evidence from thousands of online field experiments (2023)](#3---linguistic-effects-on-news-headline-success-evidence-from-thousands-of-online-field-experiments-2023)
  - [4 - Reading dies in complexity: Online news consumers prefer simple writing](#4---reading-dies-in-complexity-online-news-consumers-prefer-simple-writing)
  - [5 - Replacing an A/B Test with GPT (2023)](#5---replacing-an-ab-test-with-gpt-2023)
  - [Headline sentiment and topic effect on online user engagement (2021)](#headline-sentiment-and-topic-effect-on-online-user-engagement-2021)
  - [6 - Hypothesis Generation with Large Language Models (2024)](#6---hypothesis-generation-with-large-language-models-2024)
  - [7 - LOLA: LLM-Assisted Online Learning Algorithm (2024)](#7---lola-llm-assisted-online-learning-algorithm-2024)


## Students

- Damian Calabresi
- Jaeyeol You
- Hersh Rajesh Chawla

## Proposal

### A/B Testing performance improvement based on NLP Techniques (A case for Upworthy Research Archive)

#### About the dataset

**Upworthy Research Archive** is a dataset of headlines tested by Upworthy.com with simple A/B testing to measure the performance and "catchy" factor of different headlines for the same news articles.

[Upworthy Research Archive](https://upworthy.natematias.com/)

[Upworthy Research Archive - Research Paper](https://www.nature.com/articles/s41597-021-00934-7)

As cited from the website:
> "The Upworthy Research Archive is an open dataset of thousands of A/B tests of headlines conducted by Upworthy from January 2013 to April 2015."

It provides a list of news articles published, with different headlines tested for the same article. Each headline provides the number of impressions and clicks reached.

Upworthy Research Archive is a widely known dataset in the NLP and A/B Testing community, and it has been used in several research papers and projects.

The goals of this project is to:
- Do an analysis of the NLP techniques applied to predict the performance of a headline.
- Compare the performance of the different NLP techniques as well as the LLM-based ones.
- Try multiple classic NLP techniques ranging from bi-grams to BERT and evaluate their performance.
- Do a cost-benefit analysis between the different NLP techniques and the LLM-based ones, as well as the possibility to use open-source or pre-trained models to reduce cost of the implementation.

#### About Upworthy

Upworthy is a website that publishes news articles and videos. It became one of the biggest news websites in the United States around 2013/2014, known for the ability to create viral content and drive traffic to the website. It's popularity has been associated with the surge of Facebook and Twitter as social media platforms.

This is an Upworthy presentation about the methodology they applied to create viral content:

[Slideshare - How to make that one thing go viral? Just kidding!](https://www.slideshare.net/slideshow/how-to-make-that-one-thing-go-viral-just-kidding/15473996#1)

## Literature Review

The following is a list of research papers that apply NLP techniques to predict the performance of headlines using the Upworthy Research Archive dataset.

### 1 - Nate Matias Meta Analysis (2020)

The creator of this dataset has done a meta analysis as part of his Princeton University course:

[Github - Lecture 15 - Asking Questions of the Upworthy Archive](https://github.com/natematias/design-governance-experiments/blob/master/2020/lectures/Lecture%2015%20-%20Asking%20Questions%20of%20the%20Upworthy%20Archive.pdf)
[Github - Lecture 15 - Jupyter Notebook](https://github.com/natematias/design-governance-experiments/blob/master/2020/lecture-code/lecture-17-meta-analysis.R.ipynb)

### 2 - Negativity drives online news consumption (2023)

Summary of the research:

> Although positive words were slightly more prevalent than negative words, we found that negative words in news headlines increased consumption rates (and positive words decreased consumption rates). For a headline of average length, each additional negative word increased the click-through rate by 2.3%. Our results contribute to a better understanding of why users engage with online media.

[Nature - Negativity drives online news consumption](https://www.nature.com/articles/s41562-023-01538-4)
[Nieman Lab - Negative words in news headlines generate more clicks, but sad words are more effective than angry or scary ones](https://www.niemanlab.org/2023/03/negative-words-in-news-headlines-generate-more-clicks-but-sad-words-are-more-effective-than-angry-or-scary-ones/)

Techniques applied:
- Text mining: Running text was converted into lower-case and tokenized, and special characters (that is, punctuations and hashtags) were removed.
- Sentiment analysis done on the basis of the Linguistic Inquiry and Word Count (LIWC). The LIWC contains word lists classifying words according to both a positive and negative sentiment.
- Gunning Fog index for text complexity score.
- Multilevel binomial regression

### 3 - Linguistic effects on news headline success: Evidence from thousands of online field experiments (2023)

[PLOS ONE - Linguistic effects on news headline success: Evidence from thousands of online field experiments](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0281682)

**Hypothesis**

- Is it possible to attribute headline success to the linguistic features of headlines?
- A: The presence of positive-emotion words is negatively associated with headline success.
- B: The presence of negative-emotion words is positively associated with headline success.
- Length is positively associated with headline success.
- Higher readability is negatively associated with headline success.

Eight hypotheses were tested in total.

Techniques applied:
- Logistic regression
- Hypothesis word dictionaries for "indefinite article" category, first-person singular, etc.
- Linguistic Inquiry and Word Count (LIWC) for the positive and negative emotion categories.
- Flesch reading-ease score

### 4 - Reading dies in complexity: Online news consumers prefer simple writing

[Science - Reading dies in complexity: Online news consumers prefer simple writing](https://www.science.org/doi/full/10.1126/sciadv.adn2555)

**Hypothesis:** Writing that requires less effort to read will tend to be approached, liked, and engaged with.

Techniques applied:
- 24-item SDT paradigm to measure the reading difficulty of the headlines.

**Results:** Thousands of field experiments across traditional (i.e., The Washington Post) and nontraditional news sites (i.e., Upworthy) showed that news readers are more likely to click on and engage with simple headlines than complex ones.

### 5 - Replacing an A/B Test with GPT (2023)

[Count Bayesie - Replacing an A/B Test with GPT](https://www.countbayesie.com/blog/2023/3/23/replacing-an-ab-test-with-gpt)

**Hypothesis:** Can GPT predict the winner of an A/B test? Can AI replace A/B testing for headline selection to avoid waiting for results and wasting conversions on poor-performing variants?

Techniques applied:
- Three embedding approaches:
  - Bag-of-Words (bi-grams) with CountVectorizer
  - DistilBERT embeddings using Hugging Face Transformers library
  - GPT-3 embeddings using OpenAI embeddings API
- Logistic regression on the difference vector of embeddings (embedding_a - embedding_b)

**Results:** GPT-3 model achieved 87% accuracy on test set.

### Headline sentiment and topic effect on online user engagement (2021)

**Hypothesis**
The research main questions were:
- What is the relationship between sentiment and click rate?
- Which topics lead to a higher click rate?
- How do variations in headline phrasing (tone, subjectivity) affect user behavior?

The initial hypothesis was that headline content would have a significant effect on click rates, and that sentiment analysis could help identify the aspects responsible for causing increases in engagement.

### Techniques Applied
- **TextBlob**: Sentiment analysis to compute polarity (-1 to 1) and subjectivity (0 to 1) of headlines
- **Latent Dirichlet Allocation (LDA)**: Topic modeling using Gensim library
- **GSDMM:** Gibbs Sampling algorithm for the Dirichlet Multinomial Mixture Model
- **Text Preprocessing**:
  - Convert to lowercase and expand contractions
  - Remove numerical values and English stop words
  - Remove words shorter than 1 character
  - Lemmatization and Stemming
  - Bag-of-Words vectorization

### Results
- **Sentiment Analysis**: The sentiment of headlines (polarity and subjectivity) has little to no effect on click rate. A weak negative trend was observed between polarity and click rate, suggesting that negatively polarized headlines resulted in slightly higher click rates, but the effect was not significant.
- **Image Analysis**: The choice of image affected user click rates by approximately 65% (top image performed 65% better than worst image in each group).
- **Topic Coherence**: The GSDMM model achieved acceptable coherence scores (0.46183) when using the top 5 words per topic, but lower scores with more words.

### 6 - Hypothesis Generation with Large Language Models (2024)

Working with an LLM, generate initial hypotheses from a small number of examples and then update them iteratively to improve the quality of hypotheses.

[ACL Anthology - Hypothesis Generation with Large Language Models](https://aclanthology.org/2024.nlp4science-1.10/)

[Github - Hypothesis Generation](https://github.com/ChicagoHAI/hypothesis-generation)

**Hypothesis:** Can LLMs generate hypotheses or rules for classification?

Techniques applied:
- LLM as a hypothesis generator: From a small set of samples, the LLM generates a series of rules that could be used to classify the samples (E.g.: The presence of names is associated with a higher click rate)
- LLM as a classifier: The LLM is used to classify the samples using each hypothesis and adjust the reward value for each one.
- Upper Confidence Bound (UCB): Taken from multi-armed bandits, used to balance exploration and exploitation, and decide which hypothesis should be used and which ones should be discarded.

**Results:** HypoGeniC outperforms zero-shot classification by 5% and few-shot classification by 3.3% in accuracy.

### 7 - LOLA: LLM-Assisted Online Learning Algorithm (2024)

LOLA, integrates LLM predictions into a bandit algorithm. Found standalone LLM predictions were only slightly above chance, but LOLA outperformed traditional A/B tests and pure bandits in simulations.

[Marketing Science - LOLA: LLM-Assisted Online Learning Algorithm](https://pubsonline.informs.org/doi/10.1287/mksc.2024.0990)

[Arxiv - LOLA: LLM-Assisted Online Learning Algorithm](https://arxiv.org/pdf/2406.02611)

Techniques applied:
- LLM as a classifier with few and zero-shot prompting.
- LLM-based CTR prediction model using LoRA fine-tuning.
- LLM-Assisted 2-Upper Confidence Bounds (LLM-2UCBs): A modified version of the UCB algorithm where we can view the LLM's CTR prediction as auxiliary samples before the start of the online experiment.

**Results:** The experimentation test measured the regret, this means the difference between the best possible outcome and the outcome achieved by the algorithm. LOLA outperformed traditional A/B tests by 4-5% and pure bandits by 2-3% in simulations.