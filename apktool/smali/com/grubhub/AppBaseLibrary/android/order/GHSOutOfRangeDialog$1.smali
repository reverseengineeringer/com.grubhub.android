.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$8;->a:[I

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/h;->g_()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
