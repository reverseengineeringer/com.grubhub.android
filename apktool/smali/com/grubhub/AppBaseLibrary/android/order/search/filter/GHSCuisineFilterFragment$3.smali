.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a(F)F

    .line 281
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->b()V

    .line 282
    const/4 v0, 0x0

    return v0
.end method
