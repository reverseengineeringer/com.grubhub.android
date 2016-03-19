.class Landroid/support/v7/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/o;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/o;Landroid/support/v7/widget/o$1;)V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0, p1}, Landroid/support/v7/widget/x;-><init>(Landroid/support/v7/widget/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1724
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-static {v0}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-static {v0}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-static {v1}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-static {v0}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/o;)Landroid/support/v7/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    iget v1, v1, Landroid/support/v7/widget/o;->b:I

    if-gt v0, v1, :cond_0

    .line 1726
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-static {v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/o;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1727
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()V

    .line 1729
    :cond_0
    return-void
.end method
