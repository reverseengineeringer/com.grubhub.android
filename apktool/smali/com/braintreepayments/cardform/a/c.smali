.class public Lcom/braintreepayments/cardform/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/braintreepayments/cardform/a/c;


# instance fields
.field private final b:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/braintreepayments/cardform/a/c;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintreepayments/cardform/a/c;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lcom/braintreepayments/cardform/a/c;->a:Lcom/braintreepayments/cardform/a/c;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/braintreepayments/cardform/a/c;->b:Ljava/util/Calendar;

    .line 33
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/braintreepayments/cardform/a/c;->b:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/braintreepayments/cardform/a/c;->a:Lcom/braintreepayments/cardform/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/braintreepayments/cardform/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/braintreepayments/cardform/a/c;->b:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    if-lt v3, v1, :cond_0

    const/16 v2, 0xc

    if-gt v3, v2, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/braintreepayments/cardform/a/c;->b()I

    move-result v4

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 66
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    :goto_1
    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/braintreepayments/cardform/a/c;->a()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 78
    :cond_2
    if-ge v2, v4, :cond_3

    .line 80
    add-int/lit8 v2, v2, 0x64

    .line 81
    sub-int/2addr v2, v4

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 86
    goto :goto_0

    .line 68
    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x64

    goto :goto_1
.end method
