.class public Lcom/taplytics/ju;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x17ccbc3b

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/taplytics/ju;->e:I

    iget v2, p0, Lcom/taplytics/ju;->d:I

    iget v3, p0, Lcom/taplytics/ju;->f:I

    iget v4, p0, Lcom/taplytics/ju;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    iget-object v1, p0, Lcom/taplytics/ju;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 57
    iget-boolean v1, p0, Lcom/taplytics/ju;->h:Z

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/taplytics/ju;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/taplytics/ju;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    return-void
.end method
