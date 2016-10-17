/**
 * genarate m-n array example: m=1, n=3 return [1, 2, 3]
 * @param  {int} m 
 * @param  {int} n 
 * @return {array} 
 */
function enumerateInterval(m, n) {
    let arr = [];
    for(let i = m; i <= n; i ++) {
        arr.push(i);
    }
    return arr;
}


/**
 * [combine description]
 * @param  {array} a [[0], [1]]
 * @param  {array} b [1, 2]
 * @return {array}   [[0, 1], [0, 2], [1, 1], [1, 2]]
 */
function combine(a, b) {
    let c = [];
    b.forEach(bi => 
        a.forEach(ai => 
            c.push(ai.concat(bi))
        )
    );
    return c;
}


// 判断皇后是否安全
function isSafe(l) {
    let currentQueenRow = l[l.length - 1]; //

    let colOfNewQueen = l.length - 1;

    if(l === null) return true;

    for(let i = 0; i < l.length - 1; i ++) {
        if(l[i] === currentQueenRow) 
            return false;
        if(l[i] + (colOfNewQueen - i) === currentQueenRow) 
            return false;
        if(l[i] - (colOfNewQueen - i) === currentQueenRow) 
            return false;
    }
}

// 传入棋盘大小
function queens(boardSize) {
    
    function queenCols(n, restOfQueens) {
        let q = null;
        if(n === boardSize) return restOfQueens;

        q = combine(restOfQueens, enumerateInterval(1, boardSize));
        q = q.filter((l) => {
            return isSafe(l, n);
        });
        return queenCols(n + 1, q);
    }

    return queenCols(0, [[]]);
}



console.table(queens(4));










































