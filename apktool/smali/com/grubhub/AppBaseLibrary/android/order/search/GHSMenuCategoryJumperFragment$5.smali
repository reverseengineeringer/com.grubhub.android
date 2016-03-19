.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
