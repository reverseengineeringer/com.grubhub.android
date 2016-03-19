.class Lcom/facebook/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-wide p1, p0, Lcom/facebook/a/n;->a:J

    .line 155
    iput-wide p3, p0, Lcom/facebook/a/n;->b:J

    .line 156
    iput-wide p5, p0, Lcom/facebook/a/n;->c:J

    .line 157
    iput p7, p0, Lcom/facebook/a/n;->d:I

    .line 158
    iput-object p8, p0, Lcom/facebook/a/n;->e:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 162
    new-instance v1, Lcom/facebook/a/m;

    iget-wide v2, p0, Lcom/facebook/a/n;->a:J

    iget-wide v4, p0, Lcom/facebook/a/n;->b:J

    iget-wide v6, p0, Lcom/facebook/a/n;->c:J

    iget v8, p0, Lcom/facebook/a/n;->d:I

    iget-object v9, p0, Lcom/facebook/a/n;->e:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/a/m;-><init>(JJJILjava/lang/String;Lcom/facebook/a/m$1;)V

    return-object v1
.end method
