.class public final enum Lcom/grubhub/AppBaseLibrary/android/c/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/c/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/d;

.field public static final enum DEFAULT:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

.field public static final enum DISTANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

.field public static final enum RELEVANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    .line 16
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    const-string v1, "DISTANCE"

    const-string v2, "distance"

    invoke-direct {v0, v1, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DISTANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    .line 17
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    const-string v1, "RELEVANCE"

    const-string v2, "relevance"

    invoke-direct {v0, v1, v5, v2}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->RELEVANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DISTANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->RELEVANCE:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/d;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->stringValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/c/a/d;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/c/a/d;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/c/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->stringValue:Ljava/lang/String;

    return-object v0
.end method
