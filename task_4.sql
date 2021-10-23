/*
Contest Leaderboard: https://www.hackerrank.com/challenges/contest-leaderboard/problem
*/

select h.hacker_id, h.name, sum(scores)
from Hackers h
join (select s.hacker_id, max(score) scores
      from Submissions s
      group by s.hacker_id, s.challenge_id) st
on h.hacker_id = st.hacker_id
group by h.hacker_id, h.name
having sum(scores) > 0
order by sum(scores) desc, h.hacker_id;
