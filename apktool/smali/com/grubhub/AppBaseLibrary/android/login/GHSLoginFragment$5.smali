.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 498
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 499
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 502
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->appliesToVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 509
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 510
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    .line 544
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->isRepeat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->o(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->p(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    goto/16 :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 485
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V

    return-void
.end method
