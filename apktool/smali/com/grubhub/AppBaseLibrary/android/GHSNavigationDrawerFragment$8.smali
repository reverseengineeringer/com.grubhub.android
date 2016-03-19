.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->h()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$8;->a:Landroid/app/Activity;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 548
    :cond_0
    return-void
.end method
