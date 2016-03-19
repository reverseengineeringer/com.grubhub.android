.class final enum Lcom/grubhub/AppBaseLibrary/android/views/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/views/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/o;

.field public static final enum EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

.field public static final enum MAX:Lcom/grubhub/AppBaseLibrary/android/views/o;

.field public static final enum MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/o;

    const-string v1, "EXACT"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    .line 118
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/o;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;

    .line 119
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/o;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->MAX:Lcom/grubhub/AppBaseLibrary/android/views/o;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/views/o;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/o;->MAX:Lcom/grubhub/AppBaseLibrary/android/views/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/o;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/views/o;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/o;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/views/o;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/views/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/views/o;

    return-object v0
.end method
