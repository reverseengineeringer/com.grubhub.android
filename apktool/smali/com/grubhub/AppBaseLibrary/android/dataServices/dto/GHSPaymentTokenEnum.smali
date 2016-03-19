.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

.field public static final enum ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

.field public static final enum CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

.field public static final enum PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;


# instance fields
.field private rawString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    const-string v1, "CREDIT_CARD"

    const-string v2, "CREDIT_CARD"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 11
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    const-string v1, "PAYPAL_EXPRESS"

    const-string v2, "PAYPAL_EXPRESS"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 12
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    const-string v1, "ANDROID_PAY"

    const-string v2, "ANDROID_PAY"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->rawString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 30
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 29
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->rawString:Ljava/lang/String;

    return-object v0
.end method
