.class public Lcom/taplytics/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 58
    const-string v0, "#CCe75f68"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/taplytics/b;)I
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/taplytics/jr;->a:[I

    invoke-virtual {p0}, Lcom/taplytics/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const-string v0, "#CC70daff"

    .line 54
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 45
    :pswitch_0
    const-string v0, "#CC7fe1a5"

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v0, "#CCba76e5"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "#CCcc3341"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
