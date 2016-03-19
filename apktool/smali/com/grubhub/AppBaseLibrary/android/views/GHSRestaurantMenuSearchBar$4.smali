.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/s;->w()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)Z

    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->g(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->h(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->i(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Landroid/view/View;Z)V

    .line 186
    :cond_1
    :goto_0
    return v3

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/t;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/t;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)V

    goto :goto_0
.end method
