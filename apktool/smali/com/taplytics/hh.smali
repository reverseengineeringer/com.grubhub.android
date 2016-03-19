.class Lcom/taplytics/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/taplytics/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 465
    const-class v0, Lcom/taplytics/gq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taplytics/hh;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 470
    sget-boolean v0, Lcom/taplytics/hh;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-virtual {v0}, Lcom/taplytics/gq;->p()V

    .line 476
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    iget-object v1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/jk;->a(Lcom/taplytics/b;)Lcom/taplytics/jo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Lcom/taplytics/jo;)Lcom/taplytics/jo;

    .line 479
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->g(Lcom/taplytics/gq;)Lcom/taplytics/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v2}, Lcom/taplytics/gq;->d(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v3}, Lcom/taplytics/gq;->e(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taplytics/jk;->a(Lcom/taplytics/b;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taplytics/jo;->addView(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v0

    sget-object v1, Lcom/taplytics/b;->alpaca:Lcom/taplytics/b;

    invoke-virtual {v0, v1}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v0

    sget-object v1, Lcom/taplytics/b;->antelope:Lcom/taplytics/b;

    invoke-virtual {v0, v1}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->g(Lcom/taplytics/gq;)Lcom/taplytics/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->h(Lcom/taplytics/gq;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taplytics/jo;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->c(Lcom/taplytics/gq;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->g(Lcom/taplytics/gq;)Lcom/taplytics/jo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 493
    :cond_4
    :goto_0
    return-void

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->f(Lcom/taplytics/gq;)Lcom/taplytics/b;

    move-result-object v0

    sget-object v1, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    invoke-virtual {v0, v1}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->d(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->e(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->d(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->e(Lcom/taplytics/gq;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/taplytics/hh;->b:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->i(Lcom/taplytics/gq;)V

    goto :goto_0
.end method
