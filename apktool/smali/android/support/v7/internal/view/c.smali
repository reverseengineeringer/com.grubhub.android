.class public Landroid/support/v7/internal/view/c;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v7/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/b/a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/internal/view/c;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->c()V

    .line 77
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Landroid/support/v7/internal/view/c;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/a/a;

    invoke-static {v1, v0}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/content/Context;Landroid/support/v4/b/a/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->k()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->d()V

    .line 72
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->a(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->b(I)V

    .line 102
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->a(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->a(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->a(I)V

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->b(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/b/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/b/a;->a(Z)V

    .line 127
    return-void
.end method
