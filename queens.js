function enumerateInterval(m, n) {
    let arr = [];
    for(let i = m; i <= n; i ++) {
        arr.push(i);
    }
    return arr;
}

// 组合
function combine(a, b) {
    let c = [];
    b.forEach(bi => 
        a.forEach(ai => 
            c.push(ai.concat(bi))
        )
    );
    return c;
}

function isSafe(l) {
    let currentQueenRow = l[l.length - 1]; //

    let colOfNewQueen = l.length - 1;

    if(l === null) return true;

    let flag = true;
    for(let i = 0; i < l.length - 1; i ++) {
        if(l[i] === currentQueenRow) flag = false;
        if(l[i] + (colOfNewQueen - i) === currentQueenRow) flag = false;
        if(l[i] - (colOfNewQueen - i) === currentQueenRow) flag = false;
    }
    return flag;
}

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










































