   f   u   n   c   t   i   o   n       h       =       D   F   T   s   u   m   (   x   ,       N   )      
                   n       =       [   0   :   1   :   N   -   1   ]   ;       %       T   i   m   e       i   n   d   e   x       v   e   c   t   o   r      
                   k       =       [   0   :   1   :   N   -   1   ]   ;       %       F   r   e   q   u   e   n   c   y       i   n   d   e   x       v   e   c   t   o   r      
                   %       C   o   m   p   u   t   e       t   h   e       D   F   T       u   s   i   n   g       m   a   t   r   i   x       m   u   l   t   i   p   l   i   c   a   t   i   o   n      
                   W   N       =       e   x   p       (   -   1   i       *       2       *       p   i       /       N   )   ;       %       T   w   i   d   d   l   e       f   a   c   t   o   r      
                   n   k       =       n   '       .   *       k   ;       %       C   r   e   a   t   e       a       m   a   t   r   i   x       o   f       i   n   d   i   c   e   s      
                   W   N   n   k       =       W   N   .   ^       n   k   ;       %       C   o   m   p   u   t   e       t   h   e       t   w   i   d   d   l   e       f   a   c   t   o   r       m   a   t   r   i   x      
                   X   k       =       x       *       W   N   n   k       %       C   o   m   p   u   t   e       t   h   e       D   F   T      
                   h       =       X   k   ;      
   %                   h       =       a   b   s   (   X   k   )   ;      
   e   n   d