.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->h(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method
