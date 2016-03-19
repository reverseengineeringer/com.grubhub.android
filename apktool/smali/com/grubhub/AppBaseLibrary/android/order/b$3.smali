.class Lcom/grubhub/AppBaseLibrary/android/order/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Landroid/widget/LinearLayout;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 756
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->startActivity(Landroid/content/Intent;)V

    .line 761
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    const-string v1, "call restaurant"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Lcom/grubhub/AppBaseLibrary/android/order/b;Ljava/lang/String;)V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/b;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v1, 0x7f08025a

    const v2, 0x7f080259

    const v5, 0x7f0803e5

    const/4 v6, 0x0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0
.end method
