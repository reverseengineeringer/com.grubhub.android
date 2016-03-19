.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/view/View;Z)V

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->k()V

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
