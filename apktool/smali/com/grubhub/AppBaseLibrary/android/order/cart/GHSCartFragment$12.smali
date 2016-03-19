.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;
.end annotation


# instance fields
.field a:F

.field b:J

.field c:J

.field d:F

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

.field private f:I


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->f:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 165
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->f:I

    if-gez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->f:I

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_1
    :goto_0
    return v6

    .line 171
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->b:J

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->a:F

    .line 178
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->d:F

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v1

    .line 189
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->d:F

    sub-float v3, v2, v3

    .line 190
    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->d:F

    .line 191
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 192
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->f:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 194
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 195
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 200
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    cmpg-float v2, v3, v0

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_4

    :cond_3
    cmpl-float v2, v3, v0

    if-lez v2, :cond_1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 202
    :cond_4
    add-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    goto :goto_1

    .line 206
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->c:J

    .line 216
    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->c:J

    iget-wide v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_8

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 218
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 220
    const-wide/16 v2, 0x64

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_7

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v0

    int-to-float v0, v0

    .line 231
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 255
    :cond_8
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 262
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    .line 264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v0

    int-to-float v2, v0

    .line 265
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    float-to-long v0, v0

    .line 272
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 273
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    goto/16 :goto_0

    .line 269
    :cond_a
    mul-float/2addr v1, v7

    float-to-long v2, v1

    move-wide v8, v2

    move v2, v0

    move-wide v0, v8

    goto :goto_2

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
