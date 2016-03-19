.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$25;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$25;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->C(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    .line 1114
    const/4 v0, 0x1

    .line 1116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
