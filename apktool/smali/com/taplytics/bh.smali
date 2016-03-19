.class public final Lcom/taplytics/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/taplytics/bh;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/taplytics/bh;->b:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/taplytics/bh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bh;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/taplytics/bh;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/taplytics/bh;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/fy;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 409
    return-void
.end method
