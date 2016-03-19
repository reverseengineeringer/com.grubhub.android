.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->dismiss()V

    .line 149
    return-void
.end method
