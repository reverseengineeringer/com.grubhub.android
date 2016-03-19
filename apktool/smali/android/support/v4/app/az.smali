.class public Landroid/support/v4/app/az;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/app/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Landroid/support/v4/app/bl;

    invoke-direct {v0}, Landroid/support/v4/app/bl;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Landroid/support/v4/app/bk;

    invoke-direct {v0}, Landroid/support/v4/app/bk;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Landroid/support/v4/app/br;

    invoke-direct {v0}, Landroid/support/v4/app/br;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Landroid/support/v4/app/bq;

    invoke-direct {v0}, Landroid/support/v4/app/bq;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Landroid/support/v4/app/bp;

    invoke-direct {v0}, Landroid/support/v4/app/bp;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Landroid/support/v4/app/bo;

    invoke-direct {v0}, Landroid/support/v4/app/bo;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Landroid/support/v4/app/bn;

    invoke-direct {v0}, Landroid/support/v4/app/bn;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Landroid/support/v4/app/bm;

    invoke-direct {v0}, Landroid/support/v4/app/bm;-><init>()V

    sput-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3290
    sget-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    invoke-interface {v0, p0}, Landroid/support/v4/app/bj;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Landroid/support/v4/app/bj;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/support/v4/app/az;->a:Landroid/support/v4/app/bj;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/ax;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/az;->b(Landroid/support/v4/app/ax;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/ay;Landroid/support/v4/app/bs;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/support/v4/app/az;->b(Landroid/support/v4/app/ay;Landroid/support/v4/app/bs;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/ax;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ax;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ba;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ba;

    .line 795
    invoke-interface {p0, v0}, Landroid/support/v4/app/ax;->a(Landroid/support/v4/app/bz;)V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/ay;Landroid/support/v4/app/bs;)V
    .locals 7

    .prologue
    .line 801
    if-eqz p1, :cond_0

    .line 802
    instance-of v0, p1, Landroid/support/v4/app/be;

    if-eqz v0, :cond_1

    .line 803
    check-cast p1, Landroid/support/v4/app/be;

    .line 804
    iget-object v0, p1, Landroid/support/v4/app/be;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/be;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/be;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/be;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/cf;->a(Landroid/support/v4/app/ay;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/bi;

    if-eqz v0, :cond_2

    .line 810
    check-cast p1, Landroid/support/v4/app/bi;

    .line 811
    iget-object v0, p1, Landroid/support/v4/app/bi;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/bi;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/bi;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bi;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/cf;->a(Landroid/support/v4/app/ay;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 816
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/bd;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Landroid/support/v4/app/bd;

    .line 818
    iget-object v1, p1, Landroid/support/v4/app/bd;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/bd;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/bd;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bd;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/bd;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/bd;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/cf;->a(Landroid/support/v4/app/ay;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
