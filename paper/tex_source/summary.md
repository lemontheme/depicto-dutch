In recent years, increasing attention has been paid to the potential of using
pictographs to open up the online world, so that users with intellectual
disabilities can benefit from the same tools for remote communication (email,
instant messaging, social media) which define so much of what it means to be a
socially active member of society nowadays. This thesis describes the
development of an automatic translation system that aims to enable
language-impaired, intellectually disabled individuals to compose written
messages simply by selecting a sequence of pictographic images.

By way of contrast with existing approaches for pictograph-to-text translation,
the system that we develop here, Depicto, takes a 100% rule-based approach.
That is, all stages in the translation process make use of linguistic rules, as
opposed to statistical data. Such an approach makes it possible to encode
elegant generalizations about the pictographic input, which has advantages for
the expressivity and consistency of translation. Rule-based approaches are
generally also costly, however. Thus, aside from the obvious objective of
testing whether this approach can actually be realized, we also explore how
development can be made more feasible. In addition, we set two design criteria:
first, the system must be sensitive to the needs of its users; second, it must
be possible to extend to other target languages. (Currently, the system
translates to Dutch.)

In Chapter 2, we introduce all third-party resources used by the system. In
Chapter 3, we show how the pictographic symbol set Sclera can be analysed as a
natural language and how this language can be modelled by a constraint-based
grammar. This grammar is written in an implemented variant of the HPSG
framework. In the first half of Chapter 4, we see how the semantic structure of
analysed pictographic sequences is translated so as to be compatible with the
input expected by the target language grammar. This happens in the second
module in the Depicto chain. In the second half of Chapter 4, we describe a
basic grammar model of Dutch and show how this is used to generate well-formed
sentences based on this translated semantic structure. Next, in the first half
of Chapter 5, we evaluate the system as a whole. We argue that both its
precision, i.e., ability to produce well-formed output, and performance are
high, but are forced to concede that its coverage is limited. We also show how
the Depicto system fares when pitted against a fundamentally statistical
translation system.

All in all, we conclude that Depicto is able to translate (a limited subset of)
pictographic sequences into well-formed natural language sentences. By adopting
an explicitly modular design, we try to make the system as appealing as
possible to developers dealing with other target languages. At the same time,
extending Depicto's analysis module remains a costly task. Whether such
costliness is an adequate trade-off for the high quality of the system's output
will be determined by future work. As a translation system, Depicto succeeds.
However, as an assistive writing tool, it needs improvement. Its analysis
module imposes rather stringent constraints on the order of pictographs on the
input, and its output is an unfiltered list of all possible translation
hypotheses. In future work, we will focus on minimizing the first limitation
and removing the second altogether. This will most likely involve exciting
experiments in hybridization.
