.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->f(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$18;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/b;->d()V

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
