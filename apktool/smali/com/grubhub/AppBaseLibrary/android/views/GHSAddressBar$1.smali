.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Z)V

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_0
    return v0
.end method
