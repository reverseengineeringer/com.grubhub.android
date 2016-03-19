.class Lcom/amazon/insights/event/EventConstraintDecorator$Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->key:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/insights/event/EventConstraintDecorator$Pair;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/insights/event/EventConstraintDecorator$Pair;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/insights/event/EventConstraintDecorator$Pair;->value:Ljava/lang/Object;

    return-object v0
.end method
