.class Lcom/facebook/internal/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/av;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/facebook/internal/au;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcom/facebook/internal/aw;

.field private e:Lcom/facebook/internal/aw;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/facebook/internal/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/internal/aw;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/internal/au;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/internal/aw;->b:Lcom/facebook/internal/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/facebook/internal/aw;->c:Ljava/lang/Runnable;

    .line 143
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/internal/aw;)Lcom/facebook/internal/aw;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-boolean v1, Lcom/facebook/internal/aw;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    sget-boolean v1, Lcom/facebook/internal/aw;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_1
    if-ne p1, p0, :cond_2

    .line 204
    iget-object v1, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    if-ne v1, p0, :cond_3

    move-object p1, v0

    .line 211
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    iget-object v2, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iput-object v2, v1, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    .line 212
    iget-object v1, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iget-object v2, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    iput-object v2, v1, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    .line 213
    iput-object v0, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iput-object v0, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    .line 215
    return-object p1

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    goto :goto_0
.end method

.method a(Lcom/facebook/internal/aw;Z)Lcom/facebook/internal/aw;
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Lcom/facebook/internal/aw;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_0
    sget-boolean v0, Lcom/facebook/internal/aw;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_1
    if-nez p1, :cond_2

    .line 189
    iput-object p0, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iput-object p0, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    move-object v0, p0

    .line 196
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    return-object p0

    .line 191
    :cond_2
    iput-object p1, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    .line 192
    iget-object v0, p1, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iput-object v0, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    .line 193
    iget-object v0, p0, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    iget-object v1, p0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    iput-object p0, v1, Lcom/facebook/internal/aw;->d:Lcom/facebook/internal/aw;

    iput-object p0, v0, Lcom/facebook/internal/aw;->e:Lcom/facebook/internal/aw;

    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 196
    goto :goto_1
.end method

.method a()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/internal/aw;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/facebook/internal/aw;->f:Z

    .line 182
    return-void
.end method
