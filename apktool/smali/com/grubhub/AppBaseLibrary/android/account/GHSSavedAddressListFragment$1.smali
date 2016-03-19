.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;
.end annotation


# instance fields
.field a:F

.field b:J

.field c:J

.field d:F

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

.field private f:I


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->f:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v8

    .line 107
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->f:I

    if-gez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->f:I

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->b:J

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->a:F

    .line 119
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->d:F

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    .line 130
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->d:F

    sub-float v3, v1, v3

    .line 131
    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->d:F

    .line 132
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 133
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->f:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 136
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 141
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    cmpg-float v1, v3, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_5

    :cond_4
    cmpl-float v1, v3, v2

    if-lez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 143
    :cond_5
    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 138
    :cond_6
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    goto :goto_1

    .line 147
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->c:J

    .line 157
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->c:J

    iget-wide v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 161
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 162
    aget v1, v1, v8

    if-nez v1, :cond_8

    .line 163
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;I)V

    goto/16 :goto_0

    .line 167
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 179
    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_b

    .line 181
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v1

    int-to-float v2, v1

    .line 182
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    .line 189
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$1;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    goto/16 :goto_0

    .line 186
    :cond_b
    mul-float/2addr v0, v3

    float-to-long v0, v0

    goto :goto_2

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
