.class final Landroid/support/v4/app/z;
.super Landroid/support/v4/app/w;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ai;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/k;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/k;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/y;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/v;

.field p:Landroid/support/v4/app/t;

.field q:Landroid/support/v4/app/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 405
    sput-boolean v0, Landroid/support/v4/app/z;->a:Z

    .line 408
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/z;->b:Z

    .line 795
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/z;->z:Landroid/view/animation/Interpolator;

    .line 796
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/z;->A:Landroid/view/animation/Interpolator;

    .line 797
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/z;->B:Landroid/view/animation/Interpolator;

    .line 798
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/z;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/z;->n:I

    .line 477
    iput-object v1, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    .line 478
    iput-object v1, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/support/v4/app/z$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/z$1;-><init>(Landroid/support/v4/app/z;)V

    iput-object v0, p0, Landroid/support/v4/app/z;->y:Ljava/lang/Runnable;

    .line 2278
    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 818
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 819
    sget-object v1, Landroid/support/v4/app/z;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 820
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 821
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 10

    .prologue
    .line 804
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 805
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 807
    sget-object v1, Landroid/support/v4/app/z;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 808
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 809
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 810
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 811
    sget-object v1, Landroid/support/v4/app/z;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 812
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 813
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 814
    return-object v9
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 508
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v0, Landroid/support/v4/e/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 511
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 512
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/v;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    throw p1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 520
    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 521
    :catch_1
    move-exception v0

    .line 522
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 1

    .prologue
    .line 502
    invoke-static {p0}, Landroid/support/v4/view/bp;->d(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/bp;->q(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/z;->a(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/animation/Animation;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 488
    instance-of v0, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    move v1, v2

    .line 498
    :cond_0
    :goto_0
    return v1

    .line 490
    :cond_1
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 491
    check-cast p0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    .line 492
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 493
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_2

    move v1, v2

    .line 494
    goto :goto_0

    .line 492
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b(IZ)I
    .locals 1

    .prologue
    .line 2167
    const/4 v0, -0x1

    .line 2168
    sparse-switch p0, :sswitch_data_0

    .line 2179
    :goto_0
    return v0

    .line 2170
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 2173
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2176
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 2168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 903
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/app/z;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Landroid/support/v4/app/aa;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/aa;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 2143
    const/4 v0, 0x0

    .line 2144
    sparse-switch p0, :sswitch_data_0

    .line 2155
    :goto_0
    return v0

    .line 2146
    :sswitch_0
    const/16 v0, 0x2002

    .line 2147
    goto :goto_0

    .line 2149
    :sswitch_1
    const/16 v0, 0x1001

    .line 2150
    goto :goto_0

    .line 2152
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2144
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private x()V
    .locals 3

    .prologue
    .line 1437
    iget-boolean v0, p0, Landroid/support/v4/app/z;->s:Z

    if-eqz v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/z;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/k;)I
    .locals 4

    .prologue
    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1476
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    .line 1479
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1480
    sget-boolean v1, Landroid/support/v4/app/z;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    monitor-exit p0

    .line 1488
    :goto_0
    return v0

    .line 1485
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1486
    sget-boolean v1, Landroid/support/v4/app/z;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1488
    monitor-exit p0

    goto :goto_0

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 651
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v1, :cond_0

    .line 652
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 655
    :cond_0
    iget v1, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v1, :cond_1

    .line 656
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->g(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_1

    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 659
    :cond_1
    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1384
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1385
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 1399
    :cond_0
    :goto_1
    return-object v0

    .line 1383
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1390
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1392
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1393
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1394
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1392
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1399
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 628
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 629
    if-ne v1, v0, :cond_1

    .line 630
    const/4 v0, 0x0

    .line 641
    :cond_0
    :goto_0
    return-object v0

    .line 632
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 633
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 636
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 637
    if-nez v0, :cond_0

    .line 638
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1405
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1406
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1407
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1421
    :cond_0
    :goto_1
    return-object v0

    .line 1405
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1412
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1414
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1415
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1416
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1421
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 530
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/z;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 2184
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 2271
    :goto_0
    return-object v0

    .line 2188
    :cond_0
    const-string v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2189
    sget-object v1, Landroid/support/v4/app/ab;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2190
    if-nez v0, :cond_10

    .line 2191
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2193
    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2194
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2195
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2197
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 2200
    goto :goto_0

    .line 2203
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2204
    :goto_2
    if-ne v1, v5, :cond_3

    if-ne v7, v5, :cond_3

    if-nez v8, :cond_3

    .line 2205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v3

    .line 2203
    goto :goto_2

    .line 2212
    :cond_3
    if-eq v7, v5, :cond_7

    invoke-virtual {p0, v7}, Landroid/support/v4/app/z;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2213
    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    .line 2214
    invoke-virtual {p0, v8}, Landroid/support/v4/app/z;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2216
    :cond_4
    if-nez v0, :cond_5

    if-eq v1, v5, :cond_5

    .line 2217
    invoke-virtual {p0, v1}, Landroid/support/v4/app/z;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2220
    :cond_5
    sget-boolean v4, Landroid/support/v4/app/z;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_6
    if-nez v0, :cond_9

    .line 2224
    invoke-static {p3, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 2225
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2226
    if-eqz v7, :cond_8

    move v0, v7

    :goto_4
    iput v0, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2227
    iput v1, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2228
    iput-object v8, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2229
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2230
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/z;

    .line 2231
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2232
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 2255
    :goto_5
    iget v0, p0, Landroid/support/v4/app/z;->n:I

    if-ge v0, v2, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2256
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2261
    :goto_6
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 2262
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v4

    .line 2212
    goto/16 :goto_3

    :cond_8
    move v0, v1

    .line 2226
    goto :goto_4

    .line 2234
    :cond_9
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v4, :cond_a

    .line 2237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2244
    :cond_a
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2248
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_b

    .line 2249
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_b
    move-object v1, v0

    goto/16 :goto_5

    .line 2258
    :cond_c
    invoke-virtual {p0, v1}, Landroid/support/v4/app/z;->c(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_6

    .line 2265
    :cond_d
    if-eqz v7, :cond_e

    .line 2266
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2268
    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2269
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2271
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    goto/16 :goto_1
.end method

.method a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 826
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-object v0

    .line 832
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 834
    if-nez v0, :cond_0

    .line 839
    :cond_2
    if-nez p2, :cond_3

    move-object v0, v1

    .line 840
    goto :goto_0

    .line 843
    :cond_3
    invoke-static {p2, p3}, Landroid/support/v4/app/z;->b(IZ)I

    move-result v0

    .line 844
    if-gez v0, :cond_4

    move-object v0, v1

    .line 845
    goto :goto_0

    .line 848
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 863
    if-nez p4, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 864
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->f()I

    move-result p4

    .line 866
    :cond_5
    if-nez p4, :cond_6

    move-object v0, v1

    .line 867
    goto :goto_0

    .line 850
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 852
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v5, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 854
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3, v4, v3}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 856
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v3, v1, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 858
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 860
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 880
    goto :goto_0

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 572
    if-gez p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    new-instance v0, Landroid/support/v4/app/z$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/z$4;-><init>(Landroid/support/v4/app/z;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(Ljava/lang/Runnable;Z)V

    .line 580
    return-void
.end method

.method a(IIIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1183
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/z;->n:I

    if-ne v0, p1, :cond_2

    .line 1213
    :cond_1
    :goto_0
    return-void

    .line 1191
    :cond_2
    iput p1, p0, Landroid/support/v4/app/z;->n:I

    .line 1192
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1194
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1195
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1196
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1197
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1198
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_5

    .line 1199
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1194
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1204
    :cond_3
    if-nez v7, :cond_4

    .line 1205
    invoke-virtual {p0}, Landroid/support/v4/app/z;->g()V

    .line 1208
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/z;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/z;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1209
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->d()V

    .line 1210
    iput-boolean v5, p0, Landroid/support/v4/app/z;->r:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public a(ILandroid/support/v4/app/k;)V
    .locals 4

    .prologue
    .line 1494
    monitor-enter p0

    .line 1495
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    .line 1498
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1499
    if-ge p1, v0, :cond_2

    .line 1500
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1515
    :goto_0
    monitor-exit p0

    .line 1516
    return-void

    .line 1503
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1504
    iget-object v1, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    iget-object v1, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    .line 1508
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/z;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1512
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/z;->a(IIIZ)V

    .line 1180
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 2035
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2036
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2037
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2038
    if-eqz v0, :cond_0

    .line 2039
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2036
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2043
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 619
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 623
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1862
    if-nez p1, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1864
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1868
    if-eqz p2, :cond_4

    move v1, v2

    .line 1869
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1870
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1871
    sget-boolean v3, Landroid/support/v4/app/z;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v3, v3, v4

    .line 1873
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1874
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1875
    iput v2, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1876
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1877
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1878
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1879
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1880
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v5}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1881
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1883
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1869
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1890
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    .line 1891
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1892
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1894
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 1895
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1896
    if-eqz v1, :cond_7

    .line 1897
    iget-object v3, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    iget-object v4, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1898
    sget-boolean v4, Landroid/support/v4/app/z;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: active #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1894
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1905
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    iget-object v1, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 1907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    .line 1909
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/z;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: avail #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1915
    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    .line 1916
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 1917
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1918
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v1, :cond_b

    .line 1919
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v4, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1920
    iget-object v1, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1916
    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1922
    :cond_c
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-attaching retained fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1931
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_11

    .line 1932
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 1933
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1934
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1935
    if-nez v0, :cond_e

    .line 1936
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 1939
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1940
    sget-boolean v3, Landroid/support/v4/app/z;->a:Z

    if-eqz v3, :cond_f

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1942
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1947
    :cond_11
    iput-object v7, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    .line 1951
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1952
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    move v0, v2

    .line 1953
    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1954
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/z;)Landroid/support/v4/app/k;

    move-result-object v1

    .line 1955
    sget-boolean v3, Landroid/support/v4/app/z;->a:Z

    if-eqz v3, :cond_13

    .line 1956
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/k;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    new-instance v3, Landroid/support/v4/e/d;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 1959
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1960
    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1962
    :cond_13
    iget-object v3, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    iget v3, v1, Landroid/support/v4/app/k;->p:I

    if-ltz v3, :cond_14

    .line 1964
    iget v3, v1, Landroid/support/v4/app/k;->p:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/k;)V

    .line 1953
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1968
    :cond_15
    iput-object v7, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1283
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1285
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1286
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1287
    iget-object v2, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1289
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_3

    .line 1290
    iput-boolean v1, p0, Landroid/support/v4/app/z;->r:Z

    .line 1292
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1293
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1294
    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1297
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 1284
    goto :goto_0

    :cond_6
    move v2, v1

    .line 1294
    goto :goto_1
.end method

.method a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 914
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 917
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_2

    .line 919
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 923
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v9, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 926
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_1f

    .line 930
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_4

    .line 1172
    :goto_0
    return-void

    .line 933
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 938
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 939
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 941
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1171
    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_0

    .line 943
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 945
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 946
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 948
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 950
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 951
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 954
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 956
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_9

    .line 957
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 958
    if-le p2, v6, :cond_9

    move p2, v6

    .line 963
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/v;

    .line 964
    iget-object v0, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 965
    iget-object v0, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/z;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/z;

    .line 967
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 968
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 969
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_b

    .line 970
    new-instance v0, Landroid/support/v4/app/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->k()Landroid/support/v4/app/z;

    move-result-object v0

    goto :goto_2

    .line 973
    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_c

    .line 974
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/Fragment;)V

    .line 977
    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_d

    .line 978
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 980
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 981
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_f

    .line 985
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 987
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 988
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 989
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1b

    .line 990
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Z)V

    .line 994
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1001
    :cond_f
    :goto_4
    :pswitch_1
    if-le p2, v5, :cond_17

    .line 1002
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_15

    .line 1005
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_32

    .line 1006
    iget-object v0, p0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/t;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1007
    if-nez v0, :cond_11

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v1, :cond_11

    .line 1008
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view found for id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") for fragment "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 1015
    :cond_11
    :goto_5
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1016
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1018
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 1019
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1020
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1d

    .line 1021
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/bp;->a(Landroid/view/View;Z)V

    .line 1025
    :goto_6
    if-eqz v0, :cond_13

    .line 1026
    invoke-virtual {p0, p1, p3, v5, p4}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1028
    if-eqz v1, :cond_12

    .line 1029
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/z;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1030
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    :cond_12
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1034
    :cond_13
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1041
    :cond_15
    :goto_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1042
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 1043
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1045
    :cond_16
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1049
    :cond_17
    :pswitch_2
    if-le p2, v6, :cond_19

    .line 1050
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1054
    :cond_19
    :pswitch_3
    if-le p2, v9, :cond_6

    .line 1055
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_1a
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1057
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1058
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1059
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 992
    :cond_1b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/aw;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_3

    .line 997
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_4

    .line 1023
    :cond_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/aw;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_6

    .line 1037
    :cond_1e
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_7

    .line 1062
    :cond_1f
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_6

    .line 1063
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1123
    :cond_20
    :goto_8
    :pswitch_4
    if-ge p2, v5, :cond_6

    .line 1124
    iget-boolean v0, p0, Landroid/support/v4/app/z;->t:Z

    if-eqz v0, :cond_21

    .line 1125
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1132
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1133
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1134
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1137
    :cond_21
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1142
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move p2, v5

    .line 1143
    goto/16 :goto_1

    .line 1065
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_23

    .line 1066
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1068
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1071
    :cond_23
    :pswitch_6
    if-ge p2, v9, :cond_25

    .line 1072
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1076
    :cond_25
    :pswitch_7
    if-ge p2, v6, :cond_27

    .line 1077
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_26
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1081
    :cond_27
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_20

    .line 1082
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_28

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 1086
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_29

    .line 1087
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->f(Landroid/support/v4/app/Fragment;)V

    .line 1090
    :cond_29
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1091
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 1093
    iget v0, p0, Landroid/support/v4/app/z;->n:I

    if-lez v0, :cond_31

    iget-boolean v0, p0, Landroid/support/v4/app/z;->t:Z

    if-nez v0, :cond_31

    .line 1094
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1097
    :goto_9
    if-eqz v0, :cond_2a

    .line 1099
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1100
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1101
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1102
    new-instance v2, Landroid/support/v4/app/z$5;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/z$5;-><init>(Landroid/support/v4/app/z;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1114
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1116
    :cond_2a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1118
    :cond_2b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1119
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1120
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_8

    .line 1145
    :cond_2c
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_2d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_2d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2e

    .line 1147
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1150
    :cond_2e
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1151
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1152
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2f

    .line 1153
    new-instance v0, Landroid/support/v4/app/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_2f
    if-nez p5, :cond_6

    .line 1157
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_30

    .line 1158
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->e(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1160
    :cond_30
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/v;

    .line 1161
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1162
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/z;

    .line 1163
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/z;

    goto/16 :goto_1

    :cond_31
    move-object v0, v7

    goto/16 :goto_9

    :cond_32
    move-object v0, v7

    goto/16 :goto_5

    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1063
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1261
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    .line 1264
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->d(Landroid/support/v4/app/Fragment;)V

    .line 1266
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1267
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1272
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1273
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1274
    iput-boolean v3, p0, Landroid/support/v4/app/z;->r:Z

    .line 1276
    :cond_3
    if-eqz p2, :cond_4

    .line 1277
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->c(Landroid/support/v4/app/Fragment;)V

    .line 1280
    :cond_4
    return-void
.end method

.method public a(Landroid/support/v4/app/v;Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1974
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    .line 1976
    iput-object p2, p0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/t;

    .line 1977
    iput-object p3, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    .line 1978
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 1455
    if-nez p2, :cond_0

    .line 1456
    invoke-direct {p0}, Landroid/support/v4/app/z;->x()V

    .line 1458
    :cond_0
    monitor-enter p0

    .line 1459
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/z;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    if-nez v0, :cond_2

    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1462
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    .line 1465
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1467
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/z;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/z;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1470
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1471
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Landroid/support/v4/app/z$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/z$3;-><init>(Landroid/support/v4/app/z;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(Ljava/lang/Runnable;Z)V

    .line 561
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 689
    if-lez v4, :cond_1

    .line 690
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 693
    :goto_0
    if-ge v2, v4, :cond_1

    .line 694
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 696
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 697
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 693
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 704
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 706
    if-lez v4, :cond_2

    .line 707
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 708
    :goto_1
    if-ge v2, v4, :cond_2

    .line 709
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 710
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 711
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 716
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 718
    if-lez v4, :cond_3

    .line 719
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 720
    :goto_2
    if-ge v2, v4, :cond_3

    .line 721
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 722
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 723
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 728
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 729
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 730
    if-lez v4, :cond_4

    .line 731
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 732
    :goto_3
    if-ge v2, v4, :cond_4

    .line 733
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    .line 734
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 735
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/k;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 732
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 741
    :cond_4
    monitor-enter p0

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 743
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 744
    if-lez v3, :cond_5

    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 746
    :goto_4
    if-ge v2, v3, :cond_5

    .line 747
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    .line 748
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 749
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 746
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 754
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 755
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 761
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 762
    if-lez v2, :cond_7

    .line 763
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    :goto_5
    if-ge v1, v2, :cond_7

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 766
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 764
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 758
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 772
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/t;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 775
    iget-object v0, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 776
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 778
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/z;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 779
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 780
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 781
    iget-boolean v0, p0, Landroid/support/v4/app/z;->r:Z

    if-eqz v0, :cond_9

    .line 782
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-boolean v0, p0, Landroid/support/v4/app/z;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 785
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/z;->u:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 786
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Landroid/support/v4/app/z;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    :cond_b
    return-void
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1603
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v3

    .line 1606
    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    .line 1607
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1608
    if-ltz v0, :cond_0

    .line 1611
    iget-object v1, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    .line 1612
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1613
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1614
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1615
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/k;->a(ZLandroid/support/v4/app/m;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/m;

    .line 1616
    invoke-virtual {p0}, Landroid/support/v4/app/z;->i()V

    :goto_1
    move v3, v2

    .line 1672
    goto :goto_0

    .line 1618
    :cond_2
    const/4 v0, -0x1

    .line 1619
    if-nez p2, :cond_3

    if-ltz p3, :cond_a

    .line 1622
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1623
    :goto_2
    if-ltz v1, :cond_4

    .line 1624
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    .line 1625
    if-eqz p2, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1633
    :cond_4
    if-ltz v1, :cond_0

    .line 1636
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9

    .line 1637
    add-int/lit8 v1, v1, -0x1

    .line 1639
    :goto_3
    if-ltz v1, :cond_9

    .line 1640
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    .line 1641
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-ltz p3, :cond_9

    iget v0, v0, Landroid/support/v4/app/k;->p:I

    if-ne p3, v0, :cond_9

    .line 1643
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 1644
    goto :goto_3

    .line 1628
    :cond_7
    if-ltz p3, :cond_8

    iget v0, v0, Landroid/support/v4/app/k;->p:I

    if-eq p3, v0, :cond_4

    .line 1631
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 1632
    goto :goto_2

    :cond_9
    move v0, v1

    .line 1650
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1653
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    iget-object v1, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-le v1, v0, :cond_b

    .line 1656
    iget-object v5, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1658
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1659
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1660
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    .line 1661
    :goto_5
    if-gt v1, v7, :cond_c

    .line 1662
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1661
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_c
    move-object v5, v4

    move v4, v3

    .line 1665
    :goto_6
    if-gt v4, v7, :cond_f

    .line 1666
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    if-ne v4, v7, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/k;->a(ZLandroid/support/v4/app/m;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/m;

    move-result-object v1

    .line 1665
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_6

    :cond_e
    move v1, v3

    .line 1667
    goto :goto_7

    .line 1670
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/z;->i()V

    goto/16 :goto_1
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2089
    .line 2090
    iget-object v1, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 2091
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2092
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2093
    if-eqz v0, :cond_0

    .line 2094
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/4 v2, 0x1

    .line 2091
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2100
    :cond_2
    return v2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2057
    .line 2058
    const/4 v1, 0x0

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    .line 2060
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 2061
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2062
    if-eqz v0, :cond_1

    .line 2063
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2064
    const/4 v2, 0x1

    .line 2065
    if-nez v1, :cond_0

    .line 2066
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 2060
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2074
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2075
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 2076
    iget-object v0, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2077
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2078
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2075
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2083
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/z;->j:Ljava/util/ArrayList;

    .line 2085
    return v2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2104
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2105
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2106
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2107
    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2109
    const/4 v2, 0x1

    .line 2114
    :cond_0
    return v2

    .line 2105
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1426
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1427
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1428
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1433
    :goto_1
    return-object v0

    .line 1426
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1433
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)Landroid/support/v4/app/x;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 884
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 885
    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v0, :cond_1

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->v:Z

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 891
    iget v2, p0, Landroid/support/v4/app/z;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1300
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_4

    .line 1302
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1303
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_1

    .line 1307
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/z;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1308
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1310
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1313
    iput-boolean v3, p0, Landroid/support/v4/app/z;->r:Z

    .line 1315
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1317
    :cond_4
    return-void
.end method

.method b(Landroid/support/v4/app/k;)V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    .line 1597
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/app/z;->i()V

    .line 1599
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2134
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2135
    if-eqz v0, :cond_0

    .line 2136
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2140
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/support/v4/app/z;->h()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2118
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2119
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2120
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2121
    if-eqz v0, :cond_1

    .line 2122
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2123
    const/4 v2, 0x1

    .line 2128
    :cond_0
    return v2

    .line 2119
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 565
    invoke-direct {p0}, Landroid/support/v4/app/z;->x()V

    .line 566
    invoke-virtual {p0}, Landroid/support/v4/app/z;->b()Z

    .line 567
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/z;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Landroid/support/v4/app/z$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/z$2;-><init>(Landroid/support/v4/app/z;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(Ljava/lang/Runnable;Z)V

    .line 545
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 1519
    monitor-enter p0

    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1521
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    .line 1524
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    monitor-exit p0

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1175
    iget v2, p0, Landroid/support/v4/app/z;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1176
    return-void
.end method

.method public c(Landroid/support/v4/app/Fragment;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1320
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    .line 1322
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1323
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1324
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1326
    if-eqz v0, :cond_1

    .line 1327
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/z;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1328
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1330
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1333
    iput-boolean v4, p0, Landroid/support/v4/app/z;->r:Z

    .line 1335
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1337
    :cond_4
    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 1227
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1232
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    .line 1235
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1236
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :goto_1
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1239
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1240
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public d(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1340
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1342
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1343
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1345
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1346
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1349
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1350
    iput-boolean v2, p0, Landroid/support/v4/app/z;->r:Z

    .line 1352
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1353
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1356
    :cond_4
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/support/v4/app/z;->x()V

    .line 550
    invoke-virtual {p0}, Landroid/support/v4/app/z;->b()Z

    .line 551
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/z;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 1246
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1250
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    .line 1255
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/v;->b(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_0
.end method

.method public e(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1359
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1361
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1362
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1363
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    .line 1366
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1372
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1373
    iput-boolean v3, p0, Landroid/support/v4/app/z;->r:Z

    .line 1375
    :cond_4
    iget v2, p0, Landroid/support/v4/app/z;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1378
    :cond_5
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method f(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1699
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    .line 1703
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1704
    iget-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1706
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    goto :goto_0

    .line 1701
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method g(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1711
    .line 1713
    iget-object v0, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    .line 1716
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1717
    iget-object v0, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1718
    iget-object v0, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    .line 1719
    iput-object v1, p0, Landroid/support/v4/app/z;->w:Landroid/os/Bundle;

    .line 1722
    :goto_0
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1723
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->f(Landroid/support/v4/app/Fragment;)V

    .line 1725
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 1726
    if-nez v0, :cond_2

    .line 1727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1729
    :cond_2
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1732
    :cond_3
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_5

    .line 1733
    if-nez v0, :cond_4

    .line 1734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1737
    :cond_4
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1740
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1218
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1219
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1220
    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {p0, v0}, Landroid/support/v4/app/z;->b(Landroid/support/v4/app/Fragment;)V

    .line 1218
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1533
    iget-boolean v1, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v1, :cond_0

    .line 1534
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v3}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1546
    :goto_0
    monitor-enter p0

    .line 1547
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1548
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    iget-boolean v0, p0, Landroid/support/v4/app/z;->v:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1571
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1572
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1573
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/ap;

    if-eqz v5, :cond_3

    .line 1574
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1571
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1551
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1552
    iget-object v1, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1553
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    .line 1555
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1556
    iget-object v1, p0, Landroid/support/v4/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1557
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/app/z;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1558
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    iput-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    move v1, v2

    .line 1561
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1562
    iget-object v4, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1563
    iget-object v4, p0, Landroid/support/v4/app/z;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1561
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1558
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1565
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/z;->e:Z

    move v1, v0

    .line 1567
    goto :goto_0

    .line 1577
    :cond_8
    if-nez v4, :cond_9

    .line 1578
    iput-boolean v2, p0, Landroid/support/v4/app/z;->v:Z

    .line 1579
    invoke-virtual {p0}, Landroid/support/v4/app/z;->g()V

    .line 1582
    :cond_9
    return v1
.end method

.method i()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Landroid/support/v4/app/z;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1587
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1588
    iget-object v0, p0, Landroid/support/v4/app/z;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/y;

    invoke-interface {v0}, Landroid/support/v4/app/y;->a()V

    .line 1587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1591
    :cond_0
    return-void
.end method

.method j()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1676
    const/4 v1, 0x0

    .line 1677
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1678
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1680
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v2, :cond_1

    .line 1681
    if-nez v1, :cond_0

    .line 1682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1686
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1687
    sget-boolean v2, Landroid/support/v4/app/z;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1686
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1691
    :cond_3
    return-object v1
.end method

.method k()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/app/z;->h()Z

    .line 1748
    sget-boolean v0, Landroid/support/v4/app/z;->b:Z

    if-eqz v0, :cond_0

    .line 1758
    iput-boolean v1, p0, Landroid/support/v4/app/z;->s:Z

    .line 1761
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1856
    :cond_1
    :goto_0
    return-object v3

    .line 1766
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1767
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1769
    :goto_1
    if-ge v5, v6, :cond_9

    .line 1770
    iget-object v0, p0, Landroid/support/v4/app/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1771
    if-eqz v0, :cond_11

    .line 1772
    iget v2, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_3

    .line 1773
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 1780
    :cond_3
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1781
    aput-object v2, v7, v5

    .line 1783
    iget v8, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_8

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_8

    .line 1784
    invoke-virtual {p0, v0}, Landroid/support/v4/app/z;->g(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1786
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_6

    .line 1787
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v8, :cond_4

    .line 1788
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 1792
    :cond_4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_5

    .line 1793
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1795
    :cond_5
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/z;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1797
    iget v8, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_6

    .line 1798
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1808
    :cond_6
    :goto_2
    sget-boolean v8, Landroid/support/v4/app/z;->a:Z

    if-eqz v8, :cond_7

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    .line 1769
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    .line 1805
    :cond_8
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_2

    .line 1813
    :cond_9
    if-nez v2, :cond_a

    .line 1814
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1822
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1823
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1824
    if-lez v5, :cond_d

    .line 1825
    new-array v1, v5, [I

    move v2, v4

    .line 1826
    :goto_4
    if-ge v2, v5, :cond_e

    .line 1827
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v0, v1, v2

    .line 1828
    aget v0, v1, v2

    if-gez v0, :cond_b

    .line 1829
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/z;->a(Ljava/lang/RuntimeException;)V

    .line 1833
    :cond_b
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_d
    move-object v1, v3

    .line 1840
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 1841
    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1842
    if-lez v5, :cond_10

    .line 1843
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1844
    :goto_5
    if-ge v2, v5, :cond_10

    .line 1845
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/k;)V

    aput-object v4, v3, v2

    .line 1846
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 1852
    :cond_10
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1853
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1854
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1855
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1856
    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_3
.end method

.method public l()V
    .locals 1

    .prologue
    .line 1981
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z;->s:Z

    .line 1982
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1985
    iput-boolean v1, p0, Landroid/support/v4/app/z;->s:Z

    .line 1986
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 1987
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1990
    iput-boolean v1, p0, Landroid/support/v4/app/z;->s:Z

    .line 1991
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 1992
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    iput-boolean v1, p0, Landroid/support/v4/app/z;->s:Z

    .line 1996
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 1997
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2000
    iput-boolean v1, p0, Landroid/support/v4/app/z;->s:Z

    .line 2001
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2002
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 2005
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2006
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 2012
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->s:Z

    .line 2014
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2015
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 2018
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2019
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 2022
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2023
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 670
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v1, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 678
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->t:Z

    .line 2027
    invoke-virtual {p0}, Landroid/support/v4/app/z;->h()Z

    .line 2028
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/z;->a(IZ)V

    .line 2029
    iput-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    .line 2030
    iput-object v1, p0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/t;

    .line 2031
    iput-object v1, p0, Landroid/support/v4/app/z;->q:Landroid/support/v4/app/Fragment;

    .line 2032
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2047
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2048
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2049
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 2047
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2054
    :cond_1
    return-void
.end method

.method w()Landroid/support/v4/view/ai;
    .locals 0

    .prologue
    .line 2275
    return-object p0
.end method
