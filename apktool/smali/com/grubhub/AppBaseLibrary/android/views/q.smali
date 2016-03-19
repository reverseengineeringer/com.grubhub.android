.class public final enum Lcom/grubhub/AppBaseLibrary/android/views/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/views/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/q;

.field public static final enum CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

.field public static final enum FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

.field public static final enum MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/q;

    const-string v1, "CONDENSED"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

    .line 40
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/q;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    .line 41
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/q;

    const-string v1, "MATCHING_ITEMS"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/views/q;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/q;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/views/q;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/q;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/views/q;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/q;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/views/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/views/q;

    return-object v0
.end method
