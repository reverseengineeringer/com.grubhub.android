.class Landroid/support/v7/app/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/g;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-static {v0}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-static {v0, v2}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;I)V

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-static {v0}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;I)V

    .line 133
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-static {v0, v2}, Landroid/support/v7/app/g;->a(Landroid/support/v7/app/g;Z)Z

    .line 134
    iget-object v0, p0, Landroid/support/v7/app/g$1;->a:Landroid/support/v7/app/g;

    invoke-static {v0, v2}, Landroid/support/v7/app/g;->b(Landroid/support/v7/app/g;I)I

    .line 135
    return-void
.end method
