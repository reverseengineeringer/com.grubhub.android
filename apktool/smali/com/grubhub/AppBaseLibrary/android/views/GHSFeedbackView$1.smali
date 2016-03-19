.class Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    iput-boolean v3, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->a:Z

    .line 83
    return-void
.end method
