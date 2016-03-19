.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->d(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->d(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 198
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 202
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->l(Z)V

    .line 204
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/h;->s()V

    .line 207
    :cond_0
    return-void
.end method
