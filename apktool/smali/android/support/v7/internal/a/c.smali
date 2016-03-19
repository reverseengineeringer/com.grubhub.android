.class public Landroid/support/v7/internal/a/c;
.super Landroid/support/v7/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/internal/view/menu/i;

.field private d:Landroid/support/v7/b/b;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/b;Landroid/content/Context;Landroid/support/v7/b/b;)V
    .locals 2

    .prologue
    .line 953
    iput-object p1, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v7/b/a;-><init>()V

    .line 954
    iput-object p2, p0, Landroid/support/v7/internal/a/c;->b:Landroid/content/Context;

    .line 955
    iput-object p3, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    .line 956
    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(I)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    .line 958
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 959
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 963
    new-instance v0, Landroid/support/v7/internal/view/e;

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->k(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/c;->b(Ljava/lang/CharSequence;)V

    .line 1040
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    if-nez v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/c;->d()V

    .line 1105
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1024
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/c;->e:Ljava/lang/ref/WeakReference;

    .line 1025
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1030
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1059
    invoke-super {p0, p1}, Landroid/support/v7/b/a;->a(Z)V

    .line 1060
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1061
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1077
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->k(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/c;->a(Ljava/lang/CharSequence;)V

    .line 1045
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1035
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 973
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iget-object v0, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/c;

    if-eq v0, p0, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->h(Landroid/support/v7/internal/a/b;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/a/b;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iput-object p0, v0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/b/a;

    .line 986
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    iput-object v1, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/b/b;

    .line 990
    :goto_1
    iput-object v3, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    .line 991
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/a/b;->j(Z)V

    .line 994
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()V

    .line 995
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/y;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/y;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 997
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iget-boolean v1, v1, Landroid/support/v7/internal/a/b;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 999
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iput-object v3, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/c;

    goto :goto_0

    .line 988
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    invoke-interface {v0, p0}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1006
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/b/b;->b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->h()V

    .line 1010
    return-void

    .line 1008
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->h()V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1015
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->d:Landroid/support/v7/b/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1017
    iget-object v1, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/c;->c:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->h()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
