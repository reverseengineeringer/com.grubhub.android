.class Lcom/grubhub/AppBaseLibrary/android/account/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:F

.field b:J

.field c:J

.field d:F

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

.field private f:I

.field private g:Lcom/grubhub/AppBaseLibrary/android/account/p;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/account/p;)V
    .locals 1

    .prologue
    .line 626
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->f:I

    .line 627
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->g:Lcom/grubhub/AppBaseLibrary/android/account/p;

    .line 628
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 666
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->b:J

    .line 667
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 672
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->a:F

    .line 673
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->d:F

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 684
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 685
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 686
    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 695
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 697
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    .line 698
    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->d:F

    sub-float v2, v1, v2

    .line 699
    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->d:F

    .line 700
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 701
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 702
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->f:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 704
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 709
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    cmpg-float v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2

    :cond_1
    cmpl-float v1, v2, v4

    if-lez v1, :cond_3

    cmpg-float v1, v0, v4

    if-gez v1, :cond_3

    .line 711
    :cond_2
    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 713
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 719
    :cond_3
    :goto_1
    return-void

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    goto :goto_0

    .line 714
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 715
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method private d(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 728
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 729
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->c:J

    .line 730
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->c:J

    iget-wide v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 732
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->g:Lcom/grubhub/AppBaseLibrary/android/account/p;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->g:Lcom/grubhub/AppBaseLibrary/android/account/p;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/account/p;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->g:Lcom/grubhub/AppBaseLibrary/android/account/p;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/account/p;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 734
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 735
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 783
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 749
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    .line 751
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v1

    int-to-float v2, v1

    .line 752
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    .line 759
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 760
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/q$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/q$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/q;)V

    .line 762
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    goto :goto_0

    .line 756
    :cond_3
    mul-float/2addr v0, v3

    float-to-long v0, v0

    goto :goto_1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 632
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return v1

    .line 636
    :cond_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->f:I

    if-gez v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q;->f:I

    .line 640
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/q;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 645
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/q;->b(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 648
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/q;->c(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 651
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/q;->d(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
