.class public final enum Lcom/grubhub/AppBaseLibrary/android/order/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/l;

.field public static final enum CATERING:Lcom/grubhub/AppBaseLibrary/android/order/l;

.field public static final enum DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

.field public static final enum FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

.field public static final enum GROUP:Lcom/grubhub/AppBaseLibrary/android/order/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 9
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    const-string v1, "FUTURE"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 10
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/order/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->GROUP:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 11
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    const-string v1, "CATERING"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->CATERING:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/order/l;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->GROUP:Lcom/grubhub/AppBaseLibrary/android/order/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->CATERING:Lcom/grubhub/AppBaseLibrary/android/order/l;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/l;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/l;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/order/l;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/order/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/l;

    return-object v0
.end method
