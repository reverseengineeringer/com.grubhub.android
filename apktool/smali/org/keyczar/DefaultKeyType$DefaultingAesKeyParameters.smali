.class Lorg/keyczar/DefaultKeyType$DefaultingAesKeyParameters;
.super Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/keyparams/AesKeyParameters;


# instance fields
.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method public constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultingAesKeyParameters;->this$0:Lorg/keyczar/DefaultKeyType;

    .line 170
    invoke-direct {p0, p1, p2}, Lorg/keyczar/DefaultKeyType$DefaultingKeyParameters;-><init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/keyparams/KeyParameters;)V

    .line 171
    return-void
.end method


# virtual methods
.method public getHmacKey()Lorg/keyczar/HmacKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/keyczar/DefaultKeyType;->applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/HmacKey;->generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/HmacKey;

    move-result-object v0

    return-object v0
.end method
