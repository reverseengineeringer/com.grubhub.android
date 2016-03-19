.class Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/high16 v5, 0x43480000    # 200.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    and-int/2addr v3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x44610000    # 900.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 368
    sub-float v4, v3, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 369
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->finish()V

    .line 370
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    const v3, 0x7f040028

    invoke-virtual {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->overridePendingTransition(II)V

    .line 378
    :goto_3
    return v1

    :cond_0
    move v3, v2

    .line 365
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 372
    :cond_3
    sub-float/2addr v0, v3

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->finish()V

    .line 374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    const v3, 0x7f040027

    invoke-virtual {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->overridePendingTransition(II)V

    goto :goto_3

    :cond_4
    move v1, v2

    .line 378
    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method
