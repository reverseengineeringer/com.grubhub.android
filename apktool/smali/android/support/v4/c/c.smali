.class public Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/c/e;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/c/e",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Landroid/support/v4/c/g;->a(Landroid/support/v4/c/e;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0, p0}, Landroid/support/v4/c/d;-><init>(Landroid/support/v4/c/e;)V

    goto :goto_0
.end method
