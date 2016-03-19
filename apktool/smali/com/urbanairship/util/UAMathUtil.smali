.class public abstract Lcom/urbanairship/util/UAMathUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(III)I
    .locals 0

    .prologue
    .line 42
    if-le p0, p2, :cond_0

    .line 50
    :goto_0
    return p2

    .line 46
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 47
    goto :goto_0

    :cond_1
    move p2, p0

    .line 50
    goto :goto_0
.end method
