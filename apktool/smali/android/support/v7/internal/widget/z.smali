.class Landroid/support/v7/internal/widget/z;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/z;->a(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    .line 221
    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->invalidateSelf()V

    .line 154
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/a/a/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/z;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 178
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 58
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 83
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 68
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 73
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 203
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 208
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 193
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 198
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/z;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method