.class Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/ProfileTracker;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 98
    const-string v0, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/Profile;

    .line 102
    const-string v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    .line 103
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/Profile;

    .line 105
    iget-object v2, p0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;->a:Lcom/facebook/ProfileTracker;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ProfileTracker;->a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 107
    :cond_0
    return-void
.end method
