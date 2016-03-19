.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/c;
.implements Lcom/grubhub/AppBaseLibrary/android/account/d;
.implements Lcom/grubhub/AppBaseLibrary/android/account/f;
.implements Lcom/grubhub/AppBaseLibrary/android/account/i;
.implements Lcom/grubhub/AppBaseLibrary/android/account/m;
.implements Lcom/grubhub/AppBaseLibrary/android/account/s;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/support/v4/app/w;

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V
    .locals 4

    .prologue
    .line 299
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 301
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f007e

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 302
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 303
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 305
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    const-string v0, ""

    .line 237
    if-eqz p1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_1
    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "name_save"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 402
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 261
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800c3

    .line 263
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800c1

    .line 264
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800c2

    .line 265
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800e1

    .line 272
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$8;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 335
    :cond_0
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 348
    if-eqz p4, :cond_0

    .line 349
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$10;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$11;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 364
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 378
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 413
    const v0, 0x7f0f0316

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 414
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    if-eqz p2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 423
    :goto_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 425
    const/16 v1, 0x37

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 428
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007e

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 254
    invoke-static {v2, p1, v3, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 257
    return-void
.end method

.method protected a(ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V
    .locals 3

    .prologue
    .line 185
    if-eqz p1, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-eq p3, v0, :cond_2

    .line 186
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/login/a;->LOGIN:Lcom/grubhub/AppBaseLibrary/android/login/a;

    const/4 v1, 0x1

    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->finish()V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-ne p3, v0, :cond_1

    .line 191
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 192
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;)V

    .line 313
    :cond_0
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 341
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b()V

    .line 344
    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007e

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    const/4 v3, 0x0

    .line 324
    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/e;Z)Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    .line 325
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 327
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 439
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->c:Landroid/view/View;

    .line 76
    const v0, 0x7f0f0073

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->d:Landroid/view/View;

    .line 77
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->e:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->f:Landroid/view/View;

    .line 79
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->g:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->h:Landroid/view/View;

    .line 81
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->i:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->j:Landroid/view/View;

    .line 83
    const v0, 0x7f0f007d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->k:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->i:Landroid/widget/TextView;

    const-string v1, "********"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->k:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->l:Landroid/support/v4/app/w;

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->onBackPressed()V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(I)V

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 208
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->invalidateOptionsMenu()V

    .line 210
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->e:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->g:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 198
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStart()V

    .line 201
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "account settings"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 204
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStop()V

    .line 222
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->g()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Z)V

    .line 228
    return-void
.end method
