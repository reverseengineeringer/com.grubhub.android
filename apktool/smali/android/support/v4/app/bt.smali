.class public final Landroid/support/v4/app/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bh;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ba;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    .line 2339
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/bt;->b:I

    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    .line 2344
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/bt;->g:I

    .line 2345
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/bt;->h:I

    .line 2346
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/bt;->i:I

    .line 2348
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/bt;->k:I

    .line 2356
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/bt;
    .locals 3

    .prologue
    .line 2448
    new-instance v0, Landroid/support/v4/app/bt;

    invoke-direct {v0}, Landroid/support/v4/app/bt;-><init>()V

    .line 2449
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    .line 2450
    iget v1, p0, Landroid/support/v4/app/bt;->b:I

    iput v1, v0, Landroid/support/v4/app/bt;->b:I

    .line 2451
    iget-object v1, p0, Landroid/support/v4/app/bt;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/bt;->c:Landroid/app/PendingIntent;

    .line 2452
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    .line 2453
    iget-object v1, p0, Landroid/support/v4/app/bt;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/bt;->e:Landroid/graphics/Bitmap;

    .line 2454
    iget v1, p0, Landroid/support/v4/app/bt;->f:I

    iput v1, v0, Landroid/support/v4/app/bt;->f:I

    .line 2455
    iget v1, p0, Landroid/support/v4/app/bt;->g:I

    iput v1, v0, Landroid/support/v4/app/bt;->g:I

    .line 2456
    iget v1, p0, Landroid/support/v4/app/bt;->h:I

    iput v1, v0, Landroid/support/v4/app/bt;->h:I

    .line 2457
    iget v1, p0, Landroid/support/v4/app/bt;->i:I

    iput v1, v0, Landroid/support/v4/app/bt;->i:I

    .line 2458
    iget v1, p0, Landroid/support/v4/app/bt;->j:I

    iput v1, v0, Landroid/support/v4/app/bt;->j:I

    .line 2459
    iget v1, p0, Landroid/support/v4/app/bt;->k:I

    iput v1, v0, Landroid/support/v4/app/bt;->k:I

    .line 2460
    iget v1, p0, Landroid/support/v4/app/bt;->l:I

    iput v1, v0, Landroid/support/v4/app/bt;->l:I

    .line 2461
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/support/v4/app/bt;
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bt;
    .locals 0

    .prologue
    .line 2619
    iput-object p1, p0, Landroid/support/v4/app/bt;->e:Landroid/graphics/Bitmap;

    .line 2620
    return-object p0
.end method

.method public a(Ljava/util/List;)Landroid/support/v4/app/bt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/ba;",
            ">;)",
            "Landroid/support/v4/app/bt;"
        }
    .end annotation

    .prologue
    .line 2494
    iget-object v0, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2495
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2240
    invoke-virtual {p0}, Landroid/support/v4/app/bt;->a()Landroid/support/v4/app/bt;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/bf;)Landroid/support/v4/app/bf;
    .locals 5

    .prologue
    .line 2399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2401
    iget-object v0, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2402
    const-string v2, "actions"

    invoke-static {}, Landroid/support/v4/app/az;->a()Landroid/support/v4/app/bj;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/ba;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/ba;

    invoke-interface {v3, v0}, Landroid/support/v4/app/bj;->a([Landroid/support/v4/app/ba;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2406
    :cond_0
    iget v0, p0, Landroid/support/v4/app/bt;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2407
    const-string v0, "flags"

    iget v2, p0, Landroid/support/v4/app/bt;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2409
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bt;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2410
    const-string v0, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/bt;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2412
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2413
    const-string v2, "pages"

    iget-object v0, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/bt;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2416
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/bt;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2417
    const-string v0, "background"

    iget-object v2, p0, Landroid/support/v4/app/bt;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2419
    :cond_4
    iget v0, p0, Landroid/support/v4/app/bt;->f:I

    if-eqz v0, :cond_5

    .line 2420
    const-string v0, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/bt;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2422
    :cond_5
    iget v0, p0, Landroid/support/v4/app/bt;->g:I

    const v2, 0x800005

    if-eq v0, v2, :cond_6

    .line 2423
    const-string v0, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/bt;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    :cond_6
    iget v0, p0, Landroid/support/v4/app/bt;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 2426
    const-string v0, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/bt;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2429
    :cond_7
    iget v0, p0, Landroid/support/v4/app/bt;->i:I

    if-eqz v0, :cond_8

    .line 2430
    const-string v0, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/bt;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2432
    :cond_8
    iget v0, p0, Landroid/support/v4/app/bt;->j:I

    if-eqz v0, :cond_9

    .line 2433
    const-string v0, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/bt;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2435
    :cond_9
    iget v0, p0, Landroid/support/v4/app/bt;->k:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_a

    .line 2436
    const-string v0, "gravity"

    iget v2, p0, Landroid/support/v4/app/bt;->k:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    :cond_a
    iget v0, p0, Landroid/support/v4/app/bt;->l:I

    if-eqz v0, :cond_b

    .line 2439
    const-string v0, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/bt;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/bf;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2443
    return-object p1
.end method
