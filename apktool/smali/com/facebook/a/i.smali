.class Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/facebook/a/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/i;->a:I

    .line 916
    sget-object v0, Lcom/facebook/a/h;->SUCCESS:Lcom/facebook/a/h;

    iput-object v0, p0, Lcom/facebook/a/i;->b:Lcom/facebook/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/a/a$1;)V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/facebook/a/i;-><init>()V

    return-void
.end method
