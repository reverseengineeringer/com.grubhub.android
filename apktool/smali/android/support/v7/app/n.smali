.class public Landroid/support/v7/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/p;


# instance fields
.field private final a:Landroid/support/v7/app/o;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/r;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/n;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 162
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/r;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/n;->j:Z

    .line 204
    if-eqz p2, :cond_0

    .line 205
    new-instance v0, Landroid/support/v7/app/w;

    invoke-direct {v0, p2}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    .line 206
    new-instance v0, Landroid/support/v7/app/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$1;-><init>(Landroid/support/v7/app/n;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 229
    iput p5, p0, Landroid/support/v7/app/n;->g:I

    .line 230
    iput p6, p0, Landroid/support/v7/app/n;->h:I

    .line 231
    if-nez p4, :cond_5

    .line 232
    new-instance v0, Landroid/support/v7/app/q;

    iget-object v1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    invoke-interface {v1}, Landroid/support/v7/app/o;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/q;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    .line 238
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/graphics/drawable/Drawable;

    .line 239
    return-void

    .line 216
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/p;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 217
    check-cast v0, Landroid/support/v7/app/p;

    invoke-interface {v0}, Landroid/support/v7/app/p;->a()Landroid/support/v7/app/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 218
    :cond_1
    instance-of v0, p1, Landroid/support/v7/app/v;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 219
    check-cast v0, Landroid/support/v7/app/v;

    invoke-interface {v0}, Landroid/support/v7/app/v;->d()Landroid/support/v7/app/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 220
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 221
    new-instance v0, Landroid/support/v7/app/u;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/u;-><init>(Landroid/app/Activity;Landroid/support/v7/app/n$1;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 222
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 223
    new-instance v0, Landroid/support/v7/app/t;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/t;-><init>(Landroid/app/Activity;Landroid/support/v7/app/n$1;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 225
    :cond_4
    new-instance v0, Landroid/support/v7/app/s;

    invoke-direct {v0, p1}, Landroid/support/v7/app/s;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    goto :goto_0

    .line 235
    :cond_5
    check-cast p4, Landroid/support/v7/app/r;

    iput-object p4, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/n;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/app/n;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/n;->c()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/n;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/app/n;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 297
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 251
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/r;->a(F)V

    .line 256
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/n;->h:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/n;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/r;->a(F)V

    goto :goto_0

    .line 257
    :cond_2
    iget v1, p0, Landroid/support/v7/app/n;->g:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Landroid/support/v7/app/n;->f:Z

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/app/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()V

    .line 277
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 462
    iget-boolean v0, p0, Landroid/support/v7/app/n;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    invoke-interface {v0}, Landroid/support/v7/app/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n;->j:Z

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/o;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 469
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/r;->a(F)V

    .line 391
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eq p1, v0, :cond_0

    .line 368
    if-eqz p1, :cond_2

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/n;->h:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/n;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 375
    :goto_1
    iput-boolean p1, p0, Landroid/support/v7/app/n;->e:Z

    .line 377
    :cond_0
    return-void

    .line 369
    :cond_1
    iget v1, p0, Landroid/support/v7/app/n;->g:I

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/n;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Landroid/support/v7/app/n;->c()V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    invoke-interface {v0}, Landroid/support/v7/app/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/o;

    invoke-interface {v0, p1}, Landroid/support/v7/app/o;->a(I)V

    .line 473
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/r;->a(F)V

    .line 418
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eqz v0, :cond_0

    .line 419
    iget v0, p0, Landroid/support/v7/app/n;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->b(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/r;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/r;->a(F)V

    .line 403
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eqz v0, :cond_0

    .line 404
    iget v0, p0, Landroid/support/v7/app/n;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->b(I)V

    .line 406
    :cond_0
    return-void
.end method
