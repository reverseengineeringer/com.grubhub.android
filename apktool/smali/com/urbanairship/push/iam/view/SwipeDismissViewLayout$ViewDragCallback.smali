.class Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;
.super Landroid/support/v4/widget/av;
.source "SourceFile"


# instance fields
.field private capturedView:Landroid/view/View;

.field private dragPercent:F

.field private isDismissed:Z

.field private startLeft:I

.field private startTop:I

.field final synthetic this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;


# direct methods
.method private constructor <init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/av;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .prologue
    .line 338
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    .line 353
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 377
    :cond_0
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;->onDragStateChanged(Landroid/view/View;I)V

    .line 382
    :cond_1
    if-nez p1, :cond_4

    .line 383
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->listener:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$100(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;->onDismissed(Landroid/view/View;)V

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->removeView(Landroid/view/View;)V

    .line 391
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    .line 393
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 359
    iget v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 361
    if-lez v0, :cond_0

    .line 362
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    .line 365
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 366
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 367
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->invalidate()V

    .line 369
    :cond_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 401
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F
    invoke-static {v3}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$200(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 402
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 407
    :goto_0
    iget v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->minFlingVelocity:F
    invoke-static {v4}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$200(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->dragPercent:F

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    .line 410
    iget-boolean v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->isDismissed:Z

    if-eqz v1, :cond_6

    .line 411
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 412
    :goto_1
    iget-object v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/au;
    invoke-static {v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$300(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/au;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/au;->a(II)Z

    .line 417
    :goto_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->invalidate()V

    .line 418
    return-void

    :cond_2
    move v0, v2

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    iget v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 411
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_1

    .line 414
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->this$0:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    # getter for: Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->dragHelper:Landroid/support/v4/widget/au;
    invoke-static {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->access$300(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/au;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startLeft:I

    iget v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->startTop:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/au;->a(II)Z

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$ViewDragCallback;->capturedView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
