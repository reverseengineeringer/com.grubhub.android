.class public Lcom/grubhub/AppBaseLibrary/android/feedback/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    .line 51
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->w()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/feedback/d$1;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 77
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    .line 79
    invoke-interface {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->k(Z)V

    .line 82
    :cond_2
    return v0

    .line 55
    :pswitch_1
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->x()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 56
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    :cond_3
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 60
    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(I)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_2
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
