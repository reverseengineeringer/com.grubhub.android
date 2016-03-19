.class Lcom/grubhub/AppBaseLibrary/android/g;
.super Landroid/support/v4/widget/av;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-direct {p0}, Landroid/support/v4/widget/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$1;)V
    .locals 0

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->h(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    .line 1251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1257
    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingTop()I

    move-result v0

    .line 1254
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b()V

    .line 1197
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1167
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/support/v4/widget/au;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/au;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Lcom/grubhub/AppBaseLibrary/android/j;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;

    if-eq v0, v1, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a()V

    .line 1171
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Landroid/view/View;)V

    .line 1172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/j;)Lcom/grubhub/AppBaseLibrary/android/j;

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 1175
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Lcom/grubhub/AppBaseLibrary/android/j;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->ANCHORED:Lcom/grubhub/AppBaseLibrary/android/j;

    if-eq v0, v1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a()V

    .line 1177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Landroid/view/View;)V

    .line 1178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->ANCHORED:Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/j;)Lcom/grubhub/AppBaseLibrary/android/j;

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Lcom/grubhub/AppBaseLibrary/android/j;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

    if-eq v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c(Landroid/view/View;)V

    .line 1182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/j;->COLLAPSED:Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/j;)Lcom/grubhub/AppBaseLibrary/android/j;

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;I)V

    .line 1190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->invalidate()V

    .line 1191
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 1201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    .line 1202
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->h(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v0

    .line 1205
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 1208
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1210
    int-to-float v1, v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1216
    :goto_1
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v2

    add-float v3, v6, v1

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1227
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/support/v4/widget/au;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/au;->a(II)Z

    .line 1228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->invalidate()V

    .line 1229
    return-void

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    .line 1203
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->h(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1212
    :cond_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 1213
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    .line 1218
    :cond_4
    cmpl-float v2, p3, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v2

    add-float v3, v6, v1

    div-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    .line 1219
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v2

    div-float/2addr v1, v5

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    .line 1220
    int-to-float v0, v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 1223
    :cond_5
    cmpl-float v1, p3, v4

    if-gtz v1, :cond_6

    cmpl-float v1, p3, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1224
    :cond_6
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/g;->a:Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    const/4 v0, 0x0

    .line 1242
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/h;

    iget-boolean v0, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    goto :goto_0
.end method
