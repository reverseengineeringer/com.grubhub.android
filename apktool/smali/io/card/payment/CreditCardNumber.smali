.class Lio/card/payment/CreditCardNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static formatFifteenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    .line 73
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 74
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatSixteenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 85
    if-eqz v0, :cond_0

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 86
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/card/payment/CreditCardNumber;->formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    if-eqz p1, :cond_2

    .line 52
    invoke-static {p0}, Lio/card/payment/StringHelper;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    if-nez p2, :cond_0

    .line 57
    invoke-static {v0}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object p2

    .line 59
    :cond_0
    invoke-virtual {p2}, Lio/card/payment/CardType;->numberLength()I

    move-result v1

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 61
    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 62
    invoke-static {v0}, Lio/card/payment/CreditCardNumber;->formatSixteenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    :cond_1
    :goto_1
    return-object p0

    :cond_2
    move-object v0, p0

    .line 54
    goto :goto_0

    .line 63
    :cond_3
    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 64
    invoke-static {v0}, Lio/card/payment/CreditCardNumber;->formatFifteenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static getDateForString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {p0}, Lio/card/payment/StringHelper;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lio/card/payment/CreditCardNumber;->getDateFormatForLength(I)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_0

    .line 146
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 147
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDateFormatForLength(I)Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 133
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    .line 135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMyyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateValid(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    if-lt p0, v1, :cond_0

    const/16 v2, 0xc

    if-ge v2, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 101
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 103
    if-lt p1, v3, :cond_0

    .line 106
    if-ne p1, v3, :cond_2

    if-lt p0, v2, :cond_0

    .line 109
    :cond_2
    add-int/lit8 v2, v3, 0xf

    if-gt p1, v2, :cond_0

    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public static passesLuhnChecksum(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    .line 27
    const/4 v2, 0x2

    new-array v6, v2, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v6, v1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v6, v0

    .line 29
    new-instance v7, Ljava/text/StringCharacterIterator;

    invoke-direct {v7, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-interface {v7}, Ljava/text/CharacterIterator;->last()C

    move-result v2

    move v3, v1

    move v4, v1

    :goto_0
    const v5, 0xffff

    if-eq v2, v5, :cond_1

    .line 31
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    :goto_1
    return v1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, -0x30

    .line 35
    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v4, v4, 0x1

    aget-object v4, v6, v4

    aget v2, v4, v2

    add-int/2addr v3, v2

    .line 30
    invoke-interface {v7}, Ljava/text/CharacterIterator;->previous()C

    move-result v2

    move v4, v5

    goto :goto_0

    .line 37
    :cond_1
    rem-int/lit8 v2, v3, 0xa

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 27
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0x1
        0x3
        0x5
        0x7
        0x9
    .end array-data
.end method
