.class public Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field private f:Lcom/grubhub/AppBaseLibrary/android/order/h;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/i;

.field private l:Ljava/lang/String;

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 59
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/i;->ORDER:Lcom/grubhub/AppBaseLibrary/android/order/i;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->k:Lcom/grubhub/AppBaseLibrary/android/order/i;

    .line 332
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/i;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v2, "restaurant_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "restaurant_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "offers_pickup"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v2, "search_address"

    invoke-static {p3}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v2, "mode"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    const-string v2, "location"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/i;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->k:Lcom/grubhub/AppBaseLibrary/android/order/i;

    return-object v0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 257
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v6

    .line 258
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 259
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 261
    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setName(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCustomerContactPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setPhone(Ljava/lang/String;)V

    .line 266
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setEmail(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 272
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$4;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$5;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 287
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;

    invoke-direct {v2, p0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 300
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$7;

    invoke-direct {v2, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a()V

    .line 313
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/order/h;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->f:Lcom/grubhub/AppBaseLibrary/android/order/h;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->f:Lcom/grubhub/AppBaseLibrary/android/order/h;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    if-eqz v1, :cond_2

    .line 125
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->f:Lcom/grubhub/AppBaseLibrary/android/order/h;

    goto :goto_0

    .line 126
    :cond_2
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/h;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/h;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->f:Lcom/grubhub/AppBaseLibrary/android/order/h;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->g:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->h:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offers_pickup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->i:Z

    .line 138
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 139
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/i;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->k:Lcom/grubhub/AppBaseLibrary/android/order/i;

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->l:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 142
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 150
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 158
    const v2, 0x7f0f00f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a:Landroid/view/View;

    .line 159
    const v2, 0x7f0f00fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b:Landroid/view/View;

    .line 160
    const v2, 0x7f0f00fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c:Landroid/view/View;

    .line 161
    const v2, 0x7f0f00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->d:Landroid/view/View;

    .line 163
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a:Landroid/view/View;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->i:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->c:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0f00f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0803f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->h:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-object v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string v1, "restaurant_id"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "restaurant_name"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "offers_pickup"

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "search_address"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "mode"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->k:Lcom/grubhub/AppBaseLibrary/android/order/i;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "location"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "DOES_NOT_DELIVER"

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->g()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Z)V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->b(Z)V

    .line 249
    :cond_0
    return-void
.end method
