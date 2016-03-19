.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 568
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 569
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 570
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 606
    return-void
.end method
