# Double Vision

*Before the records move, the ones wearing the same name twice have to surface.*

[SQL · Easy · on DataDriven](https://datadriven.io/problems/double_vision)

## How it went

| | |
|---|---|
| Solved | 2026-10-14 |
| Accepted | on the first submission |
| Time | 14 min |
| Hints | none |
| Query complexity | O(n), the optimum is O(n log n) |
| Concepts | Counting, Grouping, Group Filtering, Null Handling, Min & Max, Query Basics, Filtering |

The accepted solution is in [`solution.sql`](./solution.sql).

## Notes and Takeaways 
The problem was straightforward but what i did not think of from the first try is `lower(email)` because their might be difference in cases but the same email like : ('User@Example.com' vs 'user@example.com')
