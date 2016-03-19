.class public Lcom/grubhub/AppBaseLibrary/android/c/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->b:J

    .line 18
    iput-wide p4, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c:J

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c:J

    .line 39
    return-void
.end method

.method public accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V
    .locals 0

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    .line 50
    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->c:J

    return-wide v0
.end method
