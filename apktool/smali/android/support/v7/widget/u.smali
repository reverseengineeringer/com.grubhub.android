.class Landroid/support/v7/widget/u;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/o;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/o;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/o;Landroid/support/v7/widget/o$1;)V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/o;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()V

    .line 1708
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()V

    .line 1713
    return-void
.end method
