.class Lcom/grubhub/AppBaseLibrary/android/order/search/d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$1;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 250
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x44610000    # 900.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    sub-float v0, v1, v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/d;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;I)V

    .line 252
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
