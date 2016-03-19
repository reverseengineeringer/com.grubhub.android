.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->e(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v7/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/n;->a()V

    .line 388
    return-void
.end method
