.class public Lcom/braintreepayments/cardform/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v3

    move v0, v3

    move v1, v3

    .line 22
    :goto_0
    if-ge v4, v6, :cond_2

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 24
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a digit: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 28
    rem-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_1

    .line 29
    add-int/2addr v1, v7

    .line 22
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_1
    div-int/lit8 v8, v7, 0x5

    mul-int/lit8 v7, v7, 0x2

    rem-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    goto :goto_1

    .line 34
    :cond_2
    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_2
.end method
