.class public Landroid/support/v4/app/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Landroid/app/Notification;

.field public B:Landroid/app/Notification;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/app/bs;

.field public n:Ljava/lang/CharSequence;

.field o:I

.field p:I

.field q:Z

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ba;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Ljava/lang/String;

.field x:Landroid/os/Bundle;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bf;->k:Z

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->u:Ljava/util/ArrayList;

    .line 913
    iput-boolean v4, p0, Landroid/support/v4/app/bf;->v:Z

    .line 916
    iput v4, p0, Landroid/support/v4/app/bf;->y:I

    .line 917
    iput v4, p0, Landroid/support/v4/app/bf;->z:I

    .line 921
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    .line 936
    iput-object p1, p0, Landroid/support/v4/app/bf;->a:Landroid/content/Context;

    .line 939
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 940
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 941
    iput v4, p0, Landroid/support/v4/app/bf;->j:I

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->C:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1291
    if-eqz p2, :cond_0

    .line 1292
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1572
    if-nez p0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object p0

    .line 1573
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/bf;->x:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bf;->x:Landroid/os/Bundle;

    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bf;->x:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 988
    return-object p0
.end method

.method public a(Landroid/app/Notification;)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Landroid/support/v4/app/bf;->A:Landroid/app/Notification;

    .line 1536
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Landroid/support/v4/app/bf;->d:Landroid/app/PendingIntent;

    .line 1084
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Landroid/support/v4/app/bf;->g:Landroid/graphics/Bitmap;

    .line 1148
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/bf;
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1161
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1162
    return-object p0
.end method

.method public a(Landroid/support/v4/app/ba;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v4/app/bf;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    return-object p0
.end method

.method public a(Landroid/support/v4/app/bh;)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1544
    invoke-interface {p1, p0}, Landroid/support/v4/app/bh;->extend(Landroid/support/v4/app/bf;)Landroid/support/v4/app/bf;

    .line 1545
    return-object p0
.end method

.method public a(Landroid/support/v4/app/bs;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/bf;->m:Landroid/support/v4/app/bs;

    if-eq v0, p1, :cond_0

    .line 1494
    iput-object p1, p0, Landroid/support/v4/app/bf;->m:Landroid/support/v4/app/bs;

    .line 1495
    iget-object v0, p0, Landroid/support/v4/app/bf;->m:Landroid/support/v4/app/bs;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Landroid/support/v4/app/bf;->m:Landroid/support/v4/app/bs;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bs;->a(Landroid/support/v4/app/bf;)V

    .line 1499
    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1071
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bf;->b:Ljava/lang/CharSequence;

    .line 1012
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Landroid/support/v4/app/bf;->w:Ljava/lang/String;

    .line 1269
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1245
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/bf;->a(IZ)V

    .line 1246
    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1561
    invoke-static {}, Landroid/support/v4/app/az;->a()Landroid/support/v4/app/bj;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/bf;->c()Landroid/support/v4/app/bg;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/bj;->a(Landroid/support/v4/app/bf;Landroid/support/v4/app/bg;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/support/v4/app/bf;
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1284
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1287
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1019
    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bf;->c:Ljava/lang/CharSequence;

    .line 1020
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1256
    iput-boolean p1, p0, Landroid/support/v4/app/bf;->v:Z

    .line 1257
    return-object p0
.end method

.method public c(I)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1316
    iput p1, p0, Landroid/support/v4/app/bf;->j:I

    .line 1317
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    .locals 1

    .prologue
    .line 1033
    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bf;->n:Ljava/lang/CharSequence;

    .line 1034
    return-object p0
.end method

.method protected c()Landroid/support/v4/app/bg;
    .locals 1

    .prologue
    .line 1568
    new-instance v0, Landroid/support/v4/app/bg;

    invoke-direct {v0}, Landroid/support/v4/app/bg;-><init>()V

    return-object v0
.end method

.method public d(I)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1510
    iput p1, p0, Landroid/support/v4/app/bf;->y:I

    .line 1511
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v4/app/bf;->B:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1129
    return-object p0
.end method

.method public e(I)Landroid/support/v4/app/bf;
    .locals 0

    .prologue
    .line 1522
    iput p1, p0, Landroid/support/v4/app/bf;->z:I

    .line 1523
    return-object p0
.end method
