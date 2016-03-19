.class Landroid/support/v4/app/bo;
.super Landroid/support/v4/app/bm;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/support/v4/app/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bf;Landroid/support/v4/app/bg;)Landroid/app/Notification;
    .locals 10

    .prologue
    .line 571
    iget-object v0, p1, Landroid/support/v4/app/bf;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/bf;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bf;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bf;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/bf;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/bf;->i:I

    iget-object v7, p1, Landroid/support/v4/app/bf;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/bf;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/bf;->g:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Landroid/support/v4/app/cc;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
