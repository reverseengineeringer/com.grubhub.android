.class public Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/d;
.implements Lcom/braintreepayments/api/e;
.implements Lcom/braintreepayments/api/h;
.implements Lcom/braintreepayments/api/j;


# instance fields
.field private a:Lcom/braintreepayments/api/c;

.field private b:Lcom/braintreepayments/api/dropin/a;

.field private c:Lcom/braintreepayments/api/dropin/m;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Landroid/os/Bundle;

.field private f:Lcom/braintreepayments/api/dropin/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 332
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/braintreepayments/api/dropin/a;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    iget-object v5, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/a;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    .line 336
    :cond_0
    return-void
.end method

.method private a(Lcom/braintreepayments/api/dropin/c;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1, p2}, Lcom/braintreepayments/api/dropin/c;->a(Landroid/os/Bundle;)V

    .line 453
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->c()V

    .line 149
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.initialized"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 151
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->o()V

    .line 153
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    const-string v1, "com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Ljava/util/List;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->i()V

    .line 161
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->g()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/a;->c()V

    .line 244
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->h()V

    .line 245
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->c:Lcom/braintreepayments/api/dropin/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/m;->b(I)V

    .line 246
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 307
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b()V

    .line 308
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 311
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/b;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/b;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v3

    .line 313
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->c:Lcom/braintreepayments/api/dropin/m;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/braintreepayments/api/dropin/m;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    iget-object v5, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/m;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->c:Lcom/braintreepayments/api/dropin/m;

    .line 318
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Z)V

    .line 319
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A client token must be specified with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_CLIENT_TOKEN extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    return-object v0
.end method

.method private j()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_default_action_bar_text:I

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 378
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_0
    :goto_1
    return-void

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    goto :goto_1
.end method

.method private k()Lcom/braintreepayments/api/dropin/d;
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/d;

    .line 390
    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/braintreepayments/api/dropin/e;

    invoke-direct {v0}, Lcom/braintreepayments/api/dropin/e;-><init>()V

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/e;->a()Lcom/braintreepayments/api/dropin/d;

    move-result-object v0

    .line 394
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "add-card.start"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/b;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/a;->a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    .line 279
    return-void
.end method

.method public a(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 5

    .prologue
    .line 213
    instance-of v0, p1, Lcom/braintreepayments/api/models/Card;

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "venmo-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "add-card.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/a;->d()V

    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Lcom/braintreepayments/api/models/PaymentMethod;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 233
    :cond_2
    instance-of v0, p1, Lcom/braintreepayments/api/models/PayPalAccount;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "add-paypal.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f()V

    goto :goto_0

    .line 236
    :cond_3
    instance-of v0, p1, Lcom/braintreepayments/api/models/AndroidPayCard;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "add-android-pay.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/b;

    # getter for: Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/b;->access$000(Lcom/braintreepayments/api/dropin/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    .line 274
    :goto_0
    return-void

    .line 255
    :cond_0
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/b;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/c;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/k;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/f;

    if-eqz v0, :cond_3

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.exit.developer-error"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    goto :goto_0

    .line 262
    :cond_3
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/i;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/j;

    if-eqz v0, :cond_5

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.exit.server-error"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 266
    :cond_5
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/g;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.exit.server-unavailable"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->h()V

    goto :goto_0
.end method

.method public a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    .line 143
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/b;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/b;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    .line 340
    return-void
.end method

.method protected b(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.exit.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    const-string v1, "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    const-string v1, "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE"

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    .line 290
    return-void
.end method

.method protected c()Lcom/google/android/gms/wallet/Cart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_CART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method protected d()Z
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_ANDROID_PAY_IS_BILLING_AGREEMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x2e64

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 184
    if-ne p1, v2, :cond_0

    .line 186
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/b;->inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b()V

    .line 188
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/dropin/a;->a(IILandroid/content/Intent;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-nez p2, :cond_2

    .line 192
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "add-paypal.user-canceled"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 194
    :cond_2
    if-ne p1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    # getter for: Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/b;->access$000(Lcom/braintreepayments/api/dropin/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->h()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    const-string v1, "sdk.exit.user-canceled"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 426
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(I)V

    .line 427
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lcom/braintreepayments/api/dropin/k;->bt_drop_in_ui:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setContentView(I)V

    .line 121
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    .line 122
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->k()Lcom/braintreepayments/api/dropin/d;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->f:Lcom/braintreepayments/api/dropin/d;

    .line 123
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->j()V

    .line 125
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/braintreepayments/api/c;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/braintreepayments/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    .line 126
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->e()V

    .line 132
    :goto_1
    return-void

    .line 121
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/braintreepayments/api/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)V

    .line 130
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->onBackPressed()V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/c;->b(Landroid/app/Activity;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    # getter for: Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/b;->access$000(Lcom/braintreepayments/api/dropin/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b:Lcom/braintreepayments/api/dropin/a;

    invoke-direct {p0, v0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/c;Landroid/os/Bundle;)V

    .line 442
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->c:Lcom/braintreepayments/api/dropin/m;

    invoke-direct {p0, v0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/c;Landroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/c;->a(Landroid/os/Bundle;)V

    .line 447
    :cond_1
    return-void
.end method
