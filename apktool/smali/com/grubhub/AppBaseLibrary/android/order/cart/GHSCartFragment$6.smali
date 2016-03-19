.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 2

    .prologue
    .line 906
    if-eqz p1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 912
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 914
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)V

    .line 915
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l()V

    .line 916
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 903
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$6;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
