.class public final enum Lcom/grubhub/AppBaseLibrary/android/utils/c/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/utils/c/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

.field public static final enum CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

.field public static final enum CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

.field public static final enum INFRASTRUCTURE:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

.field public static final enum USER_FEEDBACK:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    const-string v1, "INFRASTRUCTURE"

    const-string v2, "infrastructure"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->INFRASTRUCTURE:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    .line 10
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    const-string v1, "CORE_ORDERING_EXP"

    const-string v2, "core ordering experience"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    .line 11
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    const-string v1, "CONVENIENCE_FEATURES"

    const-string v2, "convenience features"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    .line 12
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    const-string v1, "USER_FEEDBACK"

    const-string v2, "user feedback"

    invoke-direct {v0, v1, v6, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->USER_FEEDBACK:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->INFRASTRUCTURE:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->USER_FEEDBACK:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

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
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/utils/c/e;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/utils/c/e;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->name:Ljava/lang/String;

    return-object v0
.end method
