.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->q(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V

    .line 1252
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1244
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$28;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
