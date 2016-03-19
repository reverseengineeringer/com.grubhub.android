.class Landroid/support/v4/a/a/s;
.super Landroid/support/v4/a/a/r;
.source "SourceFile"


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v4/a/a/s;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/v4/a/a/s;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 30
    return-void
.end method
