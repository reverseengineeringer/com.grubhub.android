.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 690
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 691
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Z)Z

    .line 692
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 693
    return-void
.end method
