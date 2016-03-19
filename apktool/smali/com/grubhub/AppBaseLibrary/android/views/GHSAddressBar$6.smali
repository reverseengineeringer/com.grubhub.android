.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 348
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->g(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V

    .line 354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->requestFocus()Z

    .line 357
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/b;->d()V

    .line 367
    :cond_0
    return-void
.end method
