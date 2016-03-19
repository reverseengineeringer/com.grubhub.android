.class Lcom/grubhub/AppBaseLibrary/android/account/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/l;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/l;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 884
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 885
    return-void
.end method
