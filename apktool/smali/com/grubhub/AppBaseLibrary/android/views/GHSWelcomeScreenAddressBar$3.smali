.class Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "enter address"

    const-string v3, "geolocate current location"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 134
    return-void
.end method
