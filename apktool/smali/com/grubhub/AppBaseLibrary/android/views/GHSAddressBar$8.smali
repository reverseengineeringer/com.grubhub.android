.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/view/View;Landroid/view/View;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$8;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/view/View;Z)V

    .line 1025
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1030
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1020
    return-void
.end method
