.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 242
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/app/Dialog;)V

    .line 249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$17;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 250
    return-void
.end method
