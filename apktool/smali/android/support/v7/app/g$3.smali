.class Landroid/support/v7/app/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/g;->p()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Landroid/support/v7/app/g$3;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/app/g$3;->a:Landroid/support/v7/app/g;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Landroid/support/v7/app/g;->c(Landroid/support/v7/app/g;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 342
    return-void
.end method
