import std;

alias sread = () => readln.chomp();
alias lread = () => readln.chomp.to!long();
alias aryread(T = long) = () => readln.split.to!(T[]);
//aryread!string();
//auto PS = new Tuple!(long,string)[](M);
//x[]=1;でlong[]全要素1に初期化
void main()
{
    auto C = new string[][](24, 5);
    // writeln(C);
    C[0][0] = "若年";
    C[0][1] = "近視";
    C[0][2] = "なし";
    C[0][3] = "少";
    C[0][4] = "勧められない";

    C[1][0] = "若年";
    C[1][1] = "近視";
    C[1][2] = "なし";
    C[1][3] = "正常";
    C[1][4] = "ソフト";

    C[2][0] = "若年";
    C[2][1] = "近視";
    C[2][2] = "あり";
    C[2][3] = "少";
    C[2][4] = "勧められない";

    C[3][0] = "若年";
    C[3][1] = "近視";
    C[3][2] = "あり";
    C[3][3] = "正常";
    C[3][4] = "ハード";

    C[4][0] = "若年";
    C[4][1] = "遠視";
    C[4][2] = "なし";
    C[4][3] = "少";
    C[4][4] = "勧められない";

    C[5][0] = "若年";
    C[5][1] = "遠視";
    C[5][2] = "なし";
    C[5][3] = "正常";
    C[5][4] = "ソフト";

    C[6][0] = "若年";
    C[6][1] = "遠視";
    C[6][2] = "あり";
    C[6][3] = "少";
    C[6][4] = "勧められない";

    C[7][0] = "若年";
    C[7][1] = "遠視";
    C[7][2] = "あり";
    C[7][3] = "正常";
    C[7][4] = "ハード";

    C[8][0] = "中年";
    C[8][1] = "近視";
    C[8][2] = "なし";
    C[8][3] = "少";
    C[8][4] = "勧められない";

    C[9][0] = "中年";
    C[9][1] = "近視";
    C[9][2] = "なし";
    C[9][3] = "正常";
    C[9][4] = "ソフト";

    C[10][0] = "中年";
    C[10][1] = "近視";
    C[10][2] = "あり";
    C[10][3] = "少";
    C[10][4] = "勧められない";

    C[11][0] = "中年";
    C[11][1] = "近視";
    C[11][2] = "あり";
    C[11][3] = "正常";
    C[11][4] = "ハード";

    C[12][0] = "中年";
    C[12][1] = "遠視";
    C[12][2] = "なし";
    C[12][3] = "少";
    C[12][4] = "勧められない";

    C[13][0] = "中年";
    C[13][1] = "遠視";
    C[13][2] = "なし";
    C[13][3] = "正常";
    C[13][4] = "ソフト";

    C[14][0] = "中年";
    C[14][1] = "遠視";
    C[14][2] = "あり";
    C[14][3] = "少";
    C[14][4] = "勧められない";

    C[15][0] = "中年";
    C[15][1] = "遠視";
    C[15][2] = "あり";
    C[15][3] = "正常";
    C[15][4] = "勧められない";

    C[16][0] = "高年";
    C[16][1] = "近視";
    C[16][2] = "なし";
    C[16][3] = "少";
    C[16][4] = "勧められない";

    C[17][0] = "高年";
    C[17][1] = "近視";
    C[17][2] = "なし";
    C[17][3] = "正常";
    C[17][4] = "勧められない";

    C[18][0] = "高年";
    C[18][1] = "近視";
    C[18][2] = "あり";
    C[18][3] = "少";
    C[18][4] = "勧められない";

    C[19][0] = "高年";
    C[19][1] = "近視";
    C[19][2] = "あり";
    C[19][3] = "正常";
    C[19][4] = "ハード";

    C[20][0] = "高年";
    C[20][1] = "遠視";
    C[20][2] = "なし";
    C[20][3] = "少";
    C[20][4] = "勧められない";

    C[21][0] = "高年";
    C[21][1] = "遠視";
    C[21][2] = "なし";
    C[21][3] = "正常";
    C[21][4] = "ソフト";

    C[22][0] = "高年";
    C[22][1] = "遠視";
    C[22][2] = "あり";
    C[22][3] = "少";
    C[22][4] = "勧められない";

    C[23][0] = "高年";
    C[23][1] = "遠視";
    C[23][2] = "あり";
    C[23][3] = "正常";
    C[23][4] = "勧められない";
    foreach (i; 0 .. 24)
    {
        if (C[i][3] == "正常")
        {
            writeln(C[i]);
        }
    }
    writeln("-----------------------------------------------------");
    foreach (i; 0 .. 24)
    {
        if (C[i][3] == "正常" && C[i][2] == "あり")
        {
            writeln(C[i]);
        }
    }
    foreach (i; 0 .. 24)
    {
        if (C[i][3] == "正常" && C[i][2] == "なし")
        {
            writeln(C[i]);
        }
    }

    write("全体のエントロピー: ");
    writeln(allEntropy(C));
    write("若年のエントロピー: ");
    writeln(eachAgeEntropy(C, "若年"));
    write("中年のエントロピー: ");
    writeln(eachAgeEntropy(C, "中年"));
    write("高年のエントロピー: ");
    writeln(eachAgeEntropy(C, "高年"));
    double 年齢の情報利得 = allEntropy(C) - (cast(double) 8 / 24 * eachAgeEntropy(C,
            "若年") + cast(double) 8 / 24 * eachAgeEntropy(C,
            "中年") + cast(double) 8 / 24 * eachAgeEntropy(C, "高年"));
    write("年齢の情報利得は");
    writeln(年齢の情報利得);
    // writeln(eachIg(C, "近視", "遠視", 2));
    // writeln(eachIg(C, "あり", "なし", 3));
    // writeln(eachIg(C, "少", "正常", 4));
    eachIg(C, "近視", "遠視", 2);
    eachIg(C, "あり", "なし", 3);
    eachIg(C, "少", "正常", 4);
}

