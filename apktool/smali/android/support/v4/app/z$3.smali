.class Landroid/support/v4/app/z$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/z;->a(Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/z;


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Landroid/support/v4/app/z$3;->c:Landroid/support/v4/app/z;

    iput-object p2, p0, Landroid/support/v4/app/z$3;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/z$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v4/app/z$3;->c:Landroid/support/v4/app/z;

    iget-object v1, p0, Landroid/support/v4/app/z$3;->c:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->j()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/z$3;->a:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, Landroid/support/v4/app/z$3;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/z;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 559
    return-void
.end method
