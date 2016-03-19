.class public final enum Lcom/grubhub/AppBaseLibrary/android/account/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/account/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/a;

.field public static final enum ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

.field public static final enum EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

.field public static final enum ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

.field public static final enum VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1448
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/account/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 1449
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/account/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 1450
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4, v4}, Lcom/grubhub/AppBaseLibrary/android/account/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 1451
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    const-string v1, "VERIFY"

    invoke-direct {v0, v1, v5, v5}, Lcom/grubhub/AppBaseLibrary/android/account/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 1447
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/account/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/a;

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
    .line 1455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1456
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/a;->value:I

    .line 1457
    return-void
.end method

.method public static getAddressInfoEnum(I)Lcom/grubhub/AppBaseLibrary/android/account/a;
    .locals 5

    .prologue
    .line 1464
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/account/a;->values()[Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1465
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/a;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1471
    :goto_1
    return-object v0

    .line 1464
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1470
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHSAddressInfoEnum doesn\'t exist for that index."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/a;
    .locals 1

    .prologue
    .line 1447
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/a;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/account/a;
    .locals 1

    .prologue
    .line 1447
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/account/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/account/a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/a;->value:I

    return v0
.end method