double eachAgeEntropy(string[][] C, string age)
{
    long ソフトの数;
    long ハードの数;
    long 勧められない数;
    double エントロピー;
    foreach (i; 0 .. (C.length))
    {
        if (C[i][0] == age && C[i][4] == "ソフト")
        {
            ソフトの数 += 1;
        }
        else if (C[i][0] == age && C[i][4] == "ハード")
        {
            ハードの数 += 1;
        }
        else if (C[i][0] == age && C[i][4] == "勧められない")
        {
            勧められない数 += 1;
        }
    }
    エントロピー = (cast(double) ソフトの数 / 8 * log10(
            cast(double) ソフトの数 / 8) + cast(double) ハードの数 / 8 * log10(
            cast(double) ハードの数 / 8) + cast(double) 勧められない数 / 8 * log10(
            cast(double) 勧められない数 / 8)) * (-1);
    return エントロピー;
}

double allEntropy(string[][] C)
{
    long 全体のソフトの数;
    long 全体のハードの数;
    long 全体の勧められない数;
    double 全体のエントロピー;
    foreach (i; 0 .. (C.length))
    {
        if (C[i][4] == "ソフト")
        {
            全体のソフトの数 += 1;
        }
        else if (C[i][4] == "ハード")
        {
            全体のハードの数 += 1;
        }
        else if (C[i][4] == "勧められない")
        {
            全体の勧められない数 += 1;
        }
    }
    全体のエントロピー = (cast(double) 全体のソフトの数 / 24 * (
            log10(cast(double) 全体のソフトの数 / 24)) + cast(double) 全体のハードの数 / 24 * (
            log10(cast(double) 全体のハードの数 / 24)) + cast(double) 全体の勧められない数 / 24 * (
            log10(cast(double) 全体の勧められない数 / 24))) * (-1);
    return 全体のエントロピー;
}

void eachIg(string[][] C, string x, string y, long z)
{
    string[] 項目 = [
        "年齢", "近遠視", "乱視", "涙産出", "コンタクト"
    ];
    long xのソフトの数;
    long xのハードの数;
    long xの勧められない数;
    long yのソフトの数;
    long yのハードの数;
    long yの勧められない数;
    double xのエントロピー = 0;
    double yのエントロピー = 0;
    foreach (i; 0 .. (C.length))
    {
        if (C[i][z - 1] == x && C[i][4] == "ソフト")
        {
            xのソフトの数 += 1;
        }
        else if (C[i][z - 1] == x && C[i][4] == "ハード")
        {
            xのハードの数 += 1;
        }
        else if (C[i][z - 1] == x && C[i][4] == "勧められない")
        {
            xの勧められない数 += 1;
        }
        else if (C[i][z - 1] == y && C[i][4] == "ソフト")
        {
            yのソフトの数 += 1;
        }
        else if (C[i][z - 1] == y && C[i][4] == "ハード")
        {
            yのハードの数 += 1;
        }
        else if (C[i][z - 1] == y && C[i][4] == "勧められない")
        {
            yの勧められない数 += 1;
        }
    }
    // writeln(x, ":ソフトの数 ", xのソフトの数);
    // writeln(x, ":ハードの数 ", xのハードの数);
    // writeln(x, ":勧められないの数 ", xの勧められない数);
    // writeln(y, ":ソフトの数 ", yのソフトの数);
    // writeln(y, ":ハードの数 ", yのハードの数);
    // writeln(y, ":勧められないの数 ", yの勧められない数);
    if (xのソフトの数 != 0)
    {
        xのエントロピー += cast(double) xのソフトの数 / 12 * log10(
                cast(double) xのソフトの数 / 12);
    }
    if (xのハードの数 != 0)
    {
        xのエントロピー += cast(double) xのハードの数 / 12 * log10(
                cast(double) xのハードの数 / 12);
    }
    if (xの勧められない数 != 0)
    {
        xのエントロピー += cast(double) xの勧められない数 / 12 * log10(
                cast(double) xの勧められない数 / 12);
    }
    if (yのソフトの数 != 0)
    {
        yのエントロピー += cast(double) yのソフトの数 / 12 * log10(
                cast(double) yのソフトの数 / 12);
    }
    if (yのハードの数 != 0)
    {
        yのエントロピー += cast(double) yのハードの数 / 12 * log10(
                cast(double) yのハードの数 / 12);
    }
    if (yの勧められない数 != 0)
    {
        yのエントロピー += cast(double) yの勧められない数 / 12 * log10(
                cast(double) yの勧められない数 / 12);
    }
    if (xのエントロピー != 0)
    {
        xのエントロピー *= cast(double)(-1);
    }
    if (yのエントロピー != 0)
    {
        yのエントロピー *= cast(double)(-1);
    }

    // writeln(xのエントロピー, " : ", yのエントロピー);
    writeln(x, "のエントロピー: ", xのエントロピー);
    writeln(y, "のエントロピー: ", yのエントロピー);
    double 各情報利得 = allEntropy(C) - ((cast(double) 12 / 24 * xのエントロピー) + (
            cast(double) 12 / 24 * yのエントロピー));
    writeln(項目[z - 1], "の情報利得: ", 各情報利得);

}

void scan(L...)(ref L A)
{
    auto l = readln.split;
    foreach (i, T; L)
    {
        A[i] = l[i].to!T;
    }
}

void arywrite(T)(T a)
{
    a.map!text.join(' ').writeln;
}
