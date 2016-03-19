.class Lcom/grubhub/AppBaseLibrary/android/views/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/k;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/k;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/k$2;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    iput-boolean v3, v0, Lcom/grubhub/AppBaseLibrary/android/views/k;->a:Z

    .line 98
    return-void
.end method
