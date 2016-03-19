.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/grubhub/AppBaseLibrary/android/account/s;

.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/grubhub/AppBaseLibrary/android/account/r;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 487
    return-void
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/account/r;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const-string v2, "first_name_prefill"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    if-eqz p3, :cond_1

    .line 97
    const-string v2, "last_name_prefill"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    if-eqz p4, :cond_2

    .line 100
    const-string v2, "phone_number"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    const-string v2, "info_type"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/r;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v2, "order_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->g()V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d_()V

    .line 309
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d()V

    .line 313
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e()V

    .line 336
    :goto_0
    return-void

    .line 316
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f()V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f080419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Landroid/view/View;)V

    .line 331
    :cond_4
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Ljava/lang/String;Z)V

    .line 332
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "name_save"

    const-string v4, "incomplete fields required"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto :goto_0

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f08041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->m:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Landroid/view/View;)V

    goto :goto_1

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 342
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 343
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setName(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setPhone(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setEmail(Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$6;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$8;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$9;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 383
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a()V

    .line 384
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 390
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/account/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    :cond_1
    return-void

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->o:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    .line 452
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    .line 453
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    .line 454
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->b:Z

    .line 456
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->b:Z

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->o:Landroid/widget/Button;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 462
    :cond_1
    :goto_1
    return-void

    .line 454
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->o:Landroid/widget/Button;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected d_()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 466
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 468
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 469
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/s;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/s;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/s;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/s;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/account/s;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/s;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    const-string v0, "first_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    .line 142
    const-string v0, "last_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    .line 149
    :goto_0
    const-string v0, "phone_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "first_name_prefill"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->g:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_name_prefill"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->h:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "info_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/r;->getInfoEnum(I)Lcom/grubhub/AppBaseLibrary/android/account/r;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    .line 155
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->setHasOptionsMenu(Z)V

    .line 158
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 145
    const-string v0, "first_name_prefill"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    .line 146
    const-string v0, "last_name_prefill"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 162
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    const v0, 0x7f0f0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->l:Landroid/widget/EditText;

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->l:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v0, 0x7f0f011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->m:Landroid/widget/EditText;

    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->m:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v0, 0x7f0f011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 250
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v0, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 252
    const v0, 0x7f0f011b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    const v0, 0x7f0f02a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->o:Landroid/widget/Button;

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->o:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->g()V

    .line 265
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onDetach()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/s;

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 421
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d()V

    .line 423
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 424
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 425
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 427
    :cond_0
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 400
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 404
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v1, v2, :cond_1

    .line 407
    const v1, 0x7f080081

    .line 413
    :goto_0
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 415
    :cond_0
    return-void

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/r;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v1, v2, :cond_2

    .line 409
    const v1, 0x7f08007b

    goto :goto_0

    .line 411
    :cond_2
    const v1, 0x7f08009d

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 439
    :cond_0
    const-string v0, "first_name"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "last_name"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "phone_number"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 270
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStart()V

    .line 273
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v0, v1, :cond_0

    .line 274
    const-string v0, "edit info_name"

    .line 276
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/r;

    if-ne v0, v1, :cond_1

    .line 280
    const-string v0, "edit info_personal"

    .line 282
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0

    .line 286
    :cond_1
    const-string v0, "enter info_personal"

    .line 288
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->g()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 302
    :cond_0
    return-void
.end method
