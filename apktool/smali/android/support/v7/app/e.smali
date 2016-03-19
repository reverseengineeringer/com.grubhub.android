.class abstract Landroid/support/v7/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v7/app/ActionBarActivity;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field final f:Landroid/support/v7/internal/a/a;

.field private g:Landroid/support/v7/app/a;

.field private h:Landroid/view/MenuInflater;

.field private i:Landroid/support/v7/internal/a/a;

.field private j:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/support/v7/app/e$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/e$1;-><init>(Landroid/support/v7/app/e;)V

    iput-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/a/a;

    .line 113
    iput-object p1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 114
    iget-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/a/a;

    iput-object v0, p0, Landroid/support/v7/app/e;->i:Landroid/support/v7/internal/a/a;

    .line 115
    return-void
.end method

.method static a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/e;
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Landroid/support/v7/app/m;

    invoke-direct {v0, p0}, Landroid/support/v7/app/m;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/app/g;

    invoke-direct {v0, p0}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Landroid/support/v7/app/a;
.end method

.method abstract a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.end method

.method abstract a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method abstract a(I)V
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method abstract a(Landroid/content/res/Configuration;)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/a/l;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    sget v1, Landroid/support/v7/a/l;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    sget v1, Landroid/support/v7/a/l;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iput-boolean v3, p0, Landroid/support/v7/app/e;->b:Z

    .line 159
    :cond_1
    sget v1, Landroid/support/v7/a/l;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iput-boolean v3, p0, Landroid/support/v7/app/e;->c:Z

    .line 162
    :cond_2
    sget v1, Landroid/support/v7/a/l;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iput-boolean v3, p0, Landroid/support/v7/app/e;->d:Z

    .line 165
    :cond_3
    sget v1, Landroid/support/v7/a/l;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/e;->e:Z

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-void
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method final b()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/app/a;

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/app/a;

    return-object v0
.end method

.method abstract b(Landroid/os/Bundle;)V
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method final c()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/app/a;

    return-object v0
.end method

.method abstract c(ILandroid/view/Menu;)Z
.end method

.method d()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/e;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/support/v7/internal/view/e;

    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/e;->h:Landroid/view/MenuInflater;

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->h:Landroid/view/MenuInflater;

    return-object v0
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method abstract h()Z
.end method

.method final i()Landroid/support/v7/app/o;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/support/v7/app/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/e;Landroid/support/v7/app/e$1;)V

    return-object v0
.end method

.method abstract j()I
.end method

.method abstract k()V
.end method

.method protected final l()Landroid/content/Context;
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/support/v7/app/e;->b()Landroid/support/v7/app/a;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 265
    :cond_0
    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 268
    :cond_1
    return-object v0
.end method

.method final m()Landroid/support/v7/internal/a/a;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v7/app/e;->i:Landroid/support/v7/internal/a/a;

    return-object v0
.end method

.method final n()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/e;->j:Z

    .line 329
    return-void
.end method

.method final o()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/support/v7/app/e;->j:Z

    return v0
.end method
