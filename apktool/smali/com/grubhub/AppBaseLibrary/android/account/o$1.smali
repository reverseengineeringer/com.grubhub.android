.class Lcom/grubhub/AppBaseLibrary/android/account/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/o;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/o;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/o;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/o$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/o$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/o;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/o;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return v1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/o$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/o;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/o;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
