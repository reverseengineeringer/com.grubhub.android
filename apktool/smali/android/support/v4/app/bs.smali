.class public abstract Landroid/support/v4/app/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field d:Landroid/support/v4/app/bf;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/bs;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bf;)V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bf;

    if-eq v0, p1, :cond_0

    .line 1595
    iput-object p1, p0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bf;

    .line 1596
    iget-object v0, p0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bf;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Landroid/support/v4/app/bs;->d:Landroid/support/v4/app/bf;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    .line 1600
    :cond_0
    return-void
.end method
