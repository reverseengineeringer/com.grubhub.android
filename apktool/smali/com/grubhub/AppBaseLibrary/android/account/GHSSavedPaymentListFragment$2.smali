.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


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
    .line 182
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 187
    return-void
.end method
