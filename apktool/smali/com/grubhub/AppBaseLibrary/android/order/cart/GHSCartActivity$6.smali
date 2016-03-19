.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field final synthetic b:Z

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->b:Z

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 225
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_INVALID_PHONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-boolean v11, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->b:Z

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v3

    invoke-static/range {v4 .. v11}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

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

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6$1;

    invoke-direct {v6, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0
.end method
