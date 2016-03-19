.class Lcom/grubhub/AppBaseLibrary/android/account/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/j;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/j;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/j$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/j$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/j;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->m(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    .line 989
    :goto_0
    return v0

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/j$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/j;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/j;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 989
    const/4 v0, 0x1

    goto :goto_0
.end method
