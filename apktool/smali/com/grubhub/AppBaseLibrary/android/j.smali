.class public final enum Lcom/grubhub/AppBaseLibrary/android/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/j;

.field public static final enum ANCHORED:Lcom/grubhub/AppBaseLibrary/android/j;

.field public static final enum COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

.field public static final enum EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/j;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 35
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/j;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/j;

    const-string v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->ANCHORED:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/j;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->ANCHORED:Lcom/grubhub/AppBaseLibrary/android/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/j;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/j;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/j;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/j;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/j;

    return-object v0
.end method
