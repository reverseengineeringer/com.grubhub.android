.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 326
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v4, v7

    :cond_0
    invoke-static {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Z)Z

    .line 331
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-direct {v1, v2, v6, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->j(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/b;->a()V

    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-direct {v1, v2, v6, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->k(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 355
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$3;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 363
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->l(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;->a()V

    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$4;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    .line 373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 398
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->n(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/c;->a()V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1

    .line 409
    const v1, 0x7f0802a6

    const v2, 0x7f08032f

    const v3, 0x7f0803e5

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 411
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Z)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
