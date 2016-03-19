.class Lcom/grubhub/AppBaseLibrary/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 446
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/f;->b:Landroid/content/Context;

    .line 448
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->c:Landroid/content/res/Resources;

    .line 449
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v9, 0x7f08037b

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 454
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b()V

    .line 457
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 458
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$2;->a:[I

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->f(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->x()V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->u()V

    goto :goto_0

    .line 473
    :pswitch_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->v()V

    goto :goto_0

    .line 478
    :pswitch_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->w()V

    goto :goto_0

    .line 483
    :pswitch_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->g(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Lcom/grubhub/AppBaseLibrary/android/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/e;->t()V

    goto :goto_0

    .line 488
    :pswitch_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/e;

    .line 490
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/e;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V

    goto :goto_0

    .line 494
    :pswitch_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/f;->b:Landroid/content/Context;

    const v2, 0x7f0803ca

    const-string v3, "%s%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/f;->c:Landroid/content/res/Resources;

    .line 497
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/f;->c:Landroid/content/res/Resources;

    const v6, 0x7f08037c

    .line 498
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 497
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :pswitch_8
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/f;->b:Landroid/content/Context;

    const v2, 0x7f0803c7

    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/f;->c:Landroid/content/res/Resources;

    .line 504
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/f;->c:Landroid/content/res/Resources;

    const v6, 0x7f08037a

    .line 505
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/f;->b:Landroid/content/Context;

    .line 506
    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 504
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :pswitch_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/f;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V

    goto/16 :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
