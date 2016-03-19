.class final enum Lcom/grubhub/AppBaseLibrary/android/review/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/review/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/review/b;

.field public static final enum ERROR:Lcom/grubhub/AppBaseLibrary/android/review/b;

.field public static final enum QUIT:Lcom/grubhub/AppBaseLibrary/android/review/b;

.field public static final enum SURVEY_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/review/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/b;

    const-string v1, "SURVEY_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->SURVEY_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/review/b;

    .line 120
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/b;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/review/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->ERROR:Lcom/grubhub/AppBaseLibrary/android/review/b;

    .line 121
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/b;

    const-string v1, "QUIT"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/review/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->QUIT:Lcom/grubhub/AppBaseLibrary/android/review/b;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/review/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/review/b;->SURVEY_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/review/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/review/b;->ERROR:Lcom/grubhub/AppBaseLibrary/android/review/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/review/b;->QUIT:Lcom/grubhub/AppBaseLibrary/android/review/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/review/b;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/review/b;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/review/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/b;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/review/b;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/review/b;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/review/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/review/b;

    return-object v0
.end method
