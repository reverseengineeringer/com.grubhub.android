.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method
