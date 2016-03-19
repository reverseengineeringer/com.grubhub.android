.class Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/keyparams/KeyParameters;


# instance fields
.field protected final baseParameters:Lorg/keyczar/keyparams/KeyParameters;

.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method public constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->baseParameters:Lorg/keyczar/keyparams/KeyParameters;

    .line 155
    return-void
.end method


# virtual methods
.method public getKeySize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->baseParameters:Lorg/keyczar/keyparams/KeyParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->baseParameters:Lorg/keyczar/keyparams/KeyParameters;

    invoke-interface {v0}, Lorg/keyczar/keyparams/KeyParameters;->getKeySize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->this$0:Lorg/keyczar/DefaultKeyType;

    # getter for: Lorg/keyczar/DefaultKeyType;->acceptableSizes:Ljava/util/List;
    invoke-static {v0}, Lorg/keyczar/DefaultKeyType;->access$100(Lorg/keyczar/DefaultKeyType;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;->baseParameters:Lorg/keyczar/keyparams/KeyParameters;

    invoke-interface {v0}, Lorg/keyczar/keyparams/KeyParameters;->getKeySize()I

    move-result v0

    goto :goto_0
.end method
