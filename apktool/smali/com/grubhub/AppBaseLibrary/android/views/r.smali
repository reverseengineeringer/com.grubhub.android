.class public final enum Lcom/grubhub/AppBaseLibrary/android/views/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/views/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/r;

.field public static final enum DELIVERY:Lcom/grubhub/AppBaseLibrary/android/views/r;

.field public static final enum PICKUP:Lcom/grubhub/AppBaseLibrary/android/views/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/r;

    const-string v1, "DELIVERY"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/views/r;

    .line 46
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/r;

    const-string v1, "PICKUP"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/views/r;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/views/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/r;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/views/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/r;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/views/r;

    aput-object v1, v0, v3

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/r;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/views/r;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/r;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/views/r;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/views/r;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/views/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/views/r;

    return-object v0
.end method
