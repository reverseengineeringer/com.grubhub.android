.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007f

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->c:Ljava/lang/String;

    .line 216
    invoke-static {v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 219
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
