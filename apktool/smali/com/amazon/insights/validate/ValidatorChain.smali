.class public Lcom/amazon/insights/validate/ValidatorChain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/validate/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/insights/validate/ValidatorChain$Builder;->getValidators()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain;->validators:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;Lcom/amazon/insights/validate/ValidatorChain$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/amazon/insights/validate/ValidatorChain;-><init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;)V

    return-void
.end method


# virtual methods
.method public runValidation()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/validate/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v2, Lcom/amazon/insights/validate/ValidatorChain$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/insights/validate/ValidatorChain$1;-><init>(Lcom/amazon/insights/validate/ValidatorChain;Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain;->validators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/validate/Validator;

    .line 46
    invoke-interface {v0, v2}, Lcom/amazon/insights/validate/Validator;->validate(Lcom/amazon/insights/validate/Errors;)V

    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method
