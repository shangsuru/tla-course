---- MODULE PaxosCommitMC ----

EXTENDS PaxosCommit, TLC

CONSTANTS a1, a2, a3
CONSTANTS r1, r2

acceptors == {a1, a2, a3}
rms == {r1, r2}
ballots == {0, 1}
majorities == {{a1, a2}, {a1, a3}, {a2, a3}}

symmetries == Permutations(acceptors) \union Permutations(rms)
====