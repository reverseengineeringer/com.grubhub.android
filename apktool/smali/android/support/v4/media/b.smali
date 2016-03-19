.class Landroid/support/v4/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# instance fields
.field final a:Landroid/support/v4/media/a;


# virtual methods
.method public onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/a;

    invoke-interface {v0}, Landroid/support/v4/media/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPlaybackPositionUpdate(J)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/support/v4/media/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/a;->a(J)V

    .line 156
    return-void
.end method
