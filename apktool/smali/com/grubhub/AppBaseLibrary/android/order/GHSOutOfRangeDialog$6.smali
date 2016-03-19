.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 292
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->dismiss()V

    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/h;->r()V

    .line 297
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 287
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
