.class Landroid/support/v4/view/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/ai;)V
    .locals 1

    .prologue
    .line 45
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ae;-><init>(Landroid/support/v4/view/ai;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
