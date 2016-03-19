.class public final Landroid/support/v4/app/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/os/Bundle;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/cv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 1888
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/bb;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1889
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    iput p1, p0, Landroid/support/v4/app/bb;->a:I

    .line 1902
    invoke-static {p2}, Landroid/support/v4/app/bf;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    .line 1903
    iput-object p3, p0, Landroid/support/v4/app/bb;->c:Landroid/app/PendingIntent;

    .line 1904
    iput-object p4, p0, Landroid/support/v4/app/bb;->d:Landroid/os/Bundle;

    .line 1905
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/ba;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1960
    iget-object v0, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/cv;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/cv;

    move-object v5, v0

    .line 1962
    :goto_0
    new-instance v0, Landroid/support/v4/app/ba;

    iget v1, p0, Landroid/support/v4/app/bb;->a:I

    iget-object v2, p0, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/bb;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/bb;->d:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ba;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/cv;Landroid/support/v4/app/az$1;)V

    return-object v0

    :cond_0
    move-object v5, v6

    .line 1960
    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 1915
    if-eqz p1, :cond_0

    .line 1916
    iget-object v0, p0, Landroid/support/v4/app/bb;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1918
    :cond_0
    return-object p0
.end method

.method public a(Landroid/support/v4/app/bc;)Landroid/support/v4/app/bb;
    .locals 0

    .prologue
    .line 1950
    invoke-interface {p1, p0}, Landroid/support/v4/app/bc;->a(Landroid/support/v4/app/bb;)Landroid/support/v4/app/bb;

    .line 1951
    return-object p0
.end method

.method public a(Landroid/support/v4/app/cv;)Landroid/support/v4/app/bb;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    .line 1941
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    return-object p0
.end method
