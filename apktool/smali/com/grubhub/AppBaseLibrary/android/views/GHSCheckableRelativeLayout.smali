.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a0
        0x10102fe
        0x10100a1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setClickable(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->b:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->b:[I

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 36
    :cond_0
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->toggle()V

    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 42
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    .line 45
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setActivated(Z)V

    .line 46
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setSelected(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setChecked(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->refreshDrawableState()V

    .line 52
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 55
    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 57
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 58
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSCheckableRelativeLayout;->setChecked(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
