.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$1;
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
    .line 695
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 698
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 699
    return-void
.end method
