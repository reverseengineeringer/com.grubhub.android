.class final Lorg/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/b/a/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lorg/b/a/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/b/a/a$1;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lorg/b/a/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/b/a/a;->b(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lorg/b/a/a$1;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/b/a/a$1;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    iget-object v0, p0, Lorg/b/a/a$1;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/b/a/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 359
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 360
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/b/a/a;->c(Z)Z

    .line 361
    return-void
.end method
