.class Landroid/support/v4/app/bp;
.super Landroid/support/v4/app/bm;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Landroid/support/v4/app/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bf;Landroid/support/v4/app/bg;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 580
    new-instance v2, Landroid/support/v4/app/ce;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bf;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bf;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bf;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bf;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/bf;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/bf;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bf;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/bf;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/bf;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/bf;->o:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/bf;->p:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/bf;->q:Z

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/ce;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 585
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bg;->a(Landroid/support/v4/app/bf;Landroid/support/v4/app/ay;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
