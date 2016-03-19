.class public final enum Lcom/grubhub/AppBaseLibrary/android/login/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/login/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/login/a;

.field public static final enum CHECKOUT_DELIVERY:Lcom/grubhub/AppBaseLibrary/android/login/a;

.field public static final enum CHECKOUT_PICKUP:Lcom/grubhub/AppBaseLibrary/android/login/a;

.field public static final enum CREATE_ACCOUNT:Lcom/grubhub/AppBaseLibrary/android/login/a;

.field public static final enum LOGIN:Lcom/grubhub/AppBaseLibrary/android/login/a;

.field public static final enum ONBOARDING:Lcom/grubhub/AppBaseLibrary/android/login/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/login/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->LOGIN:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    const-string v1, "CREATE_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/login/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->CREATE_ACCOUNT:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 37
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    const-string v1, "CHECKOUT_DELIVERY"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/login/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_DELIVERY:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 38
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    const-string v1, "CHECKOUT_PICKUP"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/login/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_PICKUP:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 39
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    const-string v1, "ONBOARDING"

    invoke-direct {v0, v1, v6}, Lcom/grubhub/AppBaseLibrary/android/login/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->ONBOARDING:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/login/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->LOGIN:Lcom/grubhub/AppBaseLibrary/android/login/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CREATE_ACCOUNT:Lcom/grubhub/AppBaseLibrary/android/login/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_DELIVERY:Lcom/grubhub/AppBaseLibrary/android/login/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_PICKUP:Lcom/grubhub/AppBaseLibrary/android/login/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->ONBOARDING:Lcom/grubhub/AppBaseLibrary/android/login/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/login/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/login/a;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/login/a;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/login/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/login/a;

    return-object v0
.end method
