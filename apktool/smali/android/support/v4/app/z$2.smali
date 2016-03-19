.class Landroid/support/v4/app/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/z;->c()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/z;


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Landroid/support/v4/app/z$2;->a:Landroid/support/v4/app/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v4/app/z$2;->a:Landroid/support/v4/app/z;

    iget-object v1, p0, Landroid/support/v4/app/z$2;->a:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 543
    return-void
.end method
