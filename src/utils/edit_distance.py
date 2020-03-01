def edit_distance(source, target, del_cost=1, sub_cost=1, ins_cost=1):
    if len(source) > len(target):
        source, target = target, source
    n = len(source)
    m = len(target)

    d = [[0]*(m+1) for i in range(n + 1)]

    for i in range(1, n + 1):
        d[i][0] = d[i-1][0] + del_cost

    for i in range(1, m + 1):
        d[0][i] = d[0][i-1] + ins_cost


    d[0][0] = 0

    for i in range(1, n+1):
        for j in range(1, m+1):
            real_sub_cost = 0 if source[i-1] == target[j-1] else sub_cost            
            d[i][j] = min(d[i-1][j] + del_cost,
                          d[i][j-1] + ins_cost,
                          d[i-1][j-1] + real_sub_cost)

    return d[n][m]
