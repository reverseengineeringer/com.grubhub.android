.class Landroid/support/v4/app/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/z;->a(II)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/z;


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;II)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Landroid/support/v4/app/z$4;->c:Landroid/support/v4/app/z;

    iput p2, p0, Landroid/support/v4/app/z$4;->a:I

    iput p3, p0, Landroid/support/v4/app/z$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v4/app/z$4;->c:Landroid/support/v4/app/z;

    iget-object v1, p0, Landroid/support/v4/app/z$4;->c:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/z$4;->a:I

    iget v4, p0, Landroid/support/v4/app/z$4;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 578
    return-void
.end method
