.class final Lorg/keyczar/DefaultKeyType$DefaultingRsaKeyParameters;
.super Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/keyparams/RsaKeyParameters;


# instance fields
.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method public constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultingRsaKeyParameters;->this$0:Lorg/keyczar/DefaultKeyType;

    .line 183
    invoke-direct {p0, p1, p2}, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getRsaPadding()Lorg/keyczar/enums/RsaPadding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultingRsaKeyParameters;->baseParameters:Lorg/keyczar/keyparams/KeyParameters;

    check-cast v0, Lorg/keyczar/keyparams/RsaKeyParameters;

    .line 189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/keyczar/keyparams/RsaKeyParameters;->getRsaPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    .line 192
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/keyczar/keyparams/RsaKeyParameters;->getRsaPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v0

    goto :goto_0
.end method
