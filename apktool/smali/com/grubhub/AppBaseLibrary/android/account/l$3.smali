.class Lcom/grubhub/AppBaseLibrary/android/account/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/l;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/l;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 829
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v6, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/l;->a(Lcom/grubhub/AppBaseLibrary/android/account/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/l;->b(Lcom/grubhub/AppBaseLibrary/android/account/l;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v3

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/l$3$1;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$3$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/l$3$2;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$3$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    .line 843
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$3$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 852
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/l$3$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$3$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 860
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->a()V

    .line 862
    return-void
.end method
