.class Landroid/support/v4/app/c;
.super Landroid/support/v4/app/e;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/dg;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/dg;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    .line 384
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/dg;->a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/dg;->a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/dg;->a(Ljava/util/List;)V

    .line 403
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/dg;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 391
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/dg;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 408
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/dg;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/dg;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 398
    return-void
.end method
