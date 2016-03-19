.class public final Lcom/taplytics/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/taplytics/bi;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/taplytics/bi;->b:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/taplytics/bi;->c:I

    iput p4, p0, Lcom/taplytics/bi;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 425
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/taplytics/bi;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/taplytics/bi;->c:I

    iget v4, p0, Lcom/taplytics/bi;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taplytics/fy;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V

    .line 426
    return-void
.end method
