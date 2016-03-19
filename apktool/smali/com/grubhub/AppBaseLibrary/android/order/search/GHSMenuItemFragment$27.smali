.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e(Landroid/content/Context;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1154
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1155
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v1, v2, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1157
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1158
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1159
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 1160
    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v3

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/i;->ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v5, "restaurant menu item"

    .line 1156
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/i;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_RESTAURANT_NOT_TAKING_FUTURE_ORDERS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v1, v2, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->a:Landroid/content/Context;

    .line 1166
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1167
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1170
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;)V

    move-object v4, v3

    .line 1165
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 1184
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    .line 1183
    invoke-static/range {v4 .. v10}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0
.end method
