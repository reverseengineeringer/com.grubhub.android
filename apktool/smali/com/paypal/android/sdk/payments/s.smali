.class public final Lcom/paypal/android/sdk/payments/s;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Date;

.field private c:Ljava/util/Timer;

.field private d:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final e:Landroid/content/ServiceConnection;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/bn;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bn;-><init>(Lcom/paypal/android/sdk/payments/s;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/s;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/s;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/s;)Lcom/paypal/android/sdk/payments/am;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/s;->c()Lcom/paypal/android/sdk/payments/am;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/s;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/s;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/s;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/h;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method

.method private c()Lcom/paypal/android/sdk/payments/am;
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/payments/bp;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bp;-><init>(Lcom/paypal/android/sdk/payments/s;)V

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/s;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    const-string v1, "Service state invalid.  Did you start the PayPalService?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/s;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/s;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/paypal/android/sdk/payments/bw;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/s;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/paypal/android/sdk/payments/bw;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bw;->d()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    const-string v1, "Service extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/s;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/s;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bw;->e()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    const-string v1, "Extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/payments/s;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/s;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/s;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/s;->b:Ljava/util/Date;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/s;->c()Lcom/paypal/android/sdk/payments/am;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/am;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/s;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->b:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/s;->b()V

    return-void
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/s;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->c:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected request code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call it a cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/s;->finish()V

    return-void

    :pswitch_1
    if-eqz p3, :cond_2

    const-string v0, "com.paypal.android.sdk.authorization"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalAuthorization;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.paypal.android.sdk.authorization"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/s;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    const-string v1, "result was OK, have data, but no authorization state in bundle, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    const-string v1, "result was OK, no intent data, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/paypal/android/sdk/ev;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/ev;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ev;->a()V

    new-instance v0, Lcom/paypal/android/sdk/eu;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/eu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/eu;->a()V

    new-instance v0, Lcom/paypal/android/sdk/et;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/et;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lcom/paypal/android/sdk/payments/s;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v2, Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/paypal/android/sdk/payments/h;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/et;->a(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/s;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/paypal/android/sdk/payments/s;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/s;->f:Z

    invoke-static {p0}, Lcom/paypal/android/sdk/ft;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/ft;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/paypal/android/sdk/es;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/es;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/paypal/android/sdk/es;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/s;->setContentView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/paypal/android/sdk/es;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/em;->y:Lcom/paypal/android/sdk/em;

    invoke-static {v1}, Lcom/paypal/android/sdk/ek;->a(Lcom/paypal/android/sdk/em;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/em;->y:Lcom/paypal/android/sdk/em;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/em;)V

    return-void
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/paypal/android/sdk/em;->bc:Lcom/paypal/android/sdk/em;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/em;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/paypal/android/sdk/payments/bm;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bm;-><init>(Lcom/paypal/android/sdk/payments/s;)V

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/paypal/android/sdk/em;->be:Lcom/paypal/android/sdk/em;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/by;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/em;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->o()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()V

    :cond_0
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/s;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/s;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/s;->f:Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
