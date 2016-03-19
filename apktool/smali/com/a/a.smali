.class public abstract Lcom/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/a/h;

.field protected b:Landroid/app/Activity;

.field protected c:Z

.field protected d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/a/h;Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/a/h;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/a/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a;->c:Z

    .line 46
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/a/a;->e:J

    .line 48
    iput-boolean v2, p0, Lcom/a/a;->f:Z

    .line 59
    iput-object p2, p0, Lcom/a/a;->a:Lcom/a/h;

    .line 60
    iput-object p1, p0, Lcom/a/a;->b:Landroid/app/Activity;

    .line 61
    iput-object p3, p0, Lcom/a/a;->d:Ljava/util/EnumSet;

    .line 62
    iput-boolean v2, p0, Lcom/a/a;->c:Z

    .line 63
    return-void
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/String;)Ljava/lang/Void;
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 119
    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 120
    iput-wide p1, p0, Lcom/a/a;->e:J

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a;->f:Z

    .line 123
    :cond_0
    return-void
.end method

.method varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/a/a;->c:Z

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/a/a;->e:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/a/a;->f:Z

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/a/a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/a/a;->a:Lcom/a/h;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/a/a;->a:Lcom/a/h;

    invoke-interface {v0}, Lcom/a/h;->a()V

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a;->c:Z

    .line 73
    return-void
.end method
