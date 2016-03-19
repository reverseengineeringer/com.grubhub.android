.class public final Lcom/facebook/share/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d;)Lcom/facebook/share/widget/d;
    .locals 1

    .prologue
    .line 661
    if-ne p0, p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-object p0

    .line 665
    :cond_1
    sget-object v0, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    if-ne p0, v0, :cond_2

    move-object p0, p1

    .line 666
    goto :goto_0

    .line 667
    :cond_2
    sget-object v0, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    if-eq p1, v0, :cond_0

    .line 671
    const/4 p0, 0x0

    goto :goto_0
.end method
