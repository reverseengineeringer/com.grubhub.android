.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 207
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 208
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/account/o;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
