# MSML 641 NLP Project

Repository for the MSML 641 Natural Language Processing course Project - Fall 2025

## Table of Contents

- [Students](#students)
- [Proposal](#proposal)
  - [A/B Testing performance improvement based on NLP Techniques (A case for Upworthy Research Archive)](#1---ab-testing-performance-improvement-based-on-nlp-techniques-a-case-for-upworthy-research-archive)
    - [About the dataset](#about-the-dataset)
    - [About Upworthy](#about-upworthy)
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

## Exploratory Data Analysis

[1-exploratory-data-analysis.ipynb](1-exploratory-data-analysis.ipynb)

The exploratory data analysis gave us a better understanding of the dataset and the records that can be used.

We stored a cleaned version of the dataset in `dataset/processed/exploratory-packages-highest-ctr.csv`. This dataset only contains the Tests with different headlines used in the A/B tests. A flag has been added to identify the Package with the highest CTR in the Test.

## Feature Engineering

After the exploration of the dataset has been done, the next step is to obtain new information from the dataset. The headlines text is the main source of information, but the text alone would be difficult to analyze for a traditional predictor. Different features could be derived from the text, for example:
- Is famous person mentioned in the headline?
- Does the headline use a specific english tense?
- Does the headline includes a question?
- Nouns, verbs, words, and characters count.

The feature engineering part may stay with basic features extraction and not get into sentiment analysis or topic modeling which will be covered in the next sections.

[2-feature-engineering.ipynb](2-feature-engineering.ipynb)

### Results

Below is a summary table of the features extracted:

- **Named entity features**:
  - `headline_num_persons`, `headline_num_orgs`, `headline_num_gpes`: counts of people, organizations, and geo-political entities detected in the headline using SpaCy.
  - `headline_has_person`, `headline_has_org`, `headline_has_gpe`, `headline_has_money`: binary flags indicating whether the headline mentions at least one person, organization, location, or monetary amount, based on the previous features.
- **POS-based and basic text features**:
  - `starts_with_verb`, `starts_with_pronoun`, `starts_with_number`: whether the first content token is a verb, pronoun, or number.
  - `num_chars`, `num_tokens`, `avg_token_len`: basic length and tokenization statistics for the headline.
  - `ends_with_qmark`, `ends_with_exclaim`: whether the headline ends with a question mark or exclamation mark.
  - `has_quote`, `has_all_caps_word`: whether the headline contains any quote characters or a word in all caps.
  - `num_nouns`, `num_verbs`, `num_adjs`, `num_advs`, `num_pronouns`: counts of nouns, verbs, adjectives, adverbs, and pronouns.
- **Sentence style features**:
  - `headline_imperative_verb`: flag indicating whether the headline has an imperative-style main verb. Based on POS tagging. It assumes that it's imperative if the root verb is in simple tense and there is no explicit subject related to it.
- **Curiosity and intensity features**:
  - `headline_has_curiosity_word`, `headline_curiosity_similarity`: The first one validates is the headlines has at least one of the words "why", "what", "how", "this", "these", "secrets". The second one validates the semantic similarity from the headline words to words in the previous list using SpaCy embeddings.
  - `headline_has_intensity_word`, `headline_intensity_similarity`: Same than before but based on a list of words that are related to intensity ("very", "really", "incredibly", "so", "absolutely")
- **Sentiment features using VADER**:
  - `neg`, `neu`, `pos`, `compound`: negative, neutral, positive, and overall compound sentiment scores for the headline.
- **Dataset/time features**:
  - `created_at_dayofweek`, `created_at_hourofday`: day of week and hour of day when the test package was created.
  - `test_group_size`: number of headline variants competing within the same A/B test.
- **Readability features**:
  - `read_flesch`, `read_coleman`: Flesch Reading Ease and Coleman–Liau index scores as two alternative readability measures.
- **Generality/specificity feature**:
  - `specificity_tfidf`: average TF-IDF score of the headline across the full corpus (higher values indicate more specific wording).

## Topic Modeling

**Latent Dirichlet Allocation (LDA)**

LDA (Latent Dirichlet Allocation) is an unsupervised topic modeling technique that used to identify the topics in a corpus of text. It is a Bayesian probabilistic model based on mixture of words. For this reason, it's fitted for large corpora of text and not well suited for short texts like headlines.

**GSDMM (Gibbs Sampling Dirichlet Multinomial Mixture)**

The logic behind this algorithm is explained by an analogy in one of the cited papers:

> Let us imagine that we are in a film class, where the students have to arrange themselves into groups according to their movie tastes. To simplify things, the professor asks them to quickly write down a couple of the movies they have recently watched. Now each student is effectively labeled with a preliminary, albeit imperfect, list of movies that represent their taste. The clustering algorithm then works as follows: the professor will randomly assign the students to K different tables (categories). In the next step, the students will move, with certain probability, to a different table. The probability of moving will depend on two things: the size of the table, and the movie interests of the student in such table. Essentially, the bigger the table, and the more similar the taste, the more likely for a student to make the move.

This algorithm is based on clustering, and it assumes each text belongs to one out of K topics. It's better suited for short texts like headlines.

**BERTopic**

BERTopic is the state-of-the-art topic modeling technique. It uses BERT embeddings to represent the text. It's pipeline is defined by these steps:

- Embedding: BERT embeddings are used to represent the text.
- Dimensionality reduction: UMAP is used to reduce the dimensionality of the embeddings.
- Clustering: HDBSCAN is used to cluster the embeddings.
- Tokenization: At the end of the clustering we have an embedding for each headline and the cluster they belong to, but this is not the topic itself. We need to analyze the words on each cluster. For this reason, we need to tokenize the headlines text.
- Weighting Scheme: Now, we need to assign a weight to each word in the cluster. Usually this is done using c-TF-IDF.
- Representation Tuning: This stage is optional and we're not going to use it. The idea behind this step is to take the bag-of-words and represent it as a consolidated topic. Otherwise the topic is just a list of words with frequencies.

The algorithm is better explained by the maintainers of the Python library:

[BERTopic - The Algorithm](https://maartengr.github.io/BERTopic/algorithm/algorithm.html)

**Decision**

I'll use BERTopic for topic modeling as it's the state-of-the-art technique, has a robust theoretical foundation, and is practical for small datasets.

[3-topic-modeling.ipynb](3-topic-modeling.ipynb)

### Results

50% of the headlines where assigned to a topic. The list of topics is saved in `dataset/processed/topics.csv`.

Based on the top words of each topic, we titled the first 18 topics as follows:

- –1: Miscellaneous
- 0: She, He, Pronouns
- 1: Kids
- 2: Feminism
- 3: Gay Marriage
- 4: Viral Videos & Content
- 5: Race & White People
- 6: Food & Restaurants
- 7: Fox News
- 8: Jobs & Money
- 9: Music
- 10: Water & City
- 11: Science
- 12: Rape & Sexual Violence
- 13: Abortion & Reproductive Rights
- 14: Football & Sports
- 15: Climate Change
- 16: Space
- 17: Fashion
- 18: Minimum Wage

It's worth to notice that, during the time of the data collection, Ebola and Gay Marriage were two topics widely discussed in the United States.

Below is a summary table of the main topics discovered with BERTopic:

| Topic | Count | Name | Representation (top words) | Representative headline example |
| --- | --- | --- | --- | --- |
| -1 | 11610 | Miscellaneous | [the, to, you, it, of, this, and, in, is, that...] | [Here's What It Feels Like To Be Gay, If You A...] |
| 0 | 1869 | She, He, Pronouns | [she, her, to, the, he, was, his, and, but, it...] | [Women Like Her, Who Did What She Did, Aren't ...] |
| 1 | 902 | Kids | [kids, to, these, teachers, these kids, of, th...] | [The 4 Words You Should Be Saying To Kids Inst...] |
| 2 | 658 | Feminism | [women, feminism, men, feminist, they, the, to...] | [If You Still Don't Think We Need Feminism, Yo...] |
| 3 | 629 | Gay Marriage | [gay, straight, marriage, gay marriage, the, t...] | [A Pastor Asks A Politician Why He Supports Ga...] |
| 4 | 575 | Viral Videos & Content | [video, this video, seconds, this, the, you, d...] | [Over 2/3 Of The World Can't Watch This Video....] |
| 5 | 555 | Race & White People | [white, race, white people, people, comedian, ...] | [A New And Creative Way To Help White People U...] |
| 6 | 474 | Food & Restaurants | [food, restaurant, you, the, eat, your, it, fa...] | ['What's This About Fast Food Workers Complain...] |
| 7 | 365 | Fox News | [news, fox news, fox, ferguson, the, police, c...] | [Fox News finally went off on Walmart for thei...] |
| 8 | 324 | Jobs & Money | [jobs, money, poor, people, welfare, the, of, ...] | [The Top 6 Reasons Why Money Spent On Keeping ...] |
| 9 | 314 | Music | [song, music, songs, this song, the, rapper, t...] | [The Music Industry Asked Him To Change 1 Word...] |
| 10 | 274 | Water & City | [water, town, it, city, the, and, in, is, of, ...] | [It’s Got A Cool Name, It’s Locally Made, And ...] |
| 11 | 248 | Science | [science, science guy, scientist, the, of, the...] | [How do we get kids interested in science? Bil...] |
| 12 | 248 | Rape & Sexual Violence | [rape, raped, sexually, assault, assaulted, vi...] | [They Let A Rape Survivor Tell Her Story. But ...] |
| 13 | 231 | Abortion & Reproductive Rights | [abortion, cancer, pregnant, baby, abortions, ...] | [Some Anti-Abortion Protestors Learn Some Abor...] |
| 14 | 219 | Football & Sports | [football, player, nfl, football player, the n...] | [A Football Player Hit His Wife On Video. Amer...] |
| 15 | 198 | Climate Change | [climate, climate change, change, about climat...] | [Do You Kind Of Secretly Believe These 6 Myths...] |
| 16 | 181 | Space | [space, we, nasa, live, big bang, bang, scient...] | ['What A Wonderful World' spoken with visuals ...] |
| 17 | 177 | Fashion | [fashion, models, model, look, beauty, photosh...] | [An Actress And A Mogul Point Out A Pretty Sol...] |
| 18 | 170 | Minimum Wage | [wage, minimum wage, minimum, the minimum, rai...] | [The Most Simple Argument Against Raising The ...] |

# Analysis

Many of the papers reviewed in the literature analyze how different characteristics of the headline (Sentiment, topic, sentence structure, etc.) affect the click rate, but these correlations will have many confounders, they don't take into account that headlines occur at different times, days of the week, with different audiences, appear in different parts of the website, etc.

The only way to control for these confounders is to verify each A/B Test individually.

To start with the analysis, we'll run a regression model to predict the click rate from the features, similarly to what was done in the papers mentioned before. We're not going to take this as statistically significant but it could give us some insights.

## CTR Prediction Models

[4-ctr-prediction.ipynb](4-ctr-prediction.ipynb)

### Results

The analysis of the engineered features and their statistical significance gave us the following results:

**Named entities**

The mention of people clearly increases the CTR while the mention of money decreases it.

**Sentence starting**

Headlines starting with a pronoun are associated with a lower CTR, this isn't something we expected.

**Basic text features**

The only conclusion we can draw from this is that users prefer shorter headlines in general.

**Question/Exclamation features**

Headlines with questions, exclamation marks, or all caps words have clearly a lower CTR.

**Sentence style**

Not much can be interpreted from this, statistically headlines are not affected by the use of curiosity or intensity words, as well as the use of verbs in imperative modes. I expected something different from this. I would have assumed that the use of curiosity words would increase the CTR. In the Confirmatory dataset the curiosity words decreased the CTR but it's not a very significant correlation.

**Sentiment**

Compound ranges from -1 to 1, with 0 being neutral, -1 negative and 1 positive. In the Exploratory dataset, Positiveness is associated with a decrease in the CTR, but in the Confirmatory dataset, the correlation is not statistically significant.

**Test Size**

It can't be denied that the use of multiple headlines (packages) in an A/B test decreases the CTR overall. This may be because the test of more headlines, include more versions of the headlines that aren't so effective.

**Specificity**

The use of specific words is associated with a decrease in the CTR.

### Literature Confirmation/Rejection

Two published and peer-reviewed papers confirmed that a negative sentiment is associated with a higher CTR. Those studies use methods for sentiment analysis that are not good for short texts like headlines. When applying VADER sentiment analysis to the headlines, the correlation is not statistically significant.