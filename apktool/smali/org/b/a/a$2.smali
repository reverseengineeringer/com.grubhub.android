.class final Lorg/b/a/a$2;
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
    .line 364
    iput-object p1, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 366
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "date_firstlaunch"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "launch_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "order_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 371
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "remindmelater"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    iget-object v0, p0, Lorg/b/a/a$2;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/b/a/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 375
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    invoke-static {v3}, Lorg/b/a/a;->c(Z)Z

    .line 377
    return-void
.end method
