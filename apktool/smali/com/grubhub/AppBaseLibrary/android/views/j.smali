.class public final enum Lcom/grubhub/AppBaseLibrary/android/views/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/views/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/j;

.field public static final enum ACCOUNT_MANAGEMENT:Lcom/grubhub/AppBaseLibrary/android/views/j;

.field public static final enum PAYMENT_INFO:Lcom/grubhub/AppBaseLibrary/android/views/j;

.field public static final enum REVIEW_ORDER:Lcom/grubhub/AppBaseLibrary/android/views/j;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    const-string v1, "ACCOUNT_MANAGEMENT"

    const-string v2, "Account_Management"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/views/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/j;->ACCOUNT_MANAGEMENT:Lcom/grubhub/AppBaseLibrary/android/views/j;

    .line 25
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    const-string v1, "PAYMENT_INFO"

    const-string v2, "Payment_Info"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/views/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/j;->PAYMENT_INFO:Lcom/grubhub/AppBaseLibrary/android/views/j;

    .line 26
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    const-string v1, "REVIEW_ORDER"

    const-string v2, "Review_Order"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/views/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/j;->REVIEW_ORDER:Lcom/grubhub/AppBaseLibrary/android/views/j;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/views/j;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/j;->ACCOUNT_MANAGEMENT:Lcom/grubhub/AppBaseLibrary/android/views/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/j;->PAYMENT_INFO:Lcom/grubhub/AppBaseLibrary/android/views/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/j;->REVIEW_ORDER:Lcom/grubhub/AppBaseLibrary/android/views/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/j;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/j;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/views/j;->stringValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/views/j;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/views/j;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/j;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/j;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/views/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/views/j;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/j;->stringValue:Ljava/lang/String;

    return-object v0
.end method
