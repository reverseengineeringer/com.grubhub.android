.class public final enum Lcom/grubhub/AppBaseLibrary/android/account/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/account/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/e;

.field public static final enum ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

.field public static final enum EDIT:Lcom/grubhub/AppBaseLibrary/android/account/e;

.field public static final enum ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/account/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/e;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;

    .line 655
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/account/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/e;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/e;

    .line 656
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4, v4}, Lcom/grubhub/AppBaseLibrary/android/account/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    .line 653
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/account/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/e;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 660
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 661
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/e;->value:I

    .line 662
    return-void
.end method

.method public static getPaymentInfoEnum(I)Lcom/grubhub/AppBaseLibrary/android/account/e;
    .locals 5

    .prologue
    .line 669
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/account/e;->values()[Lcom/grubhub/AppBaseLibrary/android/account/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 670
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/e;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 676
    :goto_1
    return-object v0

    .line 669
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 675
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHSPaymentInfoEnum doesn\'t exist for that index."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/e;
    .locals 1

    .prologue
    .line 653
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/account/e;
    .locals 1

    .prologue
    .line 653
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/e;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/e;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/account/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/account/e;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/e;->value:I

    return v0
.end method
