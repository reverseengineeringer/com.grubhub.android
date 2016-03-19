.class public Landroid/support/v4/view/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/dz;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 646
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 647
    new-instance v0, Landroid/support/v4/view/dy;

    invoke-direct {v0}, Landroid/support/v4/view/dy;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    .line 659
    :goto_0
    return-void

    .line 648
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 649
    new-instance v0, Landroid/support/v4/view/dx;

    invoke-direct {v0}, Landroid/support/v4/view/dx;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    goto :goto_0

    .line 650
    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 651
    new-instance v0, Landroid/support/v4/view/dv;

    invoke-direct {v0}, Landroid/support/v4/view/dv;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    goto :goto_0

    .line 652
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 653
    new-instance v0, Landroid/support/v4/view/dw;

    invoke-direct {v0}, Landroid/support/v4/view/dw;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    goto :goto_0

    .line 654
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 655
    new-instance v0, Landroid/support/v4/view/dt;

    invoke-direct {v0}, Landroid/support/v4/view/dt;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    goto :goto_0

    .line 657
    :cond_4
    new-instance v0, Landroid/support/v4/view/dr;

    invoke-direct {v0}, Landroid/support/v4/view/dr;-><init>()V

    sput-object v0, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Landroid/support/v4/view/dq;->c:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Landroid/support/v4/view/dq;->d:Ljava/lang/Runnable;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/dq;->e:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/dq;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Landroid/support/v4/view/dq;->e:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/view/dq;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/dq;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/dq;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/dq;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/dq;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Landroid/support/v4/view/dq;->e:I

    return v0
.end method


# virtual methods
.method public a(F)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 692
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;F)V

    .line 694
    :cond_0
    return-object p0
.end method

.method public a(J)Landroid/support/v4/view/dq;
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;J)V

    .line 677
    :cond_0
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ed;)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1315
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;Landroid/support/v4/view/ed;)V

    .line 1317
    :cond_0
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ef;)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1334
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;Landroid/support/v4/view/ef;)V

    .line 1336
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 815
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 817
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1049
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/dz;->a(Landroid/support/v4/view/dq;Landroid/view/View;)V

    .line 1051
    :cond_0
    return-void
.end method

.method public b(F)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 726
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->b(Landroid/support/v4/view/dq;Landroid/view/View;F)V

    .line 728
    :cond_0
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1235
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/dz;->b(Landroid/support/v4/view/dq;Landroid/view/View;)V

    .line 1237
    :cond_0
    return-void
.end method

.method public c(F)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 743
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->c(Landroid/support/v4/view/dq;Landroid/view/View;F)V

    .line 745
    :cond_0
    return-object p0
.end method

.method public d(F)Landroid/support/v4/view/dq;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/support/v4/view/dq;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1021
    sget-object v1, Landroid/support/v4/view/dq;->a:Landroid/support/v4/view/dz;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dz;->d(Landroid/support/v4/view/dq;Landroid/view/View;F)V

    .line 1023
    :cond_0
    return-object p0
.end method
