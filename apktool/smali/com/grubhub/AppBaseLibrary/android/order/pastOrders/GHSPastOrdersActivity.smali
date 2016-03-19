.class public Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/i;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/c;
.implements Lcom/grubhub/AppBaseLibrary/android/order/h;
.implements Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/a;
.implements Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/f;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method private k()V
    .locals 5

    .prologue
    const v4, 0x7f0f008f

    .line 163
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v4}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 168
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;->a()Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    move-result-object v1

    .line 171
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 176
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 193
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 198
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f008f

    .line 199
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Landroid/os/Parcelable;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 202
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 283
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-static {v0, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 285
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f008f

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 286
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 289
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 1

    .prologue
    .line 208
    invoke-static {p0, p1, p3, p2}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->finish()V

    .line 212
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 223
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;ZLjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f008f

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    const/4 v3, 0x0

    .line 276
    invoke-static {v2, p1, v3, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZLjava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 279
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 325
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->invalidateOptionsMenu()V

    .line 267
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 300
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 303
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public g_()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 155
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    move-result v1

    .line 156
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/w;->d()Z

    .line 160
    :cond_0
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->finish()V

    .line 187
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    if-nez p2, :cond_1

    .line 79
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->i()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 83
    const-string v0, "restaurant_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0

    .line 88
    :cond_2
    const/16 v0, 0x17

    if-ne p2, v0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->s()V

    goto :goto_0

    .line 91
    :cond_3
    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->s()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v2

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    instance-of v3, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v3, :cond_2

    .line 120
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 129
    :goto_0
    if-nez v0, :cond_1

    .line 130
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    .line 133
    invoke-virtual {v2}, Landroid/support/v4/app/w;->e()I

    move-result v1

    .line 134
    const/4 v0, 0x0

    .line 135
    if-lez v1, :cond_0

    .line 136
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Landroid/support/v4/app/w;->b(I)Landroid/support/v4/app/x;

    move-result-object v0

    .line 138
    :cond_0
    if-eqz v0, :cond_4

    .line 139
    invoke-interface {v0}, Landroid/support/v4/app/x;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    instance-of v3, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    if-nez v3, :cond_3

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    if-eqz v0, :cond_5

    .line 123
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/w;->d()Z

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->j()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "current_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    .line 64
    :cond_0
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->c:Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->k()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->invalidateOptionsMenu()V

    .line 102
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "current_fragment"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->a()V

    .line 253
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;I)V

    .line 254
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->j()V

    .line 261
    return-void
.end method
