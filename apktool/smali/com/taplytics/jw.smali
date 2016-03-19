.class public Lcom/taplytics/jw;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Lcom/taplytics/dt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/taplytics/dt;

    invoke-direct {v0, p1, p0}, Lcom/taplytics/dt;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/taplytics/jw;->d:Lcom/taplytics/dt;

    .line 48
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taplytics/jw;->a:J

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taplytics/jw;->b:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taplytics/jw;->c:F

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    sget-object v0, Lcom/taplytics/kb;->caribou:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taplytics/jw;->a:J

    sub-long/2addr v0, v2

    .line 71
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/taplytics/jw;->b:F

    iget v1, p0, Lcom/taplytics/jw;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/taplytics/jk;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->k()Lorg/json/JSONArray;

    move-result-object v1

    .line 75
    iget v0, p0, Lcom/taplytics/jw;->b:F

    iget v2, p0, Lcom/taplytics/jw;->c:F

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/taplytics/jk;->b(FFLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 78
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const-string v5, "initProperties"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "anID"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 80
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v4

    const-string v5, "touchUp"

    invoke-virtual {v4, v5, v3}, Lcom/taplytics/cc;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 81
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "Touch Overlay Problem"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taplytics/jw;->d:Lcom/taplytics/dt;

    invoke-virtual {v0, p1}, Lcom/taplytics/dt;->a(Landroid/view/MotionEvent;)Z

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
