Integer V _lies strictly_ between integers U and W if U &lt; V &lt; W or if U &gt; V &gt; W.

A non-empty zero-indexed array A consisting of N integers is given. A pair of indices (P, Q), where 0 ≤ P &lt; Q &lt; N, is said to _have adjacent values_ if no value in the array lies strictly between values A[P] and A[Q], and in addition A[P] ≠ A[Q].

For example, in array A such that:

<pre><tt>  A[0] = 0 
  A[1] = 3 
  A[2] = 3
  A[3] = 7 
  A[4] = 5 
  A[5] = 3
  A[6] = 11
  A[7] = 1</tt></pre>

the following pairs of indices have adjacent values:

<pre><tt>  (0, 7),   (1, 4),   (1, 7),
  (2, 4),   (2, 7),   (3, 4),
  (3, 6),   (4, 5),   (5, 7).</tt></pre>

For example, indices 4 and 5 have adjacent values because the values A[4] = 5 and A[5] = 3 are different, and there is no value in array A that lies strictly between them − the only such value could be the number 4, which is not present in the array.

Given two indices P and Q, their _distance_ is defined as abs(P−Q), where abs(X) = X for X ≥ 0, and abs(X) = −X for X &lt; 0. For example, the distance between indices 4 and 5 is 1 because abs(4 − 5) = (5 − 4) = 1.

Write a function:

> <tt>
> int solution(int A[], int N);
> </tt>

that, given a non-empty zero-indexed array A consisting of N integers, returns the maximum distance between indices of this array that have adjacent values. The function should return −1 if no adjacent indices exist.

For example, given array A such that:

<pre><tt>  A[0] = 1 
  A[1] = 4 
  A[2] = 7
  A[3] = 3 
  A[4] = 3 
  A[5] = 5
</tt></pre>

the function should return 4 because:

> *   indices 0 and 4 are adjacent because A[0] ≠ A[4] and the array does not contain any value that lies strictly between A[0] = 1 and A[4] = 3;
> *   the distance between these indices is abs(0 − 4) = 4;
> *   no other pair of adjacent indices that has a larger distance exists.

Assume that:

> *   N is an integer within the range [<span class="number">1</span>..<span class="number">40,000</span>];
> *   each element of array A is an integer within the range [<span class="number">−2,147,483,648</span>..<span class="number">2,147,483,647</span>].

Complexity:

> *   expected worst-case time complexity is O(N*log(N));
> *   expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

Elements of input arrays can be modified.