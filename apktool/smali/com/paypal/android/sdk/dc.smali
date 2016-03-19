.class public final Lcom/paypal/android/sdk/dc;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/util/Locale;

.field private static final d:Ljava/util/Locale;

.field private static e:Ljava/util/List;

.field private static f:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BRL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CZK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DKK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HKD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HUF"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ILS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MXN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MYR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NOK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NZD"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PHP"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PLN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RUB"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SEK"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SGD"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "THB"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TWD"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TRY"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "USD"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/dc;->a:Ljava/util/List;

    const-string v0, "JPY, HUF, TWD"

    sput-object v0, Lcom/paypal/android/sdk/dc;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/paypal/android/sdk/dc;->c:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    sput-object v0, Lcom/paypal/android/sdk/dc;->d:Ljava/util/Locale;

    sput-object v3, Lcom/paypal/android/sdk/dc;->e:Ljava/util/List;

    sput-object v3, Lcom/paypal/android/sdk/dc;->f:Ljava/text/NumberFormat;

    return-void
.end method

.method public static a(DLjava/util/Currency;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    const-wide v2, 0x3ff8f5c28f5c28f6L    # 1.56

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "."

    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/dc;->d:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    :goto_1
    const-string v1, "#######0"

    sget-object v2, Lcom/paypal/android/sdk/dc;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    const-string v1, "#####0.00"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ","

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/dc;->c:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/util/Locale;DLjava/util/Currency;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/paypal/android/sdk/dc;->a(Ljava/util/Locale;DLjava/util/Currency;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Locale;DLjava/util/Currency;Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/paypal/android/sdk/dc;->f:Ljava/text/NumberFormat;

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    sput-object v2, Lcom/paypal/android/sdk/dc;->f:Ljava/text/NumberFormat;

    :cond_0
    sget-object v2, Lcom/paypal/android/sdk/dc;->f:Ljava/text/NumberFormat;

    invoke-virtual {v2, p3}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    sget-object v2, Lcom/paypal/android/sdk/dc;->f:Ljava/text/NumberFormat;

    const-wide v4, 0x40934a3d70a3d70aL    # 1234.56

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p3}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    move-object v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lcom/paypal/android/sdk/dc;->a(DLjava/util/Currency;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    :cond_5
    const-string v1, ""

    goto :goto_4

    :cond_6
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_6
.end method
