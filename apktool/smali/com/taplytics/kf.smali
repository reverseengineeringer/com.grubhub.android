.class public final enum Lcom/taplytics/kf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taplytics/kf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum albatross:Lcom/taplytics/kf;

.field private static final synthetic albatross:[Lcom/taplytics/kf;

.field public static final enum alligator:Lcom/taplytics/kf;

.field public static final enum alpaca:Lcom/taplytics/kf;

.field public static final enum anteater:Lcom/taplytics/kf;

.field public static final enum antelope:Lcom/taplytics/kf;

.field public static final enum ape:Lcom/taplytics/kf;

.field public static final enum armadillo:Lcom/taplytics/kf;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "ldpi"

    invoke-direct {v0, v1, v3}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->albatross:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "mdpi"

    invoke-direct {v0, v1, v4}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->alligator:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "tvdpi"

    invoke-direct {v0, v1, v5}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->alpaca:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "hdpi"

    invoke-direct {v0, v1, v6}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->anteater:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "xhdpi"

    invoke-direct {v0, v1, v7}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->antelope:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "xxhdpi"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->ape:Lcom/taplytics/kf;

    new-instance v0, Lcom/taplytics/kf;

    const-string v1, "xxxhdpi"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taplytics/kf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taplytics/kf;->armadillo:Lcom/taplytics/kf;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/taplytics/kf;

    sget-object v1, Lcom/taplytics/kf;->albatross:Lcom/taplytics/kf;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taplytics/kf;->alligator:Lcom/taplytics/kf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taplytics/kf;->alpaca:Lcom/taplytics/kf;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taplytics/kf;->anteater:Lcom/taplytics/kf;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taplytics/kf;->antelope:Lcom/taplytics/kf;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taplytics/kf;->ape:Lcom/taplytics/kf;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taplytics/kf;->armadillo:Lcom/taplytics/kf;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taplytics/kf;->albatross:[Lcom/taplytics/kf;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taplytics/kf;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/taplytics/kf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taplytics/kf;

    return-object v0
.end method

.method public static values()[Lcom/taplytics/kf;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/taplytics/kf;->albatross:[Lcom/taplytics/kf;

    invoke-virtual {v0}, [Lcom/taplytics/kf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taplytics/kf;

    return-object v0
.end method
