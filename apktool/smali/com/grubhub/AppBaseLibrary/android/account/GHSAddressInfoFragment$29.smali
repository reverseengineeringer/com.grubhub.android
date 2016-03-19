.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$29;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method
