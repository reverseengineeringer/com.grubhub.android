.class final Lorg/b/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/b/a/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 384
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "remindmelater"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 386
    iget-object v2, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    const-string v3, "date_firstlaunch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 387
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "launch_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 388
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "order_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 389
    iget-object v0, p0, Lorg/b/a/a$3;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/b/a/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 391
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 392
    invoke-static {v4}, Lorg/b/a/a;->c(Z)Z

    .line 393
    return-void
.end method
