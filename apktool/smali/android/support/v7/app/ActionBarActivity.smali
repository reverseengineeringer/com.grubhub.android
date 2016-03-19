.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/q;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/dj;
.implements Landroid/support/v7/app/v;


# instance fields
.field private a:Landroid/support/v7/app/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    return-void
.end method

.method private f()Landroid/support/v7/app/e;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/e;

    if-nez v0, :cond_0

    .line 553
    invoke-static {p0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/e;

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/e;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Landroid/support/v4/app/ar;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/di;)V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p1, p0}, Landroid/support/v4/app/di;->a(Landroid/app/Activity;)Landroid/support/v4/app/di;

    .line 383
    return-void
.end method

.method public a(Landroid/support/v7/b/a;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->setContentView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/q;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 480
    invoke-static {p0, p1}, Landroid/support/v4/app/ar;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public b()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->b()Landroid/support/v7/app/a;

    move-result-object v0

    return-object v0
.end method

.method b(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onPanelClosed(ILandroid/view/Menu;)V

    .line 286
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {p0, p1}, Landroid/support/v4/app/ar;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method public b(Landroid/support/v4/app/di;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public b(Landroid/support/v7/b/a;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->a()Landroid/content/Intent;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-static {p0}, Landroid/support/v4/app/di;->a(Landroid/content/Context;)Landroid/support/v4/app/di;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/support/v4/app/di;)V

    .line 433
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/support/v4/app/di;)V

    .line 434
    invoke-virtual {v0}, Landroid/support/v4/app/di;->a()V

    .line 437
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    const/4 v0, 0x1

    .line 450
    :goto_1
    return v0

    .line 438
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public d()Landroid/support/v7/app/o;
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->i()Landroid/support/v7/app/o;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->g()V

    .line 204
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-super {p0}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 297
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/content/res/Configuration;)V

    .line 136
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->k()V

    .line 531
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->c(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 543
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/q;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/e;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/q;->onDestroy()V

    .line 167
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->n()V

    .line 168
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->b()Landroid/support/v7/app/a;

    move-result-object v0

    .line 157
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->c()Z

    move-result v0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->b(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(ILandroid/view/Menu;)V

    .line 241
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onPostCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->b(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/q;->onPostResume()V

    .line 147
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->f()V

    .line 148
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/e;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/q;->onStop()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->e()V

    .line 142
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/q;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(I)V

    .line 103
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->g()V

    .line 197
    return-void
.end method
